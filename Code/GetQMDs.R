
# Path to where the QMDS are stored
path = "/Users/joelparker/Library/CloudStorage/GoogleDrive-joelparkerbiostatistics@gmail.com/.shortcut-targets-by-id/13mTo4797NRV43QWXk6NuUmj-3FB9XA3s/Precision Aging Data Sciences Tracking Folder/Website Tables and Dictionaries/Code"

qmds <- dir(path)
qmds <- qmds[!grepl(".Rproj", qmds)]

# Copy QMDs to code folder
for (i in 1:length(qmds)) {
  file.copy(file.path(path, qmds[i]), file.path("Code/", qmds[i]), overwrite = TRUE)
}

