# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Pokemon: [Total]   
#    Avg. HP: [avgHP]     
#    Avg. Attack: [avgAT]    
# ======= END SUMMARY =======

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.

#!/bin/bash

PATH= '/home/nick/cs205_final/pokemon.dat'
Total=awk 'END{print$1}' $PATH

avgHP=awk -F "\t" ' {sum+=$6} END {print sum/NR}' $PATH

avgAT=awk -F "\t" ' {sum+=$7} END {print sum/NR}' $PATH



echo "======= SUMMARY OF $file ======"
echo "Total Pokemon: [$Total]"
echo "Avg. HP: [$avgHP]"
echo "Avg. Attack: [$avgAT]"
echo "======= END SUMMARY ======="
