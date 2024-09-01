#! /bin/bash

current=`kreadconfig6 --file kwinrc --group Plugins --key krohnkiteEnabled`

if [ $current = "true" ]; then
  kwriteconfig6 --file kwinrc --group Plugins --key krohnkiteEnabled false
  qdbus org.kde.KWin /KWin reconfigure
  sleep 0.5
  kwriteconfig6 --file kwinrc --group Plugins --key krohnkiteEnabled true
  qdbus org.kde.KWin /KWin reconfigure
fi

