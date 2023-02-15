#!/bin/sh
# Usage:
# ./firefoxSetup.sh <firefox profile name>
#

if [ -z "$1" ]; then
	echo "No argument supplied"
	exit
fi

if [ "$(uname)" == "Darwin" ]; then
	if [ ! -x /Applications/Firefox.app/Contents/MacOS/firefox ]; then
		echo "Firefox is not installed, please install it"
		exit
	fi
	
    open -a firefox -CreateProfile "$1" # $HOME/Library/Application Support/Firefox/Profiles/"
	FIREFOX_PROFILE_DIR=`find "$HOME/Library/Application Support/Firefox/Profiles" -name "*$1*" -type d`
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
	if [ ! -x /usr/bin/firefox ]; then
		echo "Firefox is not installed, please install it"
		exit
	fi

    firefox -CreateProfile "$1" # $HOME/.mozilla/firefox/"
	FIREFOX_PROFILE_DIR=`find "$HOME/.mozilla/firefox" -name "*$1*" -type d`
fi

if [ -x firefox-setup.temp ]; then
	rm -rf firefox-setup.temp
fi
mkdir firefox-setup.temp

# Git clone arkenfox user.js
git clone https://github.com/arkenfox/user.js.git firefox-setup.temp/user.js/

# Copy user.js, updater.sh and user-overrides.js into FIREFOX_PROFILE_DIR
sudo cp -f firefox-setup.temp/user.js/user.js $FIREFOX_PROFILE_DIR/
sudo cp -f firefox-setup.temp/user.js/updater.sh $FIREFOX_PROFILE_DIR/
sudo cp -f user-overrides.js $FIREFOX_PROFILE_DIR/

# Run updater.sh and autoanswer
echo "Y" | exec bash $FIREFOX_PROFILE_DIR/updater.sh

rm -rf firefox-setup.temp

echo "\033[0;32m"
echo ""
echo "############################"
echo "Firefox setup complete"
date
echo "############################"
echo ""
echo "\033[0m"

exit 0