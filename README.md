# Todos API
 [![license](https://img.shields.io/github/license/mashape/apistatus.svg)]() 
Languages : Ruby, Framework : Rails
Basic API JSON with Authenticate Knock 

# Pre
    Ruby version 2.5.0 or higher
    Postgresql
    Bundler
    Rails

# Gem
- [knock](https://github.com/nsarno/knock) - Authenticate with JWT for Rails API
- [bcrypt](https://github.com/codahale/bcrypt-ruby) - Password digest so that Your password will become a Hash
- [active_model_serializers](https://github.com/rails-api/active_model_serializers) -
- [rack-cors](https://github.com/cyu/rack-cors) - Cross Origin Resource Sharing
- [jwt](https://github.com/jwt/ruby-jwt) - Authenticate Token

# Run Local
  
    git clone <url repo> | Clone this repo
    bundle install | Install gem
    rake db:create | Create database
    rake db:migrate | Create migration
    rails server | Running rails server in localhost
    running at http://localhost:3000

# Run Local Rubocop
  
  
    bundle exec rubocop <your_file> [options]
    [options] : Auto Correct = -a
                Rails-intensive = -R
    

# Run Local Manual Test to the API
    GET /users
    http :3000/users
    POST /users/create
    http POST :3000/todos email = refiqi@example.com, password = password, username = refiqi
    PATCH /user/:id
    http PATCH :3000/user/1 username = Fadila
    DELETE /user/:id
    http DELETE :3000/user/1

# Run Local Manual Generate Auth Token with Postman
 - Create an User at POST users/create
 - POST your email & password in POST localhost:3000/user_token
 - Copy the jwt response without the /""/(quote marks) and paste that to the header with key Authorization and the value Bearer (Your jwt Response)
 - Congrats! Now you have an Authorized user

# Author
Refiqi Muhamad Fadila | refyfadhila96@gmail.com