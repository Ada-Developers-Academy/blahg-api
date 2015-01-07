# Blahg API

Installation
------------

First [install MongoDB](http://docs.mongodb.org/manual/tutorial/install-mongodb-on-os-x/)

```bash
brew update
brew install mongodb
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
# Check if installation was successful
# If an interactive mongo shell opens, then it is
mongo
exit
```

Next, clone the app and run it locally:

```bash
git clone git@github.com:Ada-Developers-Academy/blahg-api.git
cd blahg-api
```
