Purpose:
This script  takes as input a file name and a pattern match and either calculates if pattern match exists or the count of the pattern matches. 

Details:
The script uses log_parsing_function that takes 4 arguments as input:
$1=log file (the full path of the log file to search)
$2=[check (checks if pattern exist)|count (counts the matches)]
$3=PATTERN_MATCH_NAME
$4=pattern match. 
If the script is used to count the matches it writes a log entry  under path $installation_dir/logs/$PATTERN_MATCH_NAME file with the format "$DATE $COUNT "pattern match""
If the script is used to check for an occurance it just print a message with format "2017.03.09.13.48 $PATTERN_MATCH_NAME Pattern exists $COUNT times!!"

Usage: 
log_parsing_main.sh $LOG (full path) [count|check] $PATTERN_MATCH_NAME (has to be one word) $PATTERN_MATCH_STRING (inside quotes)

Installation:
Just copy files log_parsing_main.sh, log_parsing_functions and log_parsing_subfunctions under a root folder of your choise and under this folder create directories logs and tmp

Limitations:
Beacuse script is using commad wc to calculate the lines of the file it may become slow when log files are big 
