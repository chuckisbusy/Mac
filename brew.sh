#!/bin/bash
#

xcode-select --install

brew install mas
brew install python3 p7zip wget duti bash tree tmux rename screen sshfs youtube-dl zsh grace smartmontools

mas install 430255202   # Mactracker                     (7.11.2)
mas install 979299240   # Network Kit                    (9.0.3)
mas install 1153157709  # Speedtest                      (1.24)
mas install 403304796   # iNet Network Scanner           (2.9.0)
mas install 1529448980  # Reeder                         (5.1)
mas install 1346203938  # OmniFocus                      (3.12.2)
mas install 425264550   # Disk Speed Test                (3.3)
mas install 1290358394  # Cardhop                        (2.0.10)
mas install 1147396723  # WhatsApp                       (2.2208.15)
mas install 975937182   # Fantastical                    (3.6.3)
mas install 360593530   # Notability                     (11.0.17)
mas install 858446756   # World Clock Pro                (1.7.3)
mas install 993487541   # CARROT Weather                 (4.15.9)
mas install 1233048948  # Boom 3D                        (1.3.14)
mas install 403504866   # PCalc                          (4.10.3)
mas install 1224268771  # Screens                        (4.9.3)
mas install 1055273043  # PDF Expert                     (2.5.21)
mas install 290986013   # Deliveries                     (9.3.2)
mas install 1289583905  # Pixelmator Pro                 (2.3.8)
mas install 1348635544  # Moon Calendar for menu bar     (1.6)
mas install 441258766   # Magnet                         (2.7.0)
mas install 1176895641  # Spark                          (2.11.15)
mas install 1280542517  # Chronicle Pro                  (9.8.1)
mas install 1438243180  # Dark Reader for Safari         (1.4.5)
mas install 1262957439  # Textual IRC Client             (7.2.1)
mas install 1136220934  # Infuse                         (7.3.8)
mas install 568494494   # Pocket                         (1.8.7)
mas install 494803304   # WiFi Explorer                  (3.3.4)
mas install 823528286   # Folx GO+                       (5.26)
mas install 1482454543  # Twitter                        (9.4.1)
mas install 1471849104  # Periodic Table Chemistry 4 Si  (4.2.22)
mas install 445189367   # PopClip                        (2021.11)
mas install 420212497   # Byword                         (2.9.5)
mas install 1295203466  # Microsoft Remote Desktop       (10.7.6)
mas install 409201541   # Pages                          (12.0)
mas install 979561272   # Just Press Record              (19.2)
mas install 457622435   # Yoink                          (3.6.8)
mas install 405399194   # Kindle                         (1.35.0)
mas install 1480068668  # Messenger                      (145.0)
mas install 408981434   # iMovie                         (10.3.1)
mas install 1463334954  # SessionRestore                 (2.6.6)
mas install 409203825   # Numbers                        (12.0)
mas install 1193539993  # Brother iPrint&Scan            (9.1.1)
mas install 957734279   # Toggl Track                    (7.5.441)
mas install 409183694   # Keynote                        (12.0)

brew install --cask 1password
brew install --cask adguard
brew install --cask alfred
brew install --cask appcleaner
brew install --cask bartender
brew install --cask betterzip
brew install --cask calibre
brew install --cask cookie
brew install --cask dropbox
brew install --cask google-chrome
brew install --cask mendeley
brew install --cask microsoft-auto-update
brew install --cask microsoft-office
brew install --cask screens-connect
brew install --cask skype
brew install --cask spotify
brew install --cask sublime-text
brew install --cask transmission
brew install --cask transmit
brew install --cask vlc
brew install --cask xquartz

brew cleanup

echo 'Install from Search:
Adobe Creative Suite
UCSF Chimera
ChemDraw
GlobalProtect VPN
EndNote
LaTex
Logitech (Options(MPB),Gaming(iMac),Spotlight Presentation)
Microsoft Office
OneDrive
OSXFuse
Pymol
VMD'

cd ~/Downloads
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
sudo pip3 install Pygments
rm -rf ~/.zshrc
wget -c https://raw.githubusercontent.com/chuckisbusy/dotfiles/master/zshrc -O ~/.zshrc
wget -c https://raw.githubusercontent.com/chuckisbusy/dotfiles/master/pymolrc.txt -O ~/.pymolrc
wget -c https://raw.githubusercontent.com/chuckisbusy/dotfiles/master/vimrc.txt -O ~/.vimrc
wget -c https://raw.githubusercontent.com/chuckisbusy/dotfiles/master/tmux-conf.txt -O ~/.tmux.conf

defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock
defaults delete com.apple.dock; killall Dock

echo DONE
