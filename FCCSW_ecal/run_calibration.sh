python write_calibration_xml.py ../../Detector/DetFCCeeECalInclined/compact/FCCee_ECalBarrel.xml # make sure the geometry changes are propagated to the calibration xml
python condor_submit_calibration.py /eos/user/b/brfranco/rootfile_storage/ $(date +"%y%d%m")_condor_calib_5kEvt  # launch batch job for different energy points
# once the job is done, run FCC_calo_analysis_cpp/plot_samplingFraction.py with change in arguments --merge (list of ones of the size of Nlayers if you dont want to merge layers) + --layerWidth
# if the number of layer did not change, just run python plot_samplingFraction.py /eos/user/b/brfranco/rootfile_storage/202011_condor_calib_5kEvt/calibration_output_pdgID_22_pMin_?_pMax_?_thetaMin_90_thetaMax_90.root 10 -r 10000 --totalNumLayers 12 --preview -outputfolder plots_sampling_fraction_201124
