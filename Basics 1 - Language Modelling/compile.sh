#!bin/sh
## remove previous classes
FILE=src/nlp/lm/BigramModel.class
if [ -f "$FILE" ];
then
   echo "Cleaning previous classes..."
   rm src/nlp/lm/*.class
   echo "Previous classes cleaned"
fi

## do fresh compilation
echo "Compiling source code..."
javac src/nlp/lm/*.java
echo "Compilation Complete. Exiting..."
echo "Successfully exited"
