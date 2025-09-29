# smFISH-Quantification-Macros
repository for useful macros to use in ImageJ when quantifying smFISH particles.

The macros in this folder can be downloaded and opened in ImageJ for smFISH analysis. 

For almost all cases you must first create an RoiSet before analysis for each image. You may try other image analysis software (Cell Profiler, ilastik, Imaris) but with many smFISH experiments, there is no cytoplasmic stain, making it difficult to set cell boundaries. We have found drawing cell boundaries to be more efficient and produce better results. To create RoiSet you must use freehand tool and add each cell boundary/roi to Roi Manager by pressing "T" after each is drawn. Then save the whole set with the corresponding image name. Once you have an image and RoiSet for each image you are ready to analyze.

