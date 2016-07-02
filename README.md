# bond_server

# Run on your server
```
$ git clone https://github.com/ayemos/bond
$ cd bond
$ docker build -t bond .
$ docker run -p 3000:3000 bond
# Access http://{your docker ip}:3000
```

# Sample Endpoint
```
$ curl http://{your docker ip}:3000/invite
# You'll get a list of invite object(json).
```


# Dependency
See [Gemfile](https://github.com/ayemos/bond/blob/master/Gemfile)
