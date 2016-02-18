#!/usr/bin/sh
RELEASE=4.10.3-release
git clone git@github.com:EpicGames/UnrealEngine.git --recursive --depth 1 --branch $RELEASE
cd UnrealEngine
sh ./Setup.sh
sh ./GenerateProjectFiles.sh
xcodebuild -workspace UE4.xcworkspace -scheme UE4
