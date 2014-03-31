renderJade = require './renderJade'
renderMD = require './renderMarkdown'
fs = require 'fs'

data = fs.readFileSync 'content/index.json', 'utf8'
blog = JSON.parse data

module.exports = (req, res, next) ->
  parsedUrl = req.url.split '/'
  if req.method is 'GET'
    if parsedUrl[1] is '' || 'home'
      renderJade res, 'home', {posts: blog.posts}
      return
    for post in blog.posts
      if parsedUrl[1] is post.url
        renderMD res, post.fileName
        return
  next()

