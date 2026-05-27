# Extract maize height from Pheno4D point cloud files
# This script uses only base R to improve reproducibility.

raw_dir <- file.path("data", "raw", "Pheno4D", "Maize01")
processed_dir <- file.path("data", "processed")
figure_dir <- file.path("results", "figures")

if (!dir.exists(raw_dir)) {
  stop("Raw data folder not found: ", raw_dir)
}

if (!dir.exists(processed_dir)) {
  dir.create(processed_dir, recursive = TRUE)
}

if (!dir.exists(figure_dir)) {
  dir.create(figure_dir, recursive = TRUE)
}

files <- list.files(
  raw_dir,
  pattern = "^M01_[0-9]{4}(_a)?\\.txt$",
  full.names = TRUE
)

if (length(files) == 0) {
  stop("No Maize01 point cloud files found.")
}

extract_height <- function(path) {
  first_line <- readLines(path, n = 1, warn = FALSE)
  n_cols <- length(strsplit(trimws(first_line), "\\s+")[[1]])

  if (!n_cols %in% c(3, 5)) {
    stop("Unexpected column number in file: ", basename(path))
  }

  values <- scan(path, what = numeric(), quiet = TRUE)

  z <- values[seq.int(from = 3, to = length(values), by = n_cols)]

  file_name <- basename(path)
  date_code <- sub("^M01_([0-9]{4}).*$", "\\1", file_name)
  scan_date <- as.Date(
    paste0("2020-", substr(date_code, 1, 2), "-", substr(date_code, 3, 4))
  )

  data.frame(
    plant_id = "Maize01",
    file_name = file_name,
    date_code = date_code,
    scan_date = scan_date,
    annotated = grepl("_a\\.txt$", file_name),
    n_columns = n_cols,
    n_points = length(z),
    z_min = min(z, na.rm = TRUE),
    z_max = max(z, na.rm = TRUE),
    height_z_range = max(z, na.rm = TRUE) - min(z, na.rm = TRUE)
  )
}

height_data <- do.call(rbind, lapply(files, extract_height))
height_data <- height_data[order(height_data$scan_date), ]
height_data$day_index <- seq_len(nrow(height_data))

output_csv <- file.path(processed_dir, "maize01_height.csv")
write.csv(height_data, output_csv, row.names = FALSE)

output_png <- file.path(figure_dir, "maize01_height_trend.png")

png(output_png, width = 1600, height = 1000, res = 150)
plot(
  height_data$scan_date,
  height_data$height_z_range,
  type = "b",
  pch = 19,
  xlab = "Scan date",
  ylab = "Plant height based on z range",
  main = "Maize01 height trend from Pheno4D point clouds"
)
grid()
dev.off()

print(height_data)

cat("\nSaved table to: ", output_csv, "\n")
cat("Saved figure to: ", output_png, "\n")
