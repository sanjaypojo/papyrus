moment = require 'moment'

blogData =
  posts:
    [
        title: "Terminal Quick Tips for Mac"
        date: moment("2013-12-17")
        fileName: "terminalQuickTips"
        url: "terminal-quick-tips-for-mac"
        tags: ["developer", "terminal", "mac", "cheatsheet"]
        categories: ["Developer", "Terminal"]
        excerpt: "A cheatsheet full of terminal commands,
          from basic to bombastic and frequently updated."
      ,
        title: "Install PostgreSQL (version of choice) on a Mac"
        date: moment("2013-12-17")
        fileName: "brew-postgresql-version-of-choice-on-a-mac"
        url: "brew-postgresql-version-of-choice-on-a-mac"
        tags: ["developer", "postgres", "mac", "homebrew"]
        categories: ["Developer", "Installation"]
        excerpt: "Brewing your very own postgres version. Potent.
          You don't want to do this any other way!"
      ,
        title: "Setting up my webserver on a Cubietruck"
        date: moment("2014-01-21")
        fileName: "setting-up-my-web-server-on-a-cubietruck"
        url: "setting-up-my-web-server-on-a-cubietruck"
        tags: ["developer", "linux", "cubietruck", "node"]
        categories: ["Developer", "Hardware"]
        excerpt: "Running a webserver on my tiny PC on a board.
          Only because the cubietruck is useless as a media centre."
    ]

# Sort posts as most recent first
blogData.posts.sort (a,b) ->
  return b.date - a.date

module.exports = blogData