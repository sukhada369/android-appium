#!/bin/bash

echo "IN SHELL SCRIPT"

echo $PWD

#cd /home/android && npm install appium

#appium &

echo no | /usr/local/android-sdk/tools/android create avd -n dev3 -t 1 && sleep 25

echo "-------------Created avd"

emulator -avd dev3 -no-window &

echo "----------avd started"
sleep 30
adb kill-server
adb start-server
sleep 30

echo "------------listing devices"
adb devices
adb devices
adb shell input keyevent 82
adb shell input keyevent 82
adb shell input keyevent 82

echo "------------Starting appium"

appium &

