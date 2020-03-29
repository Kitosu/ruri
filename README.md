# Ruri
Fixes by Kotypey

Ruri is a good alternative to pep.py

# How to run it?
Its simple just run

```git clone https://github.com/Kitosu/ruri```

```cd ./ruri```

```chmod +x build.sh```

```./build```

...now wait till its finished building ruri...

configure ruri by using
```nano ./ruri/config.json```

and start ruri with
```cd ./ruri && ./ruri```

now you only have to add this to your nginx configuration file 

```Ruri
server {
    listen 127.0.0.1:5001;
    location / {
        proxy_pass http://unix:/tmp/ruri.sock:/;
    }
}

server {
    listen 127.0.0.1:5002;
    location / {
        proxy_pass http://unix:/tmp/aria.sock:/;
    }
}```
