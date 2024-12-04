#!/bin/bash
#

xcode-select --install

brew install mas
brew install cask wget duti bash tmux rename screen zsh grace python@3.11

mas install 1033342465  # Just Press Record           (50.0)
mas install 430255202   # Mactracker                  (7.13)
mas install 979299240   # Network Kit                 (9.2.0)
mas install 1153157709  # Speedtest                   (1.27)
mas install 403304796   # iNet Network Scanner        (3.1.3)
mas install 1529448980  # Reeder                      (5.4.6)
mas install 1346203938  # OmniFocus                   (3.15.8)
mas install 497799835   # Xcode                       (16.1)
mas install 1290358394  # Cardhop                     (2.3.2)
mas install 1569813296  # 1Password for Safari        (8.10.54)
mas install 858446756   # World Clock Pro             (1.7.11)
mas install 1233048948  # Boom 3D                     (2.2.3)
mas install 403504866   # PCalc                       (4.10.8)
mas install 1438243180  # Dark Reader for Safari      (2.1.1)
mas install 1055273043  # PDF Expert                  (3.10.9)
mas install 969714962   # TV Time                     (2.3.2)
mas install 1136220934  # Infuse                      (8.0.4)
mas install 1289583905  # Pixelmator Pro              (3.6.13)
mas install 441258766   # Magnet                      (3.0.5)
mas install 1348635544  # Moon Calendar for menu bar  (1.8.1)
mas install 494803304   # WiFi Explorer               (3.5.3)
mas install 823528286   # Folx GO+                    (5.27)
mas install 1663047912  # Screens 5                   (5.4.7)
mas install 1195676848  # Grocery                     (3.1.4)
mas install 409201541   # Pages                       (14.2)
mas install 1492055171  # Expenses                    (3.6.15)
mas install 1594420480  # Prompt                      (3.0.7)
mas install 457622435   # Yoink                       (3.6.97)
mas install 1480068668  # Messenger                   (223.0)
mas install 1463334954  # SessionRestore              (2.8)
mas install 409203825   # Numbers                     (14.2)
mas install 1193539993  # Brother iPrint&Scan         (12.0.3)
mas install 409183694   # Keynote                     (14.2)

brew install --cask 1password
brew install --cask adguard
brew install --cask alfred
brew install --cask appcleaner
brew install --cask betterzip
brew install --cask calibre
brew install --cask cookie
brew install --cask discord
brew install --cask dropbox
brew install --cask fantastical
brew install --cask github
brew install --cask google-chrome
brew install --cask jordanbaird-ice
brew install --cask popclip
brew install --cask mendeley
brew install --cask obsidian
brew install --cask screens-connect
brew install --cask skype
brew install --cask soulver 
brew install --cask spotify
brew install --cask sublime-text
brew install --cask transmission
brew install --cask transmit
brew install --cask vlc
brew install --cask xld
brew install --cask xquartz
brew install --cask zotero
brew tap nahive/spotify-notify
brew install --cask spotify-notify --no-quarantine

brew cleanup

echo 'Install from Search:
Logitech (Options(MPB),Gaming(iMac),Spotlight Presentation)
Trakt
Aftership
OSXFuse
SSHFS
Microsoft Office
Adobe Creative Cloud
PyMol
Latex
Dash
Mediainfo
Spek
Yates'

sudo pip3 install Pygments
wget -c https://raw.githubusercontent.com/chuckisbusy/dotfiles/refs/heads/master/Mac/vimrc.txt -O ~/.vimrc
wget -c https://raw.githubusercontent.com/chuckisbusy/dotfiles/refs/heads/master/Mac/tmux.conf.txt -O ~/.tmux.conf

defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock
defaults delete com.apple.dock; killall Dock

echo DONE
