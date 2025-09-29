		//Run while image is open and channels are adjusted
		//also have composite selected or it will only save the one color selected
		outputDir = getDirectory("Choose an Output Directory");
		filename = getInfo("image.filename");
		
		//Composite
		Stack.setActiveChannels("11");
		saveAs("PNG", outputDir + "Comp" + filename);

		// Individual channels
		Stack.setActiveChannels("10");
		saveAs("PNG", outputDir + "Dapi" + filename);
		Stack.setActiveChannels("01");
		saveAs("PNG", outputDir + "GAPDH" + filename);
		
		print("Channels saved");
		