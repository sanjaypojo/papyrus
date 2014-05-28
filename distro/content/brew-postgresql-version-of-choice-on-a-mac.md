# Install PostgreSQL (version of choice) on a Mac

## Installation
1. First of all, you need to install brew.

        ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

2. *Optional*: You need to add the brew versions tap so that you can get the formula for the specific version of postgres.
        brew tap homebrew/versions

3. Choose the formula corresponding to the version of postgres that you want - in my case postgresql 9.1. Then run the install command.
        brew install postgresql91

## Running the server
#### Initialize the database
This only needs to be done once (the first time you install postgres with brew).

    initdb /usr/local/var/postgres -E utf8

#### Create a *postgres* user
Brew does not create a superuser called *postgres*, instead, it makes the current user a superuser. If this don't work for you, you can run this

    createuser -d -P postgres

#### Start Server
This be the command to start the server. You can then make databases, tables and other wild code animals.

    pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start

#### Stop Server
This stops your server. Useful when things get sluggish, no?

    pg_ctl -D /usr/local/var/postgres stop -s -m fast

## Interacting with postgres
Get started. If you created a *postgres* user then use this.

    sudo -U postgres psql

If you didn't you can just use this.

    psql postgres