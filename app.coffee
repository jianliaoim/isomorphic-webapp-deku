
express = require 'express'
React = require 'react'
configs = require './src/configs'
path = require 'path'

{renderString, tree, element} = require 'Deku'

html = require './src/html'
Alpha = require './src/component/alpha'
Beta = require './src/component/beta'


items = ['abc', 'efg']

app = express()

app.get '/page/alpha', (req, res) ->
  data =
    production: configs.production
    title: 'alpha'
    body: renderString (tree element(Alpha, items))
    common: configs.common
    main: configs.alpha
    style: configs.style
  res.end (html data)

app.get '/page/beta', (req, res) ->
  data =
    production: configs.production
    title: 'beta'
    body: renderString (tree element(Beta))
    common: configs.common
    main: configs.beta
    style: configs.style
  res.end (html data)

app.get '/api/new',   (req, res) ->
  if req.query.text?
    items.push req.query.text

  res.end('success')

app.use '/build', express.static path.join __dirname, 'build'

app.listen 3000
console.log 'listen at localhost:3000'
