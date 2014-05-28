renderJade = require './renderJade'
hljs = require 'highlight.js'
marked = require 'marked'
fs = require 'fs'

marked.setOptions(
  renderer: new marked.Renderer(),
  gfm: false,
  tables: true,
  breaks: false,
  pedantic: false,
  sanitize: true,
  smartLists: true,
  smartypants: false,
  highlight: (code) ->
    return hljs.highlightAuto(code).value
)

# Relies on existence of quip in middleware
# Relies on a response object
# Relies on correctly defining the path

module.exports = (res, fileName, postData) ->
  fs.readFile 'content/'+ fileName + '.md', 'utf8', (err, mdContent) ->
    if err
      console.error 'File read failed', err
    renderedMarkdown = marked(mdContent)
    renderJade(
      res,
      'post',
      renderedMarkdown: renderedMarkdown
      post: postData
    )