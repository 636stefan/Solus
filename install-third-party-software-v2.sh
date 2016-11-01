#!/bin/bash
############################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
############################################################################
#
#
#                  e         e
#                eee       ee
#               eeee     eee
#           wwwwwwwwweeeeee
#        wwwwwwwwwwwwwwweee
#      wwwwwwwwwwwwwwwwwwweeeeeeee
#     wwwww     eeeeewwwwwweeee
#    www          eeeewwwwwwe
#    ww             eewwwwww
#    w                 wwwww
#                      wwwww
#                     wwwww
#                    wwwww
#                   wwww
#                  wwww
#                wwww
#              www
#             ww
#
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
#
# More from Erik Dubois
#
# Aurora Conky
# at http://sourceforge.net/projects/auroraconkytheme/
# Explanation on the use of this theme can be found at
# http://erikdubois.be/category/linux/aurora-conky/
#
# Aureola Conky
# Collections of nice conky's with lua syntax
# https://github.com/erikdubois/Aureola
#
# Sardi icons
# Many different styles of icons from colourfull, monochrome, white, circle
# https://sourceforge.net/projects/sardi/
#
# Surfn
# Colourfull and playfull icons
# https://github.com/erikdubois/Surfn
#
# Check out the github - many more scripts for automatic installation of Linux Systems.
#
#
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################



###############################################################################################

# THIRD PARTY
# https://wiki.solus-project.com/3rdParty


###############################################################################################
# BROWSERS
###############################################################################################

# Google Chrome
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/web/browser/google-chrome-stable/pspec.xml
sudo eopkg it -y google-chrome-*.eopkg;sudo rm google-chrome-*.eopkg

# Google Chrome Beta
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/web/browser/google-chrome-beta/pspec.xml
sudo eopkg it google-chrome-*.eopkg;sudo rm google-chrome-*.eopkg

# Google Chrome dev/unstable
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/web/browser/google-chrome-unstable/pspec.xml
sudo eopkg it google-chrome-*.eopkg;sudo rm google-chrome-*.eopkg

# Opera
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/web/browser/opera-stable/pspec.xml
sudo eopkg it -y opera*.eopkg;sudo rm opera*.eopkg

# Vivaldi stable
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/web/browser/vivaldi-stable/pspec.xml
sudo eopkg it -y vivaldi*.eopkg;sudo rm *.eopkg

# Vivaldi snapshot
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/web/browser/vivaldi-snapshot/pspec.xml
sudo eopkg it vivaldi*.eopkg;sudo rm *.eopkg



###############################################################################################
# COMMUNICATION
###############################################################################################

# Discord - canary
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/im/discord-canary/pspec.xml
sudo eopkg it -y discord*.eopkg;sudo rm discord*.eopkg

# Franz
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/im/franz/pspec.xml
sudo eopkg it -y franz*.eopkg;sudo rm franz*.eopkg

# Google Talk Browser plugin
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/im/google-talkplugin/pspec.xml
sudo eopkg it google-talkplugin*.eopkg;sudo rm google-talkplugin*.eopkg

# Skype for linux alpha
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/im/skype/pspec.xml
sudo eopkg it -y skype*.eopkg;sudo rm *.eopkg

# Slack
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/im/slack-desktop/pspec.xml
sudo eopkg it slack-desktop*.eopkg;sudo rm slack-desktop*.eopkg

echo "fixing hardcoded icon"
old="Icon=\/usr\/share\/pixmaps\/slack.png"
new="Icon=slack"
location="/usr/share/applications/slack.desktop"
sudo sed -i s/$old/$new/g $location

# Teamspeak
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/im/teamspeak/pspec.xml
sudo eopkg it teamspeak3*.eopkg;sudo rm teamspeak3*.eopkg

# Viber
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/im/viber/pspec.xml
sudo eopkg it viber*.eopkg;sudo rm *.eopkg

###############################################################################################
# MULTIMEDIA
###############################################################################################

# Bitwig Studio
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/multimedia/music/bitwig-studio/pspec.xml
sudo eopkg it bitwig-studio*.eopkg;sudo rm bitwig-studio*.eopkg

# OcenAudio
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/multimedia/music/ocenaudio/pspec.xml
sudo eopkg it ocenaudio*.eopkg;sudo rm ocenaudio*.eopkg

# Pixeluvo
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/multimedia/graphics/pixeluvo/pspec.xml
sudo eopkg it pixeluvo*.eopkg;sudo rm pixeluvo*.eopkg

echo "fixing hardcoded icon"
old="Icon=\/opt\/pixeluvo\/pixeluvo.png"
new="Icon=pixeluvo"
location="/usr/share/applications/pixeluvo.desktop"
sudo sed -i s/$old/$new/g $location


# Plex Media Server
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/multimedia/video/plexmediaserver/pspec.xml
sudo eopkg it plexmediaserver-*.eopkg;sudo rm plexmediaserver-*.eopkg
sudo systemd-tmpfiles --create
sudo systemctl enable plexmediaserver.service
sudo systemctl start plexmediaserver.service

# Sunvox
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/multimedia/music/sunvox/pspec.xml
sudo eopkg it sunvox*.eopkg;sudo rm sunvox*.eopkg

# Spotify
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/multimedia/music/spotify/pspec.xml
sudo eopkg it -y spotify*.eopkg;sudo rm spotify*.eopkg

###############################################################################################
# NETWORK
###############################################################################################

