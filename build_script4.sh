#!/bin/bash
# Title		:build_script4
# Description	:This script will act as a calandar check and inform you if there are any holidays
# Author	:Clarence Munn
# Date		:09-12-2022
# Version	: 1
# Usage		: ./build_script4.sh
# Notes		:
#=======================================================================

# Greet user and ask what date they would like to check
echo -e "Hello, and welcome to the International Holiday Identifier\n Are you here for business or pleasure?"

read ans
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo " "
echo " "
if [ $ans == "business" ];
then echo -e "Businesses are reaching more and more people as the world gets smaller thanks to digital media.\n We will let you know what holidays are upcoming and in which countries"
    echo " "
    echo " "
elif [ $ans == "pleasure"]; 
then echo -e "Traveling abroad can be severely impacted by International holidays\n We will let you know what holidays are upcoming and in which countries"
    echo " "
    echo " "
else
 echo "Anyone can access this information, let's get started!"
fi
#check api for any holidays for the next 7 days
echo "Now checking the database for your information"
echo " "
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"

#curl contacts the API, -s option silences the status output, using jq -r takes the raw data and puts it into a file
curl -s https://date.nager.at/api/v3/NextPublicHolidaysWorldWide/ | jq -r > ~/Desktop/holidays2.json

sleep 1

#display what holidays
echo "Here is a list of the Holidays upcoming internationally"

echo ""
jq -r 'map ({date, localName, name, countryCode, fixed, global, launchYear}) | (first | keys_unsorted) as $keys | map ([to_entries[] | .value]) as $rows | $keys, $rows[] | @csv' ~/Desktop/holidays.json
# "map ({date, localName, name, countryCode, fixed, global, launchYear})" instructs jq which keys we want to extract from the input JSON file.
# "| (first | keys_unsorted) as $keys"  takes the first object, extracts its keys and stores them under the $keys variable as an array.
# "map ([to_entries[] | .value]) as $rows" converts every key-value entry into an object so we can extract only values as an array and store it in a $rows variable.
#  "$keys,$rows[]" puts keys and rows together and then pipe it with the @csv filter to convert JSON objects to CSV rows, with the file name follwing the command
echo " "
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
echo " "
echo "For your convenience and viewing pleasure; a json and csv file is being created on the desktop"

#echo "Did you Know...."

jq -r 'map ({date, localName, name, countryCode, fixed, global, launchYear}) | (first | keys_unsorted) as $keys | map ([to_entries[] | .value]) as $rows | $keys, $rows[] | @csv' ~/Desktop/holidays.json > ~/Desktop/upcomingholidays2.csv
#see line 40, puts the output into a csv file