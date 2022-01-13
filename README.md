# README

# Event App Project
In which we create an event for a specific speaker. In which we used devise and RSpec gem.

### Clone the repository

```shell
git clone https://github.com/ror-vs/event_app.git
cd event_app
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 3.0.0`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv) (it could take a while):

```shell
rbenv install 3.0.0
```

### Check your Rails version

```shell
rails -v
```

The ouput should start with something like `Rails 7.0.1`


### Install Postgres for database

```shell
See [Postgres](https://www.postgresql.org/download/)
```


### Install dependencies

Using [Bundler](https://github.com/bundler/bundler)

```shell
bundle install
```

### Set Master key

Go to the app -> config and create a file master.key

Add key in file:

````xxxxxxxxxxxxxxxx2311ds````


### Set DataBase credential
Go to the app -> config -> database.yml
If **database.yml** file not exist then first create it.

```shell
 default: &default
  adapter: postgresql
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  timeout: 5000
  username: postgres_username
  password: postgres_password
  host: localhost
  port: 5432

development:
  <<: *default
  database: db_name_for_development
test:
  <<: *default
  database: db_name_for_test

production:
  <<: *default
  database: db_name_for_production
  ```

See [config/application.yml.sample](https://github.com/juliendargelos/project/blob/master/config/application.yml.sample) and contact the developer: [contact@juliendargelos.com](mailto:contact@juliendargelos.com) (sensitive data).

### Initialize the database

```shell
rails db:create db:migrate db:seed
```

## Serve
Start server with this command:
```shell
rails s
```

## Rspec for Test Cases
Test case run with this command

```shell
rspec
```
# event_app
