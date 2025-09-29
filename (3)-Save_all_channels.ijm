		//Run while image is open and channels are adjusted
		//also have composite selected or it will only save the one color selected
		outputDir = getDirectory("Choose an Output Directory");
		filename = getInfo("image.filename");
		
		//Composite
		Stack.setActiveChannels("111");
		saveAs("PNG", outputDir + "Comp" + filename);

		// Combinations of 2 channels
		Stack.setActiveChannels("101");
		saveAs("PNG", outputDir + "1+3-" + filename);
		Stack.setActiveChannels("011");
		saveAs("PNG", outputDir + "2+3-" + filename);
		Stack.setActiveChannels("110");
		saveAs("PNG", outputDir + "1+2-" + filename);

		// Individual Channels
		Stack.setActiveChannels("100");
		saveAs("PNG", outputDir + "1-" + filename);
		Stack.setActiveChannels("010");
		saveAs("PNG", outputDir + "2-" + filename);
		Stack.setActiveChannels("001");
		saveAs("PNG", outputDir + "3-" + filename);
		
		print("Channels saved");
		