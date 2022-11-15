# test-app-with-docker

## Create new app

Execute the commands in app root directory.

```sh
docker-compose run web rails new . --force --database=postgresql
sudo chown -R $USER:$USER .
docker-compose build
```

Edit config/database.yml for setting username and password.  
e.g.
```yml
default: &default
  adapter: postgresql
  encoding: unicode
  host: db
  username: postgres
  password: password
  pool: 5

development:
  <<: *default
  database: myapp_development

test:
  <<: *default
  database: myapp_test
```

Execute the command in app root directory.

```sh
docker-compose run web rake db:create
```

### Run app

```sh
docker-compose up -d
```

### Exit app

```sh
docker-compose down
```

## After updating Gemfile or Dockerfile

```sh
docker-compose build
```
