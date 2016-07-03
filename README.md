# bond_server

Backend API server for [bond](https://github.com/smurakami/AlibabaClient) build with Rails::API.

# Run on your server
```
$ git clone https://github.com/ayemos/bond
$ cd bond
$ docker build -t bond .
$ docker run -p 3000:3000 bond
# Access http://{your docker ip}:3000
```

:innocent:

# Sample Endpoint
```
$ curl http://{your docker ip}:3000/invite
# You'll get a list of invite object(json).
```


# Dependency
See [Gemfile](https://github.com/ayemos/bond/blob/master/Gemfile)

# Architecture
```
┌────────────────────────────┐      ┌──────────────────┐
│ @eddie (Alibaba Cloud ECS) ◀──────▶ ApsaraDB (mysql) │
│      ┌──────────────┐      │      └──────────────────┘
│      │    Docker    │      │                          
│      │┌────────────┐│      │                          
│      ││bond_server ││      │                          
│      ││ (RailsAPI) ││      │                          
│      │└────────────┘│      │                          
│      └───┬──────┬───┘      │                          
│          │:3000 │          │                          
│      ┌───┴──────┴──┐       │                          
│      │    nginx    │       │                          
│      └───┬──────┬──┘       │                          
│          │ :80  │          │                          
│     ┌────┴──────┴─────┐    │                          
└─────┤alibaba.ayemos.me├────┘                          
      │ (47.88.xxx.yyy) │                               
      └────────▲────────┘                               
               │                                        
       ┌───────┴───────┐                                
       │ bond_app(iOS) │                                
       └───────────────┘                                
```
