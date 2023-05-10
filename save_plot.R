save_plot <- function(filename, format, width = 8, height = 6, dpi = 500) {
  
  valid_formats <- c("png", "pdf", "svg", "jpeg", "bmp", "tiff")
  if (!(format %in% valid_formats)) {
    stop("Invalid format. Supported formats: png, pdf, svg, jpeg, bmp, tiff.")
  }
  
  if (file.exists(paste0(filename, ".", format))) {
    stop("File already exists.")
  }
  
  switch(format,
         "png" = png(paste0(filename, ".png"), width = width, height = height, units = "in", res = dpi),
         "pdf" = {
           message("Opening PDF device")
           pdf(paste0(filename, ".pdf"), width = width, height = height)
         },
         "svg" = svg(paste0(filename, ".svg"), width = width, height = height),
         "jpeg" = jpeg(paste0(filename, ".jpeg"), width = width, height = height, units = "in", res = dpi),
         "bmp" = bmp(paste0(filename, ".bmp"), width = width, height = height, units = "in", res = dpi),
         "tiff" = tiff(paste0(filename, ".tiff"), width = width, height = height, units = "in", res = dpi)
  )
  
  dev.off()
  message("Closing device")
}
