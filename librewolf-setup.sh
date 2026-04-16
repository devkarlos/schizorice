#!/bin/sh
# Usage:
# ./librewolf-setup.sh <profile name>
#

TEMP_DIR=/tmp/librewolf-setup-script

if [ -z "$1" ]; then
	echo "Please specify new librewolf profile name"
	echo "Usage:"
	echo "./librewolf-setup.sh <firefox profile name>" 
	exit 1
fi

if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
	if [ ! -x /usr/bin/librewolf ]; then
		echo "Librewolf is not installed"
		exit 1
	fi

	librewolf -CreateProfile "$1" # $HOME/.librewolf"
	LIBREWOLF_PROFILE_DIR=`find "$HOME/.librewolf" -name "*$1*" -type d`
fi

if [ -x librewolf-setup-temp ]; then
	rm -rf $TEMP_DIR
fi

mkdir $TEMP_DIR

git clone https://github.com/arkenfox/user.js.git $TEMP_DIR

# Copy user.js, updater.sh and user-overrides.js into LIBREWOLF_PROFILE_DIR
sudo cp -f $TEMP_DIR/user.js/user.js $LIBREWOLF_PROFILE_DIR/
sudo cp -f $TEMP_DIR/user.js/updater.sh $LIBREWOLF_PROFILE_DIR/
sudo cp -f user-overrides.js $LIBREWOLF_PROFILE_DIR/

# Run updater.sh and autoanswer
echo "Y" | exec bash $LIBREWOLF_PROFILE_DIR/updater.sh

rm -rf $TEMP_DIR

echo ""
echo "############################"
echo "Firefox setup complete"
echo "############################"
echo ""

exit 0
