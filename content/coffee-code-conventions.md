# Coffeescript code conventions I try to use

## Strings
Always use double quoted strings and interpolation. No ugly `+` symbols anywhere. Single quotes **only** used when the string contains double quotes.

```coffee
string = "Interpolation is awesome. 1+1 = #{1+1}"
```

## Function calls
Avoid parentheses whenever possible, but use parentheses when making chained calls in a single line

```coffee
pyramid = constructTriangle(4,4,4).grow3D(4)

store.fetch "PATCH", {table: true}, (err, response) ->
  if err
    return
  else
    table.update response
```

## Existential Operator
Always use the existential operator

```coffee
if response?.rows[0]?.success
  table.update response.rows[0]
```
