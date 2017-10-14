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

mas install 883878097 #Server(5.3.1)
mas install 1278508951 #Trello(2.9.7)
mas install 430255202 #Mactracker(7.6.6)
mas install 967805235 #Paste(2.2.4)
mas install 1153157709 #Speedtest(1.3)
mas install 880001334 #Reeder(3.0.5)
mas install 682658836 #GarageBand(10.2.0)
mas install 867299399 #OmniFocus(2.11.1)
mas install 425264550 #BlackmagicDiskSpeed
mas install 510232205 #TheArchiveBrowser
mas install 497799835 #Xcode(9.0)
mas install 736189492 #Notability(2.7.2)
mas install 858446756 #WorldClockPro
mas install 534067900 #Stock+Pro
mas install 403504866 #PCalc(4.5)
mas install 557168941 #Tweetbot(2.5.3)
mas install 924726344 #Deliveries(3.0.5)
mas install 1055273043 #PDFExpert(2.2.10)
mas install 982710545 #ForecastBar(3.0.2)
mas install 916198600 #GridsforInstagram
mas install 1233048948 #Boom3D(1.1)
mas install 1107473342 #ClockPro(1.2.8)
mas install 441258766 #Magnet(2.1.0)
mas install 425424353 #TheUnarchiver(3.11.3)
mas install 461369673 #VOX(2.8.27)
mas install 1224268771 #Screens4(4.2)
mas install 1262957439 #Textual7(7.0.6)
mas install 1048338802 #Cookie5(5.6.1)
mas install 1063996724 #Tyme2(1.9.2)
mas install 568494494 #Pocket(1.6.2)
mas install 409789998 #Twitter(4.3.2)
mas install 420212497 #Byword(2.8.1)
mas install 865500966 #feedly(1.1)
mas install 823766827 #OneDrive(17.3.6967)
mas install 409201541 #Pages(6.3)
mas install 979561272 #JustPressRecord
mas install 975937182 #Fantastical2(2.4.2)
mas install 803453959 #Slack(2.8.1)
mas install 979299240 #NetworkUtilityX(6.0.2)
mas install 418889511 #Scrivener(2.8.1)
mas install 1040087482 #PeriodicTableChemistry
mas install 635491590 #DeluxeMoonPro
mas install 405399194 #Kindle(1.20.3)
mas install 457622435 #Yoink(3.4)
mas install 408981434 #iMovie(10.1.7)
mas install 409203825 #Numbers(4.3)
mas install 1142578772 #OmniOutliner(5.1.4)
mas install 443987910 #1Password(6.8.2)
mas install 1280542517 #Chronicle8(8.0.0)
mas install 409183694 #Keynote(7.3)
mas install 409907375 #RemoteDesktop(3.9)

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
