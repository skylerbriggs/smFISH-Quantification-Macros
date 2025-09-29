# smFISH-Quantification-Macros
repository for useful macros to use in ImageJ when quantifying smFISH particles.

The macros in this folder can be downloaded and opened in ImageJ for smFISH analysis. 

For almost all cases you must first create an RoiSet before analysis for each image. You may try other image analysis software (Cell Profiler, ilastik, Imaris) but with many smFISH experiments, there is no cytoplasmic stain, making it difficult to set cell boundaries. We have found drawing cell boundaries to be more efficient and produce better results. To create RoiSet you must use freehand tool and add each cell boundary/roi to Roi Manager by pressing "T" after each is drawn. Then save the whole set with the corresponding image name. Once you have an image and RoiSet for each image you are ready to analyze.

Files labeled "Batch_max_tif" or "batch_tif" convert files from nd2 to tif. These may not work if you use a microscope that is not nikon. 

Files labeled "smFISH_particle-count" and likewise are used for the smFISH analysis. There are additional macros for multi-channel smFISH counting and the combination of smFISH particle count and mean flourescent intensity (MFI) for the same cell/roi. 

IMPORTANT* The macros do not automatically use the same threshold values, ensure you use very similar threshold values for each experiment for reliable results. 

The last set of macros are useful for saving iamges as png files for figure creation. There are macros for images with 2,3,4 channels and will save every combination of png. 

Hopefully these are useful! Good luck with smFISH and please cite the methods paper if you download and use these!
