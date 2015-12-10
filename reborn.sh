#go home
string=$( cat githubToken.txt )
cd && clear
#If githubToken.txt is not empty
if [ "$string" != ""]; then
#Check if .bash_profile exists
	if [ -e ~/.bash_profile ]; then
		# your GitHub token is in .bash_profile yet?
		result=$(grep -F "$string" ~/.bash_profile);
		if [ "$result" != "$string" ] ; then
			# If not, puts your GitHub token in .bash_profile
			echo "Updating .bash_profile.........";
			echo $string >> .bash_profile;fi;
	fi;
fi;
if [ "$string" = ""]; then
	echo "GitHub token was not updated."
fi;



# .bash_profile doesn't exist...
if [ ! -e .bash_profile ]; then 
	# ... so create it and put inside your GitHub token.
	echo $string > .bash_profile && echo ".bash_profile generated!"; fi;
# Is XCode installed?
if [ ! -d /Applications/Xcode.app ]; then
	# No...
	echo "XCode is missing. Please install it before running this script." >&2;
	open https://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12;
	exit 1;
	kill $$
	fi;
# Yes, it is! 
echo "XCode is installed. Continuing..."
# Let's accept the license..
sudo /Applications/Xcode.app/Contents/Developer/usr/bin/xcodebuild -license accept && echo "XCode License accepted!"
# Check if the Developer Command Line Tools are installed...
if [ ! -d /Library/Developer/CommandLineTools ]; then
	# If they are not..
	xcode-select --install;
	# Install them!
	echo "Install Developer Command Line Tools First!";
	exit 1;
	kill $$;
	fi;

# Homebrew software...
# Install HomeBrew!
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" && echo "BREW SUCCESFULLY INSTALLED!"

# Update repositories...
brew update

# Install some software
# Feel free to add or remove what you need or don't

brew install Caskroom/cask/google-chrome
brew install Caskroom/cask/sublime-text
brew install Caskroom/cask/steam && open Applications/Steam.app
brew install Caskroom/cask/github-desktop
brew install Caskroom/cask/firefox
brew install Caskroom/cask/filezilla
brew install Caskroom/cask/brackets
brew install Caskroom/cask/caffeine
brew install Caskroom/cask/dropbox
brew install Caskroom/cask/gimp
brew install Caskroom/cask/macs-fan-control
brew install Caskroom/cask/skype
brew install Caskroom/cask/spotify
brew install Caskroom/cask/transmission
brew install Caskroom/cask/vlc
brew install Caskroom/cask/unetbootin
brew install Caskroom/cask/owncloud
brew install Caskroom/cask/nomachine
brew install watch
brew install youtube-dl
brew install w3m
brew install ssh-copy-id 
brew install watch
brew install htop-osx
brew install wget
brew install mongodb && mongo --version
brew install Caskroom/cask/mongohub 
brew install Caskroom/cask/robomongo
brew install Caskroom/cask/python
brew install Caskroom/cask/python3
brew install Caskroom/cask/mactex
# #installing mongohub
wget https://cloud.github.com/downloads/bububa/MongoHub-Mac/MongoHub.zip && unzip MongoHub.zip && mv MongoHub.app/ Applications/ && echo "MongoHub installed!" && rm MongoHub*


# #install NODE, BOWER, Polyserve
wget https://nodejs.org/dist/v4.2.1/node-v4.2.1.pkg && sudo installer -pkg node-v4.2.1.pkg -target / && rm node-v4.2.1.pkg
sudo npm install -g nodemon
sudo npm install -g bower
sudo npm install -g polyserve


#installing Robomongo
# wget http://robomongo.org/files/mac/Robomongo-0.8.1-x86_64.dmg && hdiutil mount Robomongo-0.8.1-x86_64.dmg && sudo cp -R /Volumes/Robomongo-0.8.1-x86_64/Robomongo.app Applications/ && echo "Robomongo Installed!!" && diskutil umount /Volumes/Robomongo-0.8.1-x86_64/ && rm Robomongo-0.8.1-x86_64.dmg 

# #Installing Python-Idle
# wget https://www.python.org/ftp/python/3.5.0/python-3.5.0-macosx10.6.pkg &&  sudo installer -pkg python-3.5.0-macosx10.6.pkg -target / && echo "IDLE - PYTHON installed!!" && rm rm python-3.5.0-macosx10.6.pkg

# #Installing Latex
# wget http://tug.org/cgi-bin/mactex-download/MacTeX.pkg && sudo installer -pkg MacTeX* -target / && echo "MacTeX installed!!" && rm MacTeX.pkg

cd Applications

# #Run First config
open Caffeine.app Dropbox.app FileZilla.app GIMP.app Macs\ Fan\ Control.app MongoHub.app/ Robomongo.app/ Sublime\ Text\ 2.app Transmission.app VLC.app unetbootin.app
open /Applications/owncloud.app/ 
