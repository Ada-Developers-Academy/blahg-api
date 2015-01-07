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
bundle
rails server
```

Deploy
------

```bash
heroku create <name-of-app>
heroku addons:add mongolab:sandbox
```

Usage
-----

### `GET /posts`
Returns an array of Posts
```json
[
  {
    "id":"54ad706827814565ee000001",
    "tag_ids":[],
    "title":"blah",
    "date":
  }
]
```
### `POST /posts`
### `DELETE /posts/:id`
### `POST /posts/:post_id/tags`
### `DELETE /posts/:post_id/tags/:id`
### `GET /tags`
### `GET /tags/:id`
### `POST /tags`
### `DELETE /tags/:id`
