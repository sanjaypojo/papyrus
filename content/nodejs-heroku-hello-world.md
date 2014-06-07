# A NodeJS 'Hello World' Tutorial using Heroku

This tutorial expects you to know nothing. The idea is to quickly create a simple web page that says 'Hello World' when you visit it using NodeJS. In the process, you will learn how to use git (for version control), and Heroku (a great way to fool around as a developer).

### Pre-requisites
If you know how to browse folders and files in the command line, you're good to go. This tutorial is aimed at Linux / Mac OS X.

Most of the stuff works in windows to, but you'll need to figure out how to install git, and change the direction of the slashes and stuff :p

### Heroku
Think of heroku as a super convenient way to deploy your developer doodles and see them online. So first of you need to create a heroku account [here](http://heroku.com). Once you're done signing up, you'll be taken to your dashboard page. On this dashboard page, click on 'create a new app'. Give your app a name and create it. Once you do, you'll have a pop up like this ![](images/heroku-new-app.png)
This is very useful, so leave this tab open, and go to your command line. It's time to use git.

### Git
Git (or some form of version control), is very important in any developer's workflow. So you might as well start now. What is git? To really over simplify things, any folder on your computer can be version controlled by "git initializing" that folder. Once you do, git will track changes in that folder (which we shall now call a 'repository').

But that's not all. Git also has the ability to "push" this repository up to a "remote" server. And it has the ability to "pull" this repository down from a remote server and merge any changes between your local repository and this remote. So, basically, git allows you to track changes in your repository, push them up to the cloud, where someone else can then pull down this repository, make some changes and push it back up, and then you can pull down this new and updated repository. And it does a great job of merging stuff, making sure you don't lose your work etc. So you can imagine the power of git when you're working in a team.

But for today, we're just going to use git solo. Which means, no need to merge or do anything fancy. We're going to create a folder with our code. We're then going to use git to push this code to a "remote" server on Heroku. And as soon as you push stuff to heroku, it'll make it available at a url - `http://myappname.herokuapp.com`, so your hardwork is now visible on the web!

First off, check if git is already installed on your computer. Fire up terminal (or whatever shell you use) and run this.

    git --version

If git is installed, you'll get an output like this (the version number might be different, but you get the idea) - `git version 1.9.0`

If you don't have git, you can simply `sudo apt-get install git-core` on linux. On a mac, git comes installed by default, so the command above should work.

Now that git is installed, we need to create a folder for our new project. Give it a name of your choice and store it wherever you want to.

    cd /path/to/place/where/I/store/projects
    mkdir myNewProject

Now, we need to turn our project folder into a git repository

    cd myNewProject
    git init

You should get an output like this `Initialized empty Git repository in /path/to/project/projectName/.git/`

Now we have our repository ready. All we need to do now is write some code!

### Install Node
The best way to do this on a mac is to use [homebrew](http://brew.sh). So first install homebrew.

    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

Then install Node

    brew install node

On ubuntu, you can just do this

    sudo apt-get install nodejs

Check if your install worked

    node --version

That should output something like `v0.10.25`. Please note you might have to use `nodejs --version` in some cases.

### Your First Node server
Create a file in your repository and call it `web.js`
Now in this file, stick in this simple code.

    var http = require('http');

    var port = process.env.PORT || 5000;

    http.createServer(function (req, res) {
      res.writeHead(200, {'Content-Type': 'text/plain'});
      res.end('Hello World');
    }).listen(port);

    console.log('Server is running!');

Create another file in our repository and call it `Procfile`. Stick in this single line. This is basically an instruction to Heroku on how to run our node server.

    web: node app.js