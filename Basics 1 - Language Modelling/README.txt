##################################################################################
PLEASE KEEP THE DATA directory IN THE SAME DIRECTORY as compile.sh for the code to compile. I have attached the data as well.
##################################################################################

## SOURCE
The model java files are stored in:
src/nlp/lm

## DATA
The data is present in:
data/


RUN Instructions:
## Compilation
sh compile.sh
## Run
sh run.sh


## Results
They are stored in:
traces/atis_output.txt
traces/brown_output.txt
traces/wsj_output.txt

## Report
Report is named as Report.pdf

The answers to both Questions are given in the report. I have bolded some words, which are around the sentences with the answers, so that it is easy to find them.

Each txt file contains trace for all 3 models.

## File Description
The Java files are:
1. Ngrams.java -> This contains all the common train and test codes for
                  the 3 models. All 3 models inherit this source-code

2. BigramModel.java -> Codes the Forward Bigram model
3. BackwardBigramModel.java -> Codes the Backward Bigram model
4. BidirectionalBigramModel.java -> Codes the Bidirectional Bigram model
5. DoubleValue.java -> Code for storing double values as safe-objects
6. POSTaggedFile.java -> Code to obtain the sentences from the file
