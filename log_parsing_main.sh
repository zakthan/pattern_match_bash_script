##Author:        Thanassis Zakopoulos
##Purpose:       This script  takes as input a file name and a pattern match and either calculaters if pattern match exists or the count of the pattern matches 
##Details:       Uses log_parsing_function that has 4 inputs $1=log file, $2=[check (checks if pattern exist)|count (counts the matches)], $3=PM1_NAME , $4=pattern match
##Usage:         log_parsing_main.sh $LOG (full path) [count|check] $PATTERN_MATCH_NAME (has to be one word) $PATTERN_MATCH_STRING (inside quotes)
##Instructions:  In case of maintenance just commnet root crontab entry  

#!/bin/bash


wc=`which wc`
awk=`which awk`
tail=`which tail`
grep=`which grep`
pwd=`which pwd`
DATE=`date '+%Y.%m.%d.%H.%M'`
HOME_DIR=`$pwd`
TMP=$HOME_DIR/tmp
LOG_FILE=$TMP/log_parsing.log
LOG_DIR=$HOME_DIR/logs
PREVIOUS_LINES_COUNT_FILE_BASE=$TMP/previous_line_count

###include file with the functions
. $HOME_DIR/log_parsing_functions


#######LOG_PATH="/cosatguat_storefr/domain/Middleware/user_projects/domains/COS_UAT_SFDomain/servers/COS_UATSF01/logs"
#######LOG1=$LOG_PATH/access.log
#######PM1_NAME="404_error"
#######PM1='HTTP/1.1" 404'



##log_parsing_function $LOG1 "$PM1" count $PM1_NAME
##log_parsing_function $LOG1 "$PM1" check $PM1_NAME
##log_parsing_function $LOG1 "$PM1" check
log_parsing_function $@
