# Welcome to SamuraiCRM Rails 6 by TANHONGIT

It’s not super long but comes with a lot of ‘underground’ information about engines. If you’re
about to write a modular application, then you should definitely read it.

The goal is to teach you how to build your own modules and at the end of the road, create
complete modular applications.

# Demo

You can try it at https://railssamuraicrm.herokuapp.com/

> **_Account login on Backend_**

```
user :
    username: admin@gmail.com     | password: 123456
```

# 1. Technology
- Ruby on Rails

# 2. Configuration requirements
We are going to build the web application using:
- Rails 6.0.3.2
- Ruby 2.7.1

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

You must change the **username, password and database name** accordingly!

### 4.5. run rails db:migrate

```
$ rails db:migrate
```

After running the above command, if you get an error: "**LoadError: cannot load such file -- autoprefixer-rails**", try running the install command below in the console screen:

```
$ gem install autoprefixer-rails
```

Then run the "**rails db:migrate**" command again.


### 4.6. Run server 

```
$ rails s
```

Now, go to http://localhost:3000/

### 4.6. Create new user

http://localhost:3000/users/sign_up and create a new user account.

### 4.6. Set the user to admin

Open new terminal and run:

```
$ rails c
```

Paste this command line and run

```
Samurai::User.first.update_column :admin, true
```

Now go to http://localhost:3000/admin and login your account.

See also: Samurai version using rails 5.1.7 in combination with ruby ​​2.6.3: [SamuraiCRM_ruby2_6_3_rails5_1_7](https://github.com/TanHongIT/SamuraiCRM/tree/master/SamuraiCRM_ruby2_6_3_rails5_1_7)
