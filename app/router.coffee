renderJade = require './renderJade'

module.exports = () ->
  return (req, res, next) ->
    renderJade res, 'admin'