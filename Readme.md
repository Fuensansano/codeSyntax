# Setup
```
docker-compose up --build
docker-compose run --rm kata bash
docker-compose run --user nobody --rm kata bash
bundle install
rspec --init
rspec
```

```
chown -R $USER:$USER spec
```
