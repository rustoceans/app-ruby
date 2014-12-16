# App Rails

App Rails is a experimental application to do authentication of users, multiple uploads files, study case, relationchips models (user, files, picture), so on.

In resume, studies case as follows:
  - Commands - Basic commands of rails and Rake;
  - Migrations;
  - Models;
  - Security;
  - Routes;
  - Templates and Helpes

The bibliographic references to building this application was a [book] about Rails, [support documentation] of Rails and [Stackoverflow]. I also have a book [Cucumber e RSpec] about TDD with Rails and [Ruby book] but I still don't read it.

### Rails Version
4.1.8

### Tools

I worked with:

* [Cloudinary] - Cloud-base services!
* [Slap Editor] - awesome terminal-based text editor
* [Heroku] - a super cloud application platform
* [Twitter Bootstrap] - great UI boilerplate for modern web apps
* [Carrierwave] - a Gem to upload files
* [Git] - for control version
* [jQuery] - duh

You can view the result [here].

### Installation

You need to use the Ruby enVironment Manager - RVM. Install the lib buid-essential and others dependencies:

```sh
$ sudo apt-get install build-essential 
$ sudo apt-get install libreadline-dev libssl-dev curl libsqlite3-dev
```
And run:
```sh
$ curl -L get.rvm.io | bash -s stable --rails
$ source $HOME/.rvm/scripts/rvm
```
Clone this repository:
```sh
$ git clone https://github.com/alexfalcucc/app-ruby.git
$ cd app-ruby
```
Install plugins:
```sh
$ bundle install
```
Create and migrate your database:
```sh
$ rake db:create db:migrate
```
Run the application:
```sh
$ rails runserver
```
That's all. See you!

License
----

MIT

**Free Software**

[Heroku]:https://www.heroku.com
[book]:http://www.casadocodigo.com.br/products/livro-ruby-on-rails
[Slap Editor]:https://github.com/slap-editor/slap
[support documentation]:http://api.rubyonrails.org/
[Stackoverflow]:http://stackoverflow.com/
[Twitter Bootstrap]:http://twitter.github.com/bootstrap/
[Git]:http://git-scm.com/
[jQuery]:http://jquery.com
[Ruby book]:http://www.casadocodigo.com.br/products/livro-ruby
[Cucumber e RSpec]:http://www.casadocodigo.com.br/products/livro-cucumber-rspec-tdd-bdd
[Cloudinary]:http://cloudinary.com/
[Carrierwave]:https://github.com/carrierwaveuploader/carrierwave
[here]:http://alex-railsapp.herokuapp.com/
