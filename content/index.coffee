moment = require 'moment'

blogData =
  posts:
    [
        title: "Javascript Cheatsheet"
        date: moment("2014-04-04")
        fileName: "javascript-types-cheat-sheet"
        url: "javascript-types-cheat-sheet"
        tags: ["developer", "javascript", "web", "nodejs", "cheatsheet"]
        categories: ["Developer", "JS"]
        excerpt: "A detailed cheatsheet that covers the
          nitty-gritties of the 6 types of values in javascript."
      ,
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
      ,
        title: "Buy Air or New Gen Pro. Don't get trapped in the middle."
        date: moment("2012-07-02")
        fileName: "macbook-pro-retina-2012"
        url: "macbook-pro-retina-2012"
        tags: ["apple", "macbook", "macbook air", "macbook pro retina"]
        categories: ["Apple", "Hardware"]
        excerpt: "My take on Apple's new product line (2012).
          SSD is the way to go my friends!"
      ,
        title: "Postgres Cheat Sheet"
        date: moment("2014-03-11")
        fileName: "postgres-cheat-sheet"
        url: "postgres-cheat-sheet"
        tags: ["database", "postgres", "postgresql", "cheatsheet", "postgres 9.x"]
        categories: ["Developer", "Database"]
        excerpt: "A quick reference to postgreSQL 9.x syntax"
      ,
        title: "Setting up my Mac for development - 1"
        date: moment("2013-12-29")
        fileName: "setting-up-my-mac-for-development-1"
        url: "setting-up-my-mac-for-development-1"
        tags: ["mac", "development", "set up", "web development", "sublime text", "homebrew"]
        categories: ["Developer", "Set Up"]
        headerImage: "header-macSetup.jpg"
        excerpt: "Getting started with development on your Mac.
          Homebrew and Sublime Text to the rescue!"
    ]

# Sort posts as most recent first
blogData.posts.sort (a,b) ->
  return b.date - a.date

module.exports = blogData