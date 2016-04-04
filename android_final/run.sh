#!/bin/bash
#export ANDROID_EMULATOR_FORCE_32BIT=true
#export HOME=/home/android
#export PWD=/home/android
npm install appium
appium &
echo no | android create avd -n dev3 -t 6
emulator -avd dev3 -no-window &
adb shell input keyevent 82
