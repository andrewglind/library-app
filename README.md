## Library App

This is a simple [Backbone.js](http://backbonejs.org) app. I have been wanting to build an app using Backbone.js for some time and finally got around to it.

Also took the opportunity to write the JS code using CoffeeScript, and it turned out well.

I like the "automatic" mapping of models/collections to REST methods, I found this to be a very intuitive. And using [Underscore.js](http://underscorejs.org) templates for views was nice and fast.

To play around with this you need [Node.js](http://nodejs.org) installed. Then install dependencies using NPM:

`npm install -g coffeescript`

`npm install`

To run the app:

`./main.coffee` or `coffee main.coffee`

The app will start on port 3000 by default, you can change this however:

`PORT=3001 ./main.coffee` or `PORT=3001 coffee main.coffee`
