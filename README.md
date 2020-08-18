# 4. Runing

### 4.1. Clone Repo

```
$ git clone https://github.com/TanHongIT/SamuraiCRM
$ cd SamuraiCRM
```

### 4.2. Bundle Install 

```
$ bundle install
```

### 4.3. Yarn Install 

```
$ yarn install
```

### 4.4. Create database with Postgresql

You must change the appropriate database configuration

Change configuration at _"**config/database.yml**"_ with Postgresql.

```ruby
default: &default
  adapter: postgresql
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  timeout: 5000
  username: rails6_samurai_crm
  password: 1974
  host: localhost

# tutorial for ubuntu linux:
# sudo -u postgres psql
# create user "rails6_samurai_crm" with password '1974';  
# create database "rails6_samurai_crm" owner "rails6_samurai_crm"; 

development:
  <<: *default
  database: rails6_samurai_crm

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  <<: *default
  database: rails6_samurai_crm_test

production:
  <<: *default
  database: rails6_samurai_crm_production
```

You must change the **username, password and database** name accordingly!

### 4.5. run rails db:migrate

```
$ rails db:migrate
```

If you get an error: "**LoadError: cannot load such file -- autoprefixer-rails**". Try running the install command below in the console screen:

```
$ gem install autoprefixer-rails
```