# PCloud
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/download/pcloud/pspec.xml
sudo eopkg it pcloud*.eopkg;sudo rm pcloud*.eopkg

# Spideroak
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/download/spideroak/pspec.xml
sudo eopkg it spideroak*.eopkg;sudo rm spideroak*.eopkg

# Synology Cloud Station Drive
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/download/synology-cloud-station-drive/pspec.xml
sudo eopkg it synology-cloud-station-drive*.eopkg;sudo rm synology-cloud-station-drive*.eopkg

echo "fixing hardcoded icon"
old="Icon=\/opt\/Synology\/CloudStation\/images\/ico_72_cloud_station.png"
new="Icon=ico_72_cloud_station"
location="/usr/share/applications/synology-cloud-station-drive.desktop"
sudo sed -i s/$old/$new/g $location

# Teamviewer
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/util/teamviewer/pspec.xml
sudo eopkg it -y teamviewer*.eopkg;sudo rm teamviewer*.eopkg
sudo systemctl start teamviewerd.service

###############################################################################################
# OFFICE
###############################################################################################

# Mendeley Desktop
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/office/mendeleydesktop/pspec.xml
sudo eopkg it mendeleydesktop*.eopkg;sudo rm mendeleydesktop*.eopkg

# Moneydance
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/office/moneydance/pspec.xml
sudo eopkg it moneydance*.eopkg;sudo rm moneydance*.eopkg

# Scrivener
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/office/scrivener/pspec.xml
sudo eopkg it scrivener*.eopkg;sudo rm scrivener*.eopkg


# WPS office

sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/office/wps-office/pspec.xml
sudo eopkg it -y wps-office*.eopkg;sudo rm wps-office*.eopkg

###############################################################################################
# PROGRAMMING
###############################################################################################

# Android Studio
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/programming/android-studio/pspec.xml
sudo eopkg it android-studio*.eopkg;sudo rm android-studio*.eopkg

echo "fixing hardcoded icon"
old="Icon=\/opt\/android-studio\/bin\/studio.png"
new="Icon=android-studio"
location="/usr/share/applications/android-studio.desktop"
sudo sed -i s/$old/$new/g $location

# CLion
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/programming/clion/pspec.xml
sudo eopkg it clion*.eopkg;sudo rm clion*.eopkg

echo "fixing hardcoded icon"
old="Icon=\/opt\/clion\/bin\/clion.svg"
new="Icon=clion"
location="/usr/share/applications/clion.desktop"
sudo sed -i s/$old/$new/g $location

# Datagrip
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/programming/datagrip/pspec.xml
sudo eopkg it datagrip*.eopkg;sudo rm datagrip*.eopkg

echo "fixing hardcoded icon"
old="Icon=\/opt\/datagrip\/bin\/product.png"
new="Icon=datagrip"
location="/usr/share/applications/datagrip.desktop"
sudo sed -i s/$old/$new/g $location

# Git Kraken
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/programming/gitkraken/pspec.xml
sudo eopkg it -y gitkraken*.eopkg;sudo rm gitkraken*.eopkg

# IDEA
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/programming/idea/pspec.xml
sudo eopkg it -y idea*.eopkg;sudo rm idea*.eopkg

echo "fixing hardcoded icon"
old="Icon=\/opt\/idea\/bin\/idea.png"
new="Icon=idea"
location="/usr/share/applications/idea.desktop"
sudo sed -i s/$old/$new/g $location

# PHPStorm
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/programming/phpstorm/pspec.xml
sudo eopkg it phpstorm*.eopkg;sudo rm phpstorm*.eopkg

echo "fixing hardcoded icon"
old="Icon=\/opt\/phpstorm\/bin\/webide.png"
new="Icon=phpstorm"
location="/usr/share/applications/phpstorm.desktop"
sudo sed -i s/$old/$new/g $location

# Pycharm
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/programming/pycharm/pspec.xml
sudo eopkg it -y pycharm*.eopkg;sudo rm pycharm*.eopkg

echo "fixing hardcoded icon"
old="Icon=\/opt\/pycharm\/bin\/pycharm.png"
new="Icon=pycharm"
location="/usr/share/applications/pycharm.desktop"
sudo sed -i s/$old/$new/g $location


# Rubymine
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/programming/rubymine/pspec.xml
sudo eopkg it rubymine*.eopkg;sudo rm rubymine*.eopkg

echo "fixing hardcoded icon"
old="Icon=\/opt\/rubymine\/bin\/RMlogo.svg"
new="Icon=rubymine"
location="/usr/share/applications/rubymine.desktop"
sudo sed -i s/$old/$new/g $location

# Sublime Text 3
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/programming/sublime-text-3/pspec.xml
sudo eopkg it -y sublime*.eopkg;sudo rm sublime*.eopkg

# WebStorm
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/programming/webstorm/pspec.xml
sudo eopkg it webstorm*.eopkg;sudo rm webstorm*.eopkg

echo "fixing hardcoded icon"
old="Icon=\/opt\/webstorm\/bin\/webstorm.svg"
new="Icon=webstorm"
location="/usr/share/applications/webstorm.desktop"
sudo sed -i s/$old/$new/g $location

###############################################################################################
# SECURITY
###############################################################################################

# Enpass
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/security/enpass/pspec.xml
sudo eopkg it enpass*.eopkg;sudo rm enpass*.eopkg

###############################################################################################
# OTHER
###############################################################################################

# Google Earth
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/web/google-earth/pspec.xml
sudo eopkg it google-earth*.eopkg;sudo rm google-earth*.eopkg
