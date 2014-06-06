#!/bin/bash

shopt -s nullglob

mountpoint=$1
to_delete=(
"${mountPath}"/Library/Updates/*
"${mountPath}"/Library/QuickLook/iWork.qlgenerator
"${mountPath}"/private/var/db/dyld/*
"${mountPath}"/private/var/folders/*
"${mountPath}"/usr/share/man/*
"${mountPath}"/usr/share/emacs
"${mountPath}"/usr/share/vim
"${mountPath}"/usr/share/gutenprint
"${mountPath}"/usr/share/cups
"${mountPath}"/usr/share/doc
"${mountPath}"/usr/lib/mecab/dic
"${mountPath}"/System/Library/Address\ Book\ Plug-Ins/*
"${mountPath}"/System/Library/Automator/*
"${mountPath}"/System/Library/Speech/*
"${mountPath}"/System/Library/User\ Template/*
"${mountPath}"/System/Library/Caches/*
"${mountPath}"/System/Library/Screen\ Savers/*
"${mountPath}"/System/Library/CoreServices/"Setup Assistant.app"/Contents/Resources/TransitionSection.bundle/Contents/Resources/intro.mov
"${mountPath}"/System/Library/CoreServices/"Setup Assistant.app"/Contents/Resources/TransitionSection.bundle/Contents/Resources/intro-sound.mp3
"${mountPath}"/System/Library/CoreServices/Front\ Row.app
"${mountPath}"/System/Library/CoreServices/RawCamera.bundle
"${mountPath}"/usr/X11
"${mountPath}"/usr/libexec/cups
"${mountPath}"/usr/lib/podcastproducer
"${mountPath}"/System/Library/Input\ Methods/CharacterPalette.app
"${mountPath}"/System/Library/Input\ Methods/ChineseHandwriting.app
"${mountPath}"/System/Library/Input\ Methods/InkServer.app
"${mountPath}"/System/Library/Input\ Methods/50onPaletteServer.app
"${mountPath}"/System/Library/Input\ Methods/KoreanIM.app
"${mountPath}"/System/Library/Input\ Methods/Kotoeri.app
"${mountPath}"/System/Library/Input\ Methods/PluginIM.app
"${mountPath}"/System/Library/Input\ Methods/SCIM.app
"${mountPath}"/System/Library/Input\ Methods/TamilIM.app
"${mountPath}"/System/Library/Input\ Methods/TCIM.app
"${mountPath}"/System/Library/Input\ Methods/VietnameseIM.app
"${mountPath}"/System/Library/CoreServices/Encodings/*
"${mountPath}"/System/Library/Frameworks/XgridFoundation.framework
"${mountPath}"/private/var/log/*
"${mountPath}"/Library/Internet\ Plug-Ins/NP-PPC-Dir-Shockwave
"${mountPath}"/Library/Internet\ Plug-Ins/flashplayer.xpt
"${mountPath}"/Library/Internet\ Plug-Ins/Flash\ Player.plugin
"${mountPath}"/Library/Perl
"${mountPath}"/Library/Receipts/*
"${mountPath}"/usr/bin/php
"${mountPath}"/Library/Application\ Support/*
"${mountPath}"/Library/Audio/*
"${mountPath}"/Library/Caches/*
"${mountPath}"/Library/Compositions/*
"${mountPath}"/Library/Desktop\ Pictures/*
"${mountPath}"/Library/Developer/*
"${mountPath}"/Library/Dictionaries/*
"${mountPath}"/Library/Documentation/*
"${mountPath}"/Library/Fonts/*
"${mountPath}"/Library/iTunes
"${mountPath}"/Library/Logs
"${mountPath}"/Library/Modem Scripts
"${mountPath}"/Library/PDF Services
"${mountPath}"/Library/Scripts
"${mountPath}"/Library/Spotlight
"${mountPath}"/Library/User\ Pictures/*
"${mountPath}"/Library/WebServer/*
"${mountPath}"/Library/Widgets/*
"${mountPath}"/usr/bin/emacs
"${mountPath}"/usr/bin/emacs-undumped
"${mountPath}"/System/Library/Speech/*
"${mountPath}"/Library/Application\ Support/*
"${mountPath}"/Library/Printers/*
"${mountPath}"/Library/Image\ Capture/*
"${mountPath}"/System/Library/Caches/*
"${mountPath}"/private/var/vm/sleepimage
"${mountPath}"/private/var/vm/swapfile*
${mountPath}"
)

for item in "${to_delete[@]}"; do
rm -rfv "${item}"
done

sudo find {mountPath}/Applications/* -d 0 ! -name "Launchpad.app" !! -name "Safari.app" ! -name "System Preferences.app" ! -name "TextEdit.app" -exec rm -rf {} \;

sudo find {mountPath}/Applications/Utilities/* -d 0 ! -name "Activity Monitor.app" ! -name "Console.app" ! -name "Disk Utility.app" ! -name "Grab.app" ! -name "System Information.app" ! -name "Terminal.app" ! -name "Utilities" -exec rm -rf {} \;

sudo find {mountPath}/System/Library/PreferencePanes/* 0-d 0 ! -name "DateAndTime.prefPane" ! -name "Displays.prefPane" ! -name "Network.prefPane" ! -name "SharingPref.prefPane" ! -name "StartupDisk.prefPane" -exec rm -rf {} \;
