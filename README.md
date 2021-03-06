# Alpha Blog

This is a blog app\
I'm currently a Ruby/Rails app developer, this is my personal project when I was learn from Udemy Course: the-complete-ruby-on-rails-developer-course.

I followed RESTful conventions for my routes but since I was only utilizing certain functions, I added limitations to them.\
Users can only be showed.\
Stcoks can only be updated.\
It isn't full CRUD but enough to implement the user stories required. There’s also room to expand in the future to for the other CRUD features.

I expanded model: Comment, and RESTful for the routes. Guest can sign up and post the comment on each post.

## 1 Development tools

- Ruby 2.6.6

- Rails 5.2.4.1

- SQLite3

- User System

  - Active Model has_secure_password: gem 'bcrypt', '~> 3.1.7'
  - SessionsController, model User

- Layout: gem 'semantic-ui-sass'

- Development test: gem 'rspec-rails'

## 2 Installation

- git clone https://github.com/gorange310/chatout.git rails-folder
- cd chatout
- bundle install
- rails db:migrate
- rails db:migrate
- rails server
- http://localhost:3000/
- Login: username: "Robot1", password: "password"

## 3 table schema

![image](images/schema_ui.png)
