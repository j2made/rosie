# Clean Slave

I abuse my computer: constantly installing things, never really cleaning up, failing
to remember to repair disc permissions. I treat it like the slave it is.

On occasion, I treat the bleep blop machine to a nice cleaning - by wiping it entirely.
On such an occastion, this repo provides a simple way to get back to basics in terms
of the apps and scripts I need for development.

If this helps you, cool. If not, whatever. It's not your computer anyhow.

# Installations

## Git

Open Terminal, run `git`. Install will take place.

Create an ssh key: https://help.github.com/articles/generating-ssh-keys/

Clone this repo to `dev/assets/github/clean-slave`.
```
cd ~/dev/assets/github/clean-slave
```


## Homebrew

Run `brew-time.sh` in this repo. It installs the following:

#### Binaries
- [nvm](https://github.com/creationix/nvm)
- [ffmpeg](http://ffmpeg.org/)

#### Applications
- [Google Chrome](https://www.google.com/chrome/browser/desktop/)
- [Firefox](https://www.mozilla.org/en-US/firefox)
- [MAMP](https://www.mamp.info/en/)
- [Sublime Text 3](http://www.sublimetext.com/)
- [Transmit](https://panic.com/transmit/)
- [Dropbox](https://www.dropbox.com/)
- [Slack](https://slack.com/)
- [AppCleaner](http://www.freemacsoft.net/appcleaner/)
- [Transmission](http://www.transmissionbt.com/)

#### Fonts
- [Inconsolata](http://www.levien.com/type/myfonts/inconsolata.html)
- [Droid Sans Mono](https://www.google.com/fonts/specimen/Droid+Sans+Mono)

## bash_profile
Copy the `.bash_profile` in this repo to root:
```
cp -i .bash_profile ~/.bash_profile
```

## Sublime Text
To open Sublime from Terminal, open terminal and run:
```
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime
```
Bash profile contains alias `sublime` which allows you to open your current directory using `sublime .`

Sync settings from Dropbox (just make sure to setup Dropbox first):
```
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
rm -r User
ln -s ~/Dropbox/Shaun/Dev/Sublime/User
```


## NVM
NVM is installed via homebrew to make like easier. To get the latest verison up and running and set to default:
```
nvm install stable
nvm use stable
nvm alias default stable
```

## NPM
Install [Gulp](http://gulpjs.com/), [Bower](http://bower.io/):
```
npm install --global gulp
npm install -g bower
```

## Composer
Install [Composer](https://getcomposer.org):
```
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
```







