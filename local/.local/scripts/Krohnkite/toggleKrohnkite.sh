#! /bin/bash

current=`kreadconfig6 --file kwinrc --group Plugins --key krohnkiteEnabled`

if [ $current = "true" ]; then
  kwriteconfig6 --file kwinrc --group Plugins --key krohnkiteEnabled false
elif [ $current = "false" ]; then
  kwriteconfig6 --file kwinrc --group Plugins --key krohnkiteEnabled true
fi

qdbus org.kde.KWin /KWin reconfigure
