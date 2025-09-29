// Batch Process ND2 Files in Fiji

inputDir = getDirectory("Choose a Directory");
outputDir = getDirectory("Choose an Output Directory");

list = getFileList(inputDir);

for (i = 0; i < list.length; i++) {
    if (endsWith(list[i], ".nd2")) {
        run("Bio-Formats Importer", "open=[" + inputDir + list[i] + "] autoscale color_mode=Default view=Hyperstack stack_order=XYCZT");
        run("Z Project...", "projection=[Max Intensity]");
        title = getTitle();
        saveAs("Tiff", outputDir + File.getNameWithoutExtension(list[i]) );
       	run("Close All");
    }
}

showMessage("Batch Processing Complete!");
