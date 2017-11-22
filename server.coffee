"use strict"

express = require "express"
bodyParser = require "body-parser"
_ = require "underscore"
PORT = process.env.PORT || 3000

startServer = ->
 books = [
  {id:"1", title:"Moby Dick", author:"Herman Melville"}
 ]

 removeBook = (req) ->
  {id} = req.params
  _.reject(books, (it) -> it.id is id)

 router = express.Router()
 router.use express.static "public"
 router.use bodyParser.json()
 router.use bodyParser.urlencoded
  extended:true

 router.get "/", (req, res) ->
  res.render "index"

 router.get "/books", (req, res) ->
  res.json(books)

 router.get "/books/:id", (req, res) ->
  {id} = req.params
  res.json(_.find(books, (it) -> it.id is id))

 router.post "/books", (req, res) ->
  books.push req.body
  res.end()

 router.put "/books/:id", (req, res) ->
  books = removeBook(req)
  books.push req.body
  res.end()

 router.delete "/books/:id", (req, res) ->
  books = removeBook(req)
  res.end()

 server = express()
 server.use "/", router
 server.set "view engine", "pug"

 server.listen PORT, ->
  console.log "Listening on port #{PORT}"

module.exports = ->
 startServer()
