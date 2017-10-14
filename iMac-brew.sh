#!/bin/bash
#
if [ ! -x /usr/local/bin/brew ]; then
    echo "installing homebrew"
    /usr/bin/env ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "homebrew is installed"
fi

brew install python python3 p7zip wget unrar duti bash tree rename screen zsh
brew tap buo/cask-upgrade
brew tap caskroom/cask
brew install Caskroom/cask/xquartz
brew install grace
brew install mas

mas install 883878097 #Server
mas install 1278508951 #Trello
mas install 430255202 #Mactracker
mas install 967805235 #Paste
mas install 1153157709 #Speedtest
mas install 880001334 #Reeder
mas install 682658836 #GarageBand
mas install 867299399 #OmniFocus
mas install 425264550 #Blackmagic
mas install 510232205 #The
mas install 497799835 #Xcode
mas install 736189492 #Notability
mas install 858446756 #World
mas install 534067900 #Stock
mas install 403504866 #PCalc
mas install 557168941 #Tweetbot
mas install 924726344 #Deliveries
mas install 1055273043 #PDF
mas install 982710545 #Forecast
mas install 916198600 #Grids
mas install 1233048948 #Boom
mas install 1107473342 #Clock
mas install 441258766 #Magnet
mas install 425424353 #The
mas install 461369673 #VOX
mas install 1224268771 #Screens
mas install 1262957439 #Textual
mas install 1048338802 #Cookie
mas install 1063996724 #Tyme2
mas install 568494494 #Pocket
mas install 409789998 #Twitter
mas install 420212497 #Byword
mas install 865500966 #feedly
mas install 823766827 #OneDrive
mas install 409201541 #Pages
mas install 979561272 #Just
mas install 975937182 #Fantastical
mas install 803453959 #Slack
mas install 979299240 #NetworkUtilityX
mas install 418889511 #Scrivener
mas install 1040087482 #Periodic
mas install 635491590 #Deluxe
mas install 405399194 #Kindle
mas install 457622435 #Yoink
mas install 408981434 #iMovie
mas install 409203825 #Numbers
mas install 1142578772 #OmniOutliner
mas install 443987910 #1Password
mas install 1280542517 #Chronicle
mas install 409183694 #Keynote
mas install 409907375 #Remote

brew cask install calibre 		#Calibre
brew cask install dropbox 		#Dropbox
brew cask install flash-ppapi		#Flash Player-1
brew cask install flash-npapi		#Flash Player-2
brew cask install google-chrome 	#Google Chrome
brew cask install istat-server 		#iStat Server
brew cask install java			#Java
brew cask install omnipresence 		#OmniPresence
brew cask install screens-connect 	#Screen Connect
brew cask install spotify 		#Spotify
brew cask install sublime-text 		#Sublime Text
brew cask install torbrowser 		#Tor Browser 
brew cask install transmission 		#Transmission
brew cask install xld 			#XLD
brew cask install vlc			#VLC
brew cleanup

echo 'Install from Search:
Cisco Anyconnect
Logitech
Microsoft Office
VMD'

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
