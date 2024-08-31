#!/bin/bash

echo "AirPods Connector"

if grep  "ControllerMode" /etc/bluetooth/main.conf; then
  sudo sed -i -e 's/#ControllerMode = dual/ControllerMode = bredr/' /etc/bluetooth/main.conf
  sudo /etc/init.d/bluetooth restart
  echo "Done!"
else 
  echo "Nothing Found in /etc/bluetooth/main.conf"
fi