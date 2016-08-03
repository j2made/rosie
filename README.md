# Rosie – The Robot Maid

Forked from [@iamhexcoder](https://github.com/iamhexcoder)

# Installations

## Git

Open Terminal, run `git`. Install will take place.

Create an ssh key: https://help.github.com/articles/generating-ssh-keys/

Clone this repo and cd into it's directory

Run it with `.rosie.sh`


## Homebrew

Run `brew-time.sh` in this repo. It installs the following:

#### Binaries
- [nvm](https://github.com/creationix/nvm)
- [ffmpeg](http://ffmpeg.org/)

#### Applications
- [Google Chrome](https://www.google.com/chrome/browser/desktop/)
- [1Password](https://1password.com/)
- [Firefox](https://www.mozilla.org/en-US/firefox)
- [MAMP](https://www.mamp.info/en/)
- [Atom](https://atom.io/)
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
