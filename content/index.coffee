moment = require 'moment'

blogData =
  posts:
    [
        title: "Install fonts on Ubuntu Server"
        date: moment("2016-03-07")
        fileName: "ubuntu-font-install"
        url: "ubuntu-font-install"
        tags: ["developer", "ubuntu", "fonts", "wkhtmltopdf"]
        categories: ["Developer", "Linux"]
        excerpt: "Because life be boring without typography."
      ,
        title: "The Food Ritual"
        date: moment("2014-08-27")
        fileName: "the-food-ritual"
        url: "the-food-ritual"
        tags: ["life", "india", "food", "traditions"]
        categories: ["Life", "India"]
        headerImage: "food-ritual.jpg"
        excerpt: "Finish that South Indian meal perfectly."
      ,
        title: "Coffeescript code guide"
        date: moment("2015-05-10")
        fileName: "coffee-code-conventions"
        url: "coffee-code-conventions"
        tags: ["developer", "coffeescript", "web", "JS", "code"]
        categories: ["Developer", "JS"]
        excerpt: "Coffeescript code conventions I try to use."
      ,
        title: "Clone Magento from Production to your Local Machine"
        date: moment("2014-08-05")
        fileName: "clone-magento-from-production"
        url: "clone-magento-from-production"
        tags: ["developer", "magento", "web", "MAMP", "PHP", "e-commerce"]
        categories: ["Developer", "Magento"]
        excerpt: "Eliminate all the vague problems you encounter
          when cloning your magento environment."
      ,
        title: "Linux Server Set Up - To Do List"
        date: moment("2014-06-09")
        fileName: "web-server-to-do-list"
        url: "web-server-to-do-list"
        tags: ["developer", "nginx", "web", "linux", "server"]
        categories: ["Developer", "Server"]
        excerpt: "You just got SSH access to your linux server.
          Now what?"
      ,
        title: "A NodeJS 'Hello World' Tutorial using Heroku"
        date: moment("2014-06-07")
        fileName: "nodejs-heroku-hello-world"
        url: "nodejs-heroku-hello-world"
        tags: ["developer", "javascript", "web", "nodejs", "tutorial"]
        categories: ["Developer", "JS"]
        excerpt: "Create a simple hello world web page
          that you can actually visit on your browser using NodeJS."
      ,
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
