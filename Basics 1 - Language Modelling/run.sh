#!bin/sh

## declare the classpath for model files
CLASSPATH=src/

## declare an array variable
declare -a data=("atis" "brown" "wsj")
declare -a model=("BigramModel" "BackwardBigramModel" "BidirectionalBigramModel")

## Cleaning previous traces
echo "Cleaning all previous traces..."
rm traces/*.txt
echo "All previous traces cleaned. Moving Forward."

## Run all three models on the 3 data, and store the result in dir: trace/
echo "Beginning Training and Testing..."
for dt in "${data[@]}"
do
  echo "Training on ${dt}"
  for md in "${model[@]}"
  do
    PACKAGE=nlp.lm.${md}
    DATA=data/${dt}
    OUTPUT=traces/${dt}_output.txt
    echo "Using ${md}"
    echo "#################################" >> ${OUTPUT}
    echo "Using ${md} on ${dt} data\n" >> ${OUTPUT}
    java -cp ${CLASSPATH} ${PACKAGE} ${DATA} 0.1 >> ${OUTPUT}
  done
  echo "\n \n" >> ${OUTPUT}
  echo "\n"
done
echo "Training Completed."
## exit upon success
echo "All traces stored in traces/ directory"
echo "All done. Exiting..."
