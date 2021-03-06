quip = require 'quip'
connect = require 'connect'
papyrus = require './app/index'
app = connect()

global.__sRoot = __dirname

app
  .use connect.logger('tiny')
  .use connect.static(__dirname + '/static/')
  .use papyrus.security.limit(2)
  .use quip
  .use papyrus.router
  .use papyrus.router404

app.listen(4000)