#!/bin/bash
#
xcode-select --install
sleep 4m
if [ ! -x /usr/local/bin/brew ]; then
    echo "installing homebrew"
    /usr/bin/env ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "homebrew is installed"
fi

brew install python python3 p7zip wget unrar duti bash tree rename screen zsh
brew tap buo/cask-upgrade
brew tap caskroom/cask
brew install mas

mas install 409907375 #Remote Desktop (3.9)
mas install 425424353 #The Unarchiver (3.11.3)
mas install 409183694 #Keynote (7.3.1)
mas install 408981434 #iMovie (10.1.8)
mas install 967004861 #HP Easy Scan (1.9.1)
mas install 510232205 #The Archive Browser (1.11.1)
mas install 443987910 #1Password (6.8.4)
mas install 979299240 #NetworkUtilityX (6.0.2)
mas install 883878097 #Server (5.3.1)
mas install 403504866 #PCalc (4.5.2)
mas install 1224268771 #Screens 4 (4.3.1)
mas install 1026349850 #Copied (2.0.6)
mas install 409201541 #Pages (6.3.1)
mas install 409203825 #Numbers (4.3.1)
mas install 1148868081 #iStat View (3.03)


brew cask install google-chrome 	#Google Chrome
brew cask install istat-server 		#iStat Server
brew cask install screens-connect 	#Screen Connect
brew cask install sublime-text 		#Sublime Text
brew cask install transmission 		#Transmission
brew cleanup

defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock
echo 'Add this to /etc/shells:

sudo nano /etc/shells
/usr/local/bin/bash
/usr/local/bin/zsh'
sleep 60s
sudo vi /etc/shells
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
sudo easy_install Pygments
echo 'Add plugins=() to .zshrc'
