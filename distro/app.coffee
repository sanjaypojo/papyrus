quip = require 'quip'
connect = require 'connect'
sqlite3 = require 'sqlite3'
sequelize = require 'sequelize'
papyrus = require './app/index'
app = connect()

app
  .use connect.logger('tiny')
  .use connect.static(__dirname + '/static/')
  .use papyrus.security.limit(2)
  .use quip
  .use '/admin', papyrus.admin
  .use papyrus.router
  .use papyrus.router404

app.listen(4000)