# POS Tagging using CRF and HMM

##Run Instructions
### Parser - to generate the mallet understandable files,
### and also for additional features
sh parseData.sh

## Run Experiments
sh condor_script.sh

## Note:
1. The directory converter_codebase contains all the parser java src.
2. The directory condor_scripts contains all the condor scripts called by condor_script.sh for all the experiments
3. POS directory should be kept in the same directory as parseData.sh for it to parse correctly.
4. experiments folder contains all the traces, with .err files showing the accuracy.

## Directory Structure
.
├── report.pdf --> The 2 page - double column report
├── pos/ --> Directory containing original pos tagged wsj and atis data from PENN Treebank
├── traces/ --> Contains condor trace
├── mallet-2.0.8Rc3 --> The modified mallet codebase for running experiments.
├── models/ --> Learnt models for each experiment
├── parseData.sh  --> POS parser script to develop readable files + add features
├── condor_script.sh  --> The script to run all condor submissions.
├── atis_readable     --> All the generated ATIS files by parser
│   ├── atis_all_feat_but_capitalization (All features except capital)
│   ├── atis_all_feat_but_hyphen (All features except hyphen)
│   ├── atis_all_feat_but_number (All features except number)
│   ├── atis_all_feat_but_prefix (All features except prefix)
│   ├── atis_all_feat_but_suffix (All features except suffix)
│   ├── atis_all_features (All features)
│   └── atis_original   (No additional features)
├── condor_scripts     --> All condor scripts for all the experiments done
├── converter_codebase --> All parser codes (run parseData.sh to execute all)
├── experiments        --> All trace files (Accuracy in .err files)
│   ├── atis_added_features -> with orthographic features
│   │   ├── crf_all
│   │   │   ├── err
│   │   │   └── out
│   │   ├── crf_all_but_capitalization
│   │   │   ├── err
│   │   │   └── out
│   │   ├── crf_all_but_hyphen
│   │   │   ├── err
│   │   │   └── out
│   │   ├── crf_all_but_number
│   │   │   ├── err
│   │   │   └── out
│   │   ├── crf_all_but_prefix
│   │   │   ├── err
│   │   │   └── out
│   │   └── crf_all_but_suffix
│   │       ├── err
│   │       └── out
│   ├── atis_original   --> ATIS without orthographic features
│   │   ├── crf_10experiments  --> 10 random train - test splits
│   │   │   ├── err
│   │   │   └── out
│   │   └── hmm_10experiments  --> 10 random train - test splits
│   │       ├── err
│   │       └── out
│   ├── wsj_added_features   --> WSJ without orthographic features on CRF
│   │   ├── crf_all
│   │   ├── crf_all_but_capitalization
│   │   ├── crf_all_but_hyphen
│   │   ├── crf_all_but_number
│   │   ├── crf_all_but_prefix
│   │   └── crf_all_but_suffix
│   └── wsj_original    --> WSJ without orthographic features
│       ├── CRF
│       │   ├── iter_changes (iterations = arange(10,160,10))
│       │   │   ├── err
│       │   │   └── out
│       │   ├── train_0_test_1 -> Train on Section 0 and Test on Section 1
│       │   └── train_0and1_test_2and3 -> Train on Sec 0 & 1, Test on Sec 2 & 3
│       └── HMM
│           ├── iter_changes (iterations = arange(5,85,5))
│           │   ├── err
│           │   └── out
│           ├── train_0_test_1
│           ├── train_0and1_test_2and3
│           ├──train_first12_test_next12>train on first 12 sections,test next 12
│           ├── train_first4_test_next4-->train on first 4 sections,test next 4
│           └── train_first8_test_next8-->train on first 8 sections,test next 8
├── mallet_codebase     --> The changed code
├── mallet_pos    --> The parsed code
│   ├── atis_readable   --> The ATIS parsed data
│   │   ├── atis_all_feat_but_capitalization
│   │   ├── atis_all_feat_but_hyphen
│   │   ├── atis_all_feat_but_number
│   │   ├── atis_all_feat_but_prefix
│   │   ├── atis_all_feat_but_suffix
│   │   ├── atis_all_features
│   │   └── atis_original
│   └── wsj_readable    --> The WSJ parsed data
│       ├── wsj_all_feat_but_capitalization
│       ├── wsj_all_feat_but_hyphen
│       ├── wsj_all_feat_but_number
│       ├── wsj_all_feat_but_prefix
│       ├── wsj_all_feat_but_suffix
│       ├── wsj_all_features
│       ├── wsj_original
│       ├── wsj_set_of_12  -> Set of 12 sections pooled in 1 section
│       ├── wsj_set_of_2   -> Set of 2 sections pooled in 1 section
│       ├── wsj_set_of_4   -> Set of 4 sections pooled in 1 section
│       └── wsj_set_of_8   -> Set of 8 sections pooled in 1 section
├── pref_suff_list     --> The Set of All suffixes and prefixes used
└── wsj_readable       --> The Parsed WSJ files
    ├── wsj_all_feat_but_capitalization
    ├── wsj_all_feat_but_hyphen
    ├── wsj_all_feat_but_number
    ├── wsj_all_feat_but_prefix
    ├── wsj_all_feat_but_suffix
    ├── wsj_all_features
    ├── wsj_original
    ├── wsj_set_of_12  
    ├── wsj_set_of_2
    ├── wsj_set_of_4
    └── wsj_set_of_8
