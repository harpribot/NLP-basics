#!bin/sh

#### Compile all parsers
javac converter_codebase/*.java


#### Create all the data
## Parse original
java -cp converter_codebase ParserPOS pos/atis/*
java -cp converter_codebase ParserPOS pos/wsj/*
## Parse all features
java -cp converter_codebase ParserPOS_all_features pref_suff_list/prefix.txt pref_suff_list/suffix.txt pos/atis/*
java -cp converter_codebase ParserPOS_all_features pref_suff_list/prefix.txt pref_suff_list/suffix.txt pos/wsj/*
## Parse all but prefix
java -cp converter_codebase ParserPOS_all_feat_but_prefix pref_suff_list/suffix.txt pos/atis/*
java -cp converter_codebase ParserPOS_all_feat_but_prefix pref_suff_list/suffix.txt pos/wsj/*
## Parse all but suffix
java -cp converter_codebase ParserPOS_all_feat_but_suffix pref_suff_list/prefix.txt pos/atis/*
java -cp converter_codebase ParserPOS_all_feat_but_suffix pref_suff_list/prefix.txt pos/wsj/*
## Parse all but Capitalization
java -cp converter_codebase ParserPOS_all_feat_but_capitalization pref_suff_list/prefix.txt pref_suff_list/suffix.txt pos/atis/*
java -cp converter_codebase ParserPOS_all_feat_but_capitalization pref_suff_list/prefix.txt pref_suff_list/suffix.txt pos/wsj/*
## Parse all but hyphens
java -cp converter_codebase ParserPOS_all_feat_but_hyphen pref_suff_list/prefix.txt pref_suff_list/suffix.txt pos/atis/*
java -cp converter_codebase ParserPOS_all_feat_but_hyphen pref_suff_list/prefix.txt pref_suff_list/suffix.txt pos/wsj/*
## Parse all but numbers
java -cp converter_codebase ParserPOS_all_feat_but_numbers pref_suff_list/prefix.txt pref_suff_list/suffix.txt pos/atis/*
java -cp converter_codebase ParserPOS_all_feat_but_numbers pref_suff_list/prefix.txt pref_suff_list/suffix.txt pos/wsj/*


#### Merge 2 sections for wsj
# 0 - 1
cat wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos > wsj_readable/wsj_set_of_2/wsj_sec_0_1.pos
# 2 - 3
cat wsj_readable/wsj_original/wsj_section_2.pos wsj_readable/wsj_original/wsj_section_3.pos > wsj_readable/wsj_set_of_2/wsj_sec_2_3.pos
# 4 - 5
cat wsj_readable/wsj_original/wsj_section_4.pos wsj_readable/wsj_original/wsj_section_5.pos > wsj_readable/wsj_set_of_2/wsj_sec_4_5.pos
# 6 - 7
cat wsj_readable/wsj_original/wsj_section_6.pos wsj_readable/wsj_original/wsj_section_7.pos > wsj_readable/wsj_set_of_2/wsj_sec_6_7.pos
# 8 - 9
cat wsj_readable/wsj_original/wsj_section_8.pos wsj_readable/wsj_original/wsj_section_9.pos > wsj_readable/wsj_set_of_2/wsj_sec_8_9.pos
# 10 - 11
cat wsj_readable/wsj_original/wsj_section_10.pos wsj_readable/wsj_original/wsj_section_11.pos > wsj_readable/wsj_set_of_2/wsj_sec_10_11.pos
# 12 - 13
cat wsj_readable/wsj_original/wsj_section_12.pos wsj_readable/wsj_original/wsj_section_13.pos > wsj_readable/wsj_set_of_2/wsj_sec_12_13.pos
# 14- 15
cat wsj_readable/wsj_original/wsj_section_14.pos wsj_readable/wsj_original/wsj_section_15.pos > wsj_readable/wsj_set_of_2/wsj_sec_14_15.pos
# 16 - 17
cat wsj_readable/wsj_original/wsj_section_16.pos wsj_readable/wsj_original/wsj_section_17.pos > wsj_readable/wsj_set_of_2/wsj_sec_16_17.pos
# 18- 19
cat wsj_readable/wsj_original/wsj_section_18.pos wsj_readable/wsj_original/wsj_section_19.pos > wsj_readable/wsj_set_of_2/wsj_sec_18_19.pos
# 20- 21
cat wsj_readable/wsj_original/wsj_section_20.pos wsj_readable/wsj_original/wsj_section_21.pos > wsj_readable/wsj_set_of_2/wsj_sec_20_21.pos
# 22 - 23
cat wsj_readable/wsj_original/wsj_section_22.pos wsj_readable/wsj_original/wsj_section_23.pos > wsj_readable/wsj_set_of_2/wsj_sec_22_23.pos


#### Merge 4 sections for wsj
# 0,1,2,3
cat wsj_readable/wsj_set_of_2/wsj_sec_0_1.pos wsj_readable/wsj_set_of_2/wsj_sec_2_3.pos > wsj_readable/wsj_set_of_4/wsj_sec_0_to_3.pos
# 4,5,6,7
cat wsj_readable/wsj_set_of_2/wsj_sec_4_5.pos wsj_readable/wsj_set_of_2/wsj_sec_6_7.pos > wsj_readable/wsj_set_of_4/wsj_sec_4_to_7.pos
# 8,9,10,11
cat wsj_readable/wsj_set_of_2/wsj_sec_8_9.pos wsj_readable/wsj_set_of_2/wsj_sec_10_11.pos > wsj_readable/wsj_set_of_4/wsj_sec_8_to_11.pos
# 12,13,14,15
cat wsj_readable/wsj_set_of_2/wsj_sec_12_13.pos wsj_readable/wsj_set_of_2/wsj_sec_14_15.pos > wsj_readable/wsj_set_of_4/wsj_sec_12_to_15.pos
# 16,17,18,19
cat wsj_readable/wsj_set_of_2/wsj_sec_16_17.pos wsj_readable/wsj_set_of_2/wsj_sec_18_19.pos > wsj_readable/wsj_set_of_4/wsj_sec_16_to_19.pos
# 20,21,22,23
cat wsj_readable/wsj_set_of_2/wsj_sec_20_21.pos wsj_readable/wsj_set_of_2/wsj_sec_22_23.pos > wsj_readable/wsj_set_of_4/wsj_sec_20_to_23.pos

#### Merge 8 sections for wsj
# 0..7
cat wsj_readable/wsj_set_of_4/wsj_sec_0_to_3.pos wsj_readable/wsj_set_of_4/wsj_sec_4_to_7.pos > wsj_readable/wsj_set_of_8/wsj_sec_0_to_7.pos
# 8..15
cat wsj_readable/wsj_set_of_4/wsj_sec_8_to_11.pos wsj_readable/wsj_set_of_4/wsj_sec_12_to_15.pos > wsj_readable/wsj_set_of_8/wsj_sec_8_to_15.pos
# 16..23
cat wsj_readable/wsj_set_of_4/wsj_sec_16_to_19.pos wsj_readable/wsj_set_of_4/wsj_sec_20_to_23.pos > wsj_readable/wsj_set_of_8/wsj_sec_16_to_23.pos

#### Merge 12 sections for wsj
# 0..11
cat wsj_readable/wsj_set_of_8/wsj_sec_0_to_7.pos wsj_readable/wsj_set_of_4/wsj_sec_8_to_11.pos > wsj_readable/wsj_set_of_12/wsj_sec_0_to_11.pos
# 12..23
cat wsj_readable/wsj_set_of_4/wsj_sec_12_to_15.pos wsj_readable/wsj_set_of_8/wsj_sec_16_to_23.pos > wsj_readable/wsj_set_of_12/wsj_sec_12_to_23.pos
