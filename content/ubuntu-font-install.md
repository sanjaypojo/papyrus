# Install fonts on Ubuntu Server

I'm using wkhtmltopdf to generate PDF reports server side. While everyone uses
complicated techniques like base64 encoding fonts and what not to use custom
fonts in wkhtmltopdf, it turns out that the simplest way to actually use custom
fonts is to install said fonts in your operating system. On a Mac, you simply
open the font using Font book. What about an Ubuntu server?

Turns out it's super easy.
1. Copy the font folder to the home directory on your server.
2. Copy the font folder into the system fonts folder
```sh
	sudo cp -R ~/funky-font /usr/share/fonts/truetype/
```
3. Cache them fonts and use them like a boss
```sh
	sudo fc-cache -f -v
```

This works perfectly with wkhtmltopdf, tested on an ubuntu 14.04 server.
