#!/bin/bash

# export MY_LOCATION="Palermo, Italy" in your .bashrc or .bash_aliases
location="${MY_LOCATION:-Palermo, Italy}"

location_urlencoded="${location/ /\%20}"
wttr_url="https://wttr.in/$location_urlencoded"

# Get weather information from wttr.in.
weather=$(curl -sS "${wttr_url}?format=%C+%t+%h" 2>/dev/null)

# check if the curl has failed and print "wttr.in is down" if it has

if [ -z "$weather" ]; then
  echo "wttr.in down"
  exit 1
fi

# Extract the weather condition, temperature, and humidity using regular expressions.
condition=$(echo "$weather" | grep -oE '^[[:alpha:] ]+[[:alpha:]]')
temperature=$(echo "$weather" | grep -oE '[+-]?[0-9]+°C')
humidity=$(echo "$weather" | grep -oE '[0-9]+%')

# Select the appropriate icon according to the weather condition.
case $condition in
"Clear"*) icon=" " ;;         #\uf305
"Partly cloudy"*) icon=" " ;; #\uf002
"Cloudy"*) icon=" " ;;        #\uf041
"Mist"*) icon=" " ;;          #\uf74e
"Fog"*) icon=" " ;;           #uf74e
*[Rr]ain*) icon=" " ;;        #\ue009
"Heavy rain"*) icon=" " ;;    #\uf02d
"Overcast"*) icon=" " ;;      #\uf041
*) icon=" " ;;                #\u2757
esac

# Print the weather information.
echo "$icon $temperature $humidity"
