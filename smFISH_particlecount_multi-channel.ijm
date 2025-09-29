// count smFISH particles in multiple channels
run("Channels Tool...");
run("Brightness/Contrast...");
run("ROI Manager...");
roiManager("reset");

path = File.openDialog("Select a File");
inputFile = File.getName(path);

if (endsWith(path, ".tif"))
    open(path);
else 
    exit("Select a .tif file (convert .nd2)");

run("Split Channels");

roiset = File.openDialog("Select a ROI file");
roiManager("open", roiset);

// Define channels to analyze - Change the values in this array to match the channels you want to count. format (1, 2, 3, 4)
channels_to_analyze = newArray(2, 3, 4);

for (ch = 0; ch < channels_to_analyze.length; ch++) {
    channel_number = channels_to_analyze[ch];
    print("Processing channel: " + channel_number);

    selectWindow("C" + channel_number + "-" + inputFile);

    run("Threshold...");
    waitForUser("Adjust threshold", "Manually adjust threshold values for channel " + channel_number + " and click apply");
    getThreshold(lower, upper);
    print(inputFile, "Channel: " + channel_number + " Lower: " + lower + " Upper: " + upper);

    setOption("BlackBackground", true);
    run("Convert to Mask");
    run("Watershed");
    
    n = roiManager('count');
    for (i = 0; i < n; i++) {
        roiManager('select', i);

        run("Analyze Particles...", "size=0-2 summarize");
    }
}
