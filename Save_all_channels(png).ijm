		//Run while image is open and channels are adjusted
		//also have composite selected or it will only save the one color selected
		outputDir = getDirectory("Choose an Output Directory");
		filename = getInfo("image.filename");
		
		//Composite
		Stack.setActiveChannels("1111");
		saveAs("PNG", outputDir + "Comp" + filename);
		
		//Combinations of 3 channels
		Stack.setActiveChannels("0111");
		saveAs("PNG", outputDir + "NoDapi-" + filename);
		Stack.setActiveChannels("1011");
		saveAs("PNG", outputDir + "no488-" + filename);
		Stack.setActiveChannels("1101");
		saveAs("PNG", outputDir + "no555-" + filename);
		Stack.setActiveChannels("1110");
		saveAs("PNG", outputDir + "no647-" + filename);
		
		
		// Combinations of 2 channels
		Stack.setActiveChannels("1010");
		saveAs("PNG", outputDir + "Dapi+488-" + filename);
		Stack.setActiveChannels("0110");
		saveAs("PNG", outputDir + "GFP+555-" + filename);
		Stack.setActiveChannels("0101");
		saveAs("PNG", outputDir + "488+647-" + filename);
		Stack.setActiveChannels("0011");
		saveAs("PNG", outputDir + "555+647-" + filename);
		Stack.setActiveChannels("1001");
		saveAs("PNG", outputDir + "Dapi+647-" + filename);

		// Individual Channels
		Stack.setActiveChannels("1000");
		saveAs("PNG", outputDir + "Dapi-" + filename);
		Stack.setActiveChannels("0100");
		saveAs("PNG", outputDir + "488-" + filename);
		Stack.setActiveChannels("0010");
		saveAs("PNG", outputDir + "555-" + filename);
		Stack.setActiveChannels("0001");
		saveAs("PNG", outputDir + "647-" + filename);
		
		print("complete");
		