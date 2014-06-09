# Linux Server Set Up - To Do List

Just quickly jotting down everything I do to secure my server and make it awesome. I primarily use NodeJS and nginx on my servers, so expect a bias. I like to automagically push changes to my server using git, so that stuff is included too.

This tutorial assumes you have root access (via SSH) to your server. A Digital Ocean droplet for example.

### A New User
I always do these 5 things immediately. Don't skip 4, or you might get locked out!
1. Create a new user
2. Give the user sudo access
3. Add SSH keys for easy log in
4. Test login (using both SSH and password)
5. Disable root access (using password) to the server

Create a new user by typing this (as long as you're signed in as root):

    adduser myUserName

You'll be asked a bunch of questions and guided through the process (including passwords etc.)

Once we've done that, we need to give the user sudo access. Use the below command to do that.

    visudo

Search for a line which looks like `root    ALL=(ALL:ALL) ALL`. Append a new line below it with the user you just created.

    root        ALL=(ALL:ALL) ALL
    myUserName  ALL=(ALL:ALL) ALL

Save changes, and `myUserName` now has sudo access rights! For more details, visit [this tutorial](https://www.digitalocean.com/community/articles/how-to-add-and-delete-users-on-an-ubuntu-14-04-vps)

Next up, we need to add ssh keys to this user, so that we can log on password free. This is quite straightforward. If you don't have SSH keys generated, checkout [this tutorial](https://www.digitalocean.com/community/articles/how-to-set-up-ssh-keys--2). Otherwise, all you need to do is copy your public key and paste it into the `/home/myUserName/.ssh/authorized_keys`. We can acheive this using these commands.

First create a `.ssh` folder in the remote server

    cd /home/myUserName
    mkdir .ssh

Then run this on your local machine to copy the public key and paste it on the server. On a mac, the path is `~/.ssh/id_rsa.pub`

    cat /path/to/local/public/key | ssh root@xyz.xyz.xyz.xyz "cat >> /home/myUserName/.ssh/authorized_keys"

Now test if it all worked `ssh myUserName@xyz.xyz.xyz.xyz`. You should be able to login password free. Once you do, make sure these permissions are correct too.

    chmod 700 ~/.ssh
    chmod 600 ~/.ssh/authorized_keys

The last step is disabling root access using passwords on the server. To do this, we simply modify the SSH configuration file to permit root login only via SSH.

    sudo nano /etc/ssh/sshd_config

Change this line from `PermitRootLogin yes` to `PermitRootLogin without-password`. Then run `reload ssh`.