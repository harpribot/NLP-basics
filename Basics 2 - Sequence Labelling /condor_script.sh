#!bin/sh

##### ATIS related condor submissions
# HMM
condor_submit condor_scripts/atis_hmm_original_10exp.sh
# CRF - Normal
condor_submit condor_scripts/atis_crf_original_10exp.sh
# CRF - Orthographic features
condor_submit condor_scripts/atis_crf_all_feat_10exp.sh
condor_submit condor_scripts/atis_crf_no_prefix_10exp.sh
condor_submit condor_scripts/atis_crf_no_suffix_10exp.sh
condor_submit condor_scripts/atis_crf_no_capital_10exp.sh
condor_submit condor_scripts/atis_crf_no_hyphen_10exp.sh
condor_submit condor_scripts/atis_crf_no_number_10exp.sh


##### WSJ related condor submissions
# 1 train 1 test
condor_submit condor_scripts/wsj_hmm_train_sec0_test_sec1.sh
condor_submit condor_scripts/wsj_crf_train_sec0_test_sec1.sh
# 2 train 2 test
condor_submit condor_scripts/wsj_hmm_train_sec_01_test_sec_23.sh
condor_submit condor_scripts/wsj_crf_train_sec_01_test_sec_23.sh
# x train x test for HMM
condor_submit condor_scripts/wsj_hmm_train_first4_test_next4.sh
condor_submit condor_scripts/wsj_hmm_train_first8_test_next8.sh
condor_submit condor_scripts/wsj_hmm_train_first12_test_next12.sh
# HMM iter changes - 16 experiments
condor_submit condor_scripts/wsj_hmm_change_iter.sh
# CRF iter changes - 16 experiments
condor_submit condor_scripts/wsj_crf_change_iter.sh

# CRF - orthographic features on 1 train and 1 test
condor_submit condor_scripts/wsj_crf_all_feat.sh
condor_submit condor_scripts/wsj_crf_no_prefix.sh
condor_submit condor_scripts/wsj_crf_no_suffix.sh
condor_submit condor_scripts/wsj_crf_no_capital.sh
condor_submit condor_scripts/wsj_crf_no_hyphen.sh
condor_submit condor_scripts/wsj_crf_no_number.sh
