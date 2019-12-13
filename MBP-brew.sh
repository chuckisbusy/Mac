#!/bin/bash
#

sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
sudo pip install Pygments
wget -c https://raw.githubusercontent.com/chuckisbusy/dotfiles/master/zshrc-MBP.txt -o ~/.zshrc
wget -c https://raw.githubusercontent.com/chuckisbusy/dotfiles/master/pymolrc.txt -o ~/.pymolrc
wget -c https://raw.githubusercontent.com/chuckisbusy/dotfiles/master/vimrc.txt -o ~/.vimrc
wget -c https://raw.githubusercontent.com/chuckisbusy/dotfiles/master/tmux.txt -o ~/.tmux.conf


xcode-select --install
if [ ! -x /usr/local/bin/brew ]; then
    echo "installing homebrew"
    /usr/bin/env ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "homebrew is installed"
fi

brew tap buo/cask-upgrade
brew tap caskroom/cask
brew install grace mas python python3 p7zip wget unrar duti bash tree tmux rename screen zsh smartmontools sshfs

mas install 430255202  #Mactracker (7.8.2)
mas install 1333542190 #1Password 7 (7.4.1)
mas install 1153157709 #Speedtest (1.8)
mas install 403304796  #iNet Network Scanner (2.6.8)
mas install 986304488  #Kiwi for Gmail (2.0.30)
mas install 1449412482 #Reeder (4.2.1)
mas install 510232205  #The Archive Browser (1.11.2)
mas install 682658836  #GarageBand (10.3.4)
mas install 425264550  #Disk Speed Test (3.2)
mas install 1346203938 #OmniFocus (3.4.4)
mas install 1147396723 #WhatsApp (0.3.9308)
mas install 979299240  #Network Kit X (7.1)
mas install 736189492  #Notability (4.1.3)
mas install 1290358394 #Cardhop (1.3.3)
mas install 858446756  #World Clock Pro (1.7.1)
mas install 403504866  #PCalc (4.7)
mas install 1233048948 #Boom 3D (1.3.3)
mas install 924726344  #Deliveries (3.2.1)
mas install 1055273043 #PDF Expert (2.4.30)
mas install 982710545  #Forecast Bar (5.4)
mas install 1384080005 #Tweetbot (3.3.3)
mas install 1148868081 #iStat View (3.04)
mas install 1280542517 #Chronicle Pro (9.5.2)
mas install 461369673  #VOX (3.3.14)
mas install 425424353  #The Unarchiver (4.1.0)
mas install 1289583905 #Pixelmator Pro (1.5.3)
mas install 1063996724 #Tyme 2 (2019.15)
mas install 1262957439 #Textual IRC Client (7.1.1)
mas install 441258766  #Magnet (2.4.5)
mas install 1224268771 #Screens (4.7.2)
mas install 568494494  #Pocket (1.8.5)
mas install 494803304  #WiFi Explorer (2.6)
mas install 445189367  #PopClip (2019.9.1)
mas install 420212497  #Byword (2.9.2)
mas install 823766827  #OneDrive (19.192.0926)
mas install 413965349  #Soulver (2.7.1)
mas install 409201541  #Pages (8.2.1)
mas install 979561272  #Just Press Record (18)
mas install 975937182  #Fantastical (2.5.13)
mas install 1440147259 #AdGuard for Safari (1.5.4)
mas install 457622435  #Yoink (3.5.7)
mas install 635491590  #Deluxe Moon Pro (1.6)
mas install 1040087482 #Periodic Table Chemistry (3.3.1)
mas install 405399194  #Kindle (1.26.1)
mas install 408981434  #iMovie (10.1.14)
mas install 1463334954 #SessionRestore (1.7)
mas install 967805235  #Paste (2.5.3)
mas install 409203825  #Numbers (6.2.1)
mas install 409183694  #Keynote (9.2.1)

brew cask install alfred            #Alfred App
brew cask install adguard           #Adguard
brew cask install bartender			#Bartender
brew cask install calibre 		    #Calibre eBook
brew cask install chatology			#Chatology
brew cask install dropbox 		    #Dropbox
brew cask install flume				#Flume
brew cask install google-chrome 	#Google Chrome
brew cask install istat-server 		#iStat Server
brew cask install mendeley-desktop	#Mendeley
brew cask install osxfuse           #OSXFuse
brew cask install screens-connect 	#Screen Connect
brew cask install skype             #Skype
brew cask install spotify 		    #Spotify
brew cask install sublime-text 		#Sublime Text
brew cask install sublime-merge		#Sublime Merge
brew cask install transmission 		#Transmission
brew cask install transmit          #Transmit
brew cask install xld 			    #XLD
brew cask install xquartz           #X11/XQuartx
brew cask install vlc			    #VLC
brew cask install virtualbox		#Virtual Box
brew cleanup

echo 'Install from Search:
Adobe Creative Suite
Brother Control Center
ChemDraw
Cisco Anyconnect VPN
EndNote
LaTex
Logitech (Options(MPB),Gaming(iMac),Spotlight Presentation)
Microsoft Office
Pymol'

defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock
defaults delete com.apple.dock; killall Dock
