# Limit request size to prevent flood attacks
exports.limit = (megabytes) ->
  maxLength = megabytes*1000000
  return (req, res, next) ->
    req.on 'data', (data) ->
      if data.length > maxLength
        req.connection.destroy()
    next()