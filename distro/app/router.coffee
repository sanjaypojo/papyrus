renderJade = require './renderJade'
renderMD = require './renderMarkdown'
fs = require 'fs'
moment = require 'moment'

blog = require '../content/index'

module.exports = (req, res, next) ->
  parsedUrl = req.url.split '/'
  if req.method is 'GET'
    if parsedUrl[1] is ''
      renderJade res, 'home', {posts: blog.posts}
      return
    for post in blog.posts
      if parsedUrl[1] is post.url
        renderMD res, post.fileName, post
        return
  next()

