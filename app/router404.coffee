module.exports = () ->
  return (req, res, next) ->
    res.ok('<h1>Bonjour</h1>')