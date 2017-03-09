##Author:        Thanassis Zakopoulos
##Purpose:       This script  takes as input a file name and a pattern match and either calculaters if pattern match exists or the count of the pattern matches
##Details:       Uses log_parsing_function that has 4 inputs $1=log file, $2=[check (checks if pattern exist)|count (counts the matches)], $3=PM1_NAME , $4=pattern match
##Usage:         log_parsing_main.sh $LOG (full path) [count|check] $PATTERN_MATCH_NAME (has to be one word) $PATTERN_MATCH_STRING (inside quotes)
##Instructions:  In case of maintenance just commnet root crontab entry