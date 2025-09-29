//open tools for adjustment
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

waitForUser("Select an RoiSet (need to make this manually) and click ok");
roiManager("Reset");
roiset = File.openDialog("Select a File");

// MFI
channel_intensity = getString("Enter Channel to be analyzed for intensity (only enter the number with no spaces)", "default");
selectWindow("C" + channel_intensity + "-" + inputFile);
roiManager("open", roiset);
n = roiManager('count');
for (i = 0; i < n; i++) {
    roiManager('select', i);
 
	run("Set Measurements...", "area mean integrated redirect=None decimal=3");
	run("Measure");
}

// smFISH dot count
channel_particles = getString("Enter Channel to be analyzed for particles (only enter the number with no spaces", "default");
selectWindow("C" + channel_particles + "-" + inputFile);
run("Threshold...");
waitForUser("adjust threshold", "manually adjust threshold values and click apply");
getThreshold(lower, upper);
print(inputFile, "Lower: " + lower + " Upper: " + upper);
run("Convert to Mask", "background=Dark black");

n = roiManager('count');
for (i = 0; i < n; i++) {
    roiManager('select', i);
     
	run("Analyze Particles...", "size=0-2 summarize");
}





