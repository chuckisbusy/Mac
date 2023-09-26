#!/bin/bash
#

xcode-select --install

brew install mas
brew install cask rar p7zip wget duti bash tree tmux rename screen youtube-dl zsh grace smartmontools

mas install 430255202   # Mactracker                      (7.12.1)
mas install 979299240   # Network Kit                     (9.0.3)
mas install 1153157709  # Speedtest                       (1.25)
mas install 403304796   # iNet Network Scanner            (2.9.6)
mas install 1529448980  # Reeder                          (5.4)
mas install 1346203938  # OmniFocus                       (3.14.3)
mas install 1290358394  # Cardhop                         (2.2.4)
mas install 1147396723  # WhatsApp                        (2.2301.6)
mas install 858446756   # World Clock Pro                 (1.7.4)
mas install 1569813296  # 1Password for Safari            (2.5.1)
mas install 1471849104  # Periodic Table Chemistry 2023M  (4.3.3)
mas install 1233048948  # Boom 3D                         (1.4.1)
mas install 403504866   # PCalc                           (4.10.5)
mas install 1224268771  # Screens                         (4.12.6)
mas install 1055273043  # PDF Expert                      (3.0.34)
mas install 1438243180  # Dark Reader for Safari          (1.4.6)
mas install 1289583905  # Pixelmator Pro                  (3.2.3)
mas install 1348635544  # Moon Calendar for menu bar      (1.7)
mas install 441258766   # Magnet                          (2.10.0)
mas install 1136220934  # Infuse                          (7.4.10)
mas install 1262957439  # Textual IRC Client              (7.2.1)
mas install 969714962   # Television Time                 (2.1)
mas install 568494494   # Pocket                          (1.8.7)
mas install 494803304   # WiFi Explorer                   (3.4)
mas install 823528286   # Folx GO+                        (5.27)
mas install 1482454543  # Twitter                         (9.30)
mas install 445189367   # PopClip                         (2022.12)
mas install 409201541   # Pages                           (12.2.1)
mas install 1195676848  # Grocery                         (3.1.1)
mas install 979561272   # Just Press Record               (19.3)
mas install 1492055171  # Expenses                        (2.9.7)
mas install 457622435   # Yoink                           (3.6.84)
mas install 1480068668  # Messenger                       (169.0)
mas install 1463334954  # SessionRestore                  (2.7.4)
mas install 409203825   # Numbers                         (12.2.1)
mas install 1193539993  # Brother iPrint&Scan             (10.2.0)
mas install 409183694   # Keynote                         (12.2.1)

brew install --cask 1password
brew install --cask adguard
brew install --cask alfred
brew install --cask appcleaner
brew install --cask bartender
brew install --cask betterzip
brew install --cask calibre
brew install --cask cookie
brew install --cask discord
brew install --cask dropbox
brew install --cask fantastical
brew install --cask github
brew install --cask google-chrome
brew install --cask paragon-extfs
brew install --cask paragon-ntfs
brew install --cask readdle-spark
brew install --cask screens-connect
brew install --cask skype
brew install --cask soulver 
brew install --cask spotify
brew install --cask sublime-text
brew install --cask tradingview
brew install --cask transmission
brew install --cask transmit
brew install --cask vlc
brew install --cask xquartz

brew cleanup

echo 'Install from Search:
LibreOffice
Logitech (Options(MPB),Gaming(iMac),Spotlight Presentation)
Trakt
Aftership
OSXFuse
SSHFS
Pymol
VMD'

sudo pip3 install Pygments
rm -rf ~/.zshrc
wget -c https://raw.githubusercontent.com/chuckisbusy/dotfiles/master/zshrc -O ~/.zshrc
wget -c https://raw.githubusercontent.com/chuckisbusy/dotfiles/master/vimrc.txt -O ~/.vimrc
wget -c https://raw.githubusercontent.com/chuckisbusy/dotfiles/master/tmux-conf.txt -O ~/.tmux.conf

defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock
defaults delete com.apple.dock; killall Dock

echo DONE
