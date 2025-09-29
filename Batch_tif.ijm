// Batch Process ND2 Files in Fiji - does not save as max stacks

inputDir = getDirectory("Choose a Directory");
outputDir = getDirectory("Choose an Output Directory");

list = getFileList(inputDir);

for (i = 0; i < list.length; i++) {
    if (endsWith(list[i], ".nd2")) {
        open(inputDir + list[i]);
        title = getTitle();
        saveAs("Tiff", outputDir + File.getNameWithoutExtension(list[i]) );
       	run("Close All");
    }
}

showMessage("Batch Processing Complete!");
