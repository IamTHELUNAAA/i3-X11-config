#!/bin/bash

API_KEY="576e86d050b34f26a9560545251509"
CITY="Geelong"
UNIT="c"  # "c" for Celsius, "f" for Fahrenheit

WEATHER=$(curl -s "http://api.weatherapi.com/v1/current.json?key=$API_KEY&q=$CITY")

if [ -n "$WEATHER" ]; then
    TEMP=$(echo "$WEATHER" | jq -r ".current.temp_${UNIT}")
    CONDITION=$(echo "$WEATHER" | jq -r ".current.condition.text")

    case $CONDITION in
        *Clear*|*Sunny*) ICON="☀" ;;
        *Partly*Cloudy*) ICON="⛅" ;;
        *Cloud*|*Overcast*) ICON="☁" ;;
        *Rain*|*Drizzle*) ICON="🌧" ;;
        *Thunder*|*Storm*) ICON="⛈" ;;
        *Snow*|*Sleet*|*Ice*) ICON="❄" ;;
        *Fog*|*Mist*|*Haze*) ICON="🌫" ;;
        *) ICON="🌡" ;;
    esac

    echo "$ICON ${TEMP}°${UNIT^^}"
else
    echo "⚠ N/A"
fi
