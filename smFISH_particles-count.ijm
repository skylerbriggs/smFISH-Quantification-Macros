// 

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

roiset = File.openDialog("Select a File");
roiManager("open", roiset);

channel_particles = getString("Enter Channel to be analyzed for particles (only enter the number with no spaces", "default");
selectWindow("C" + channel_particles + "-" + inputFile);
run("Threshold...");
waitForUser("adjust threshold", "manually adjust threshold values and click apply");
getThreshold(lower, upper);
print(inputFile, "Lower: " + lower + " Upper: " + upper);
setOption("BlackBackground", true);
run("Convert to Mask");
run("Watershed");


n = roiManager('count');
for (i = 0; i < n; i++) {
    roiManager('select', i);

	run("Analyze Particles...", "size=0-2 summarize");
}





