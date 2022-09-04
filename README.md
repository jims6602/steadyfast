# steadyfast

# Steady Fast

* # Ruby version

    ruby 2.4.4p296 (2018-03-28 revision 63013) [x86_64-linux]

* # System dependencies

* # Composite Primary Keys 

Add the following line of code to your Gemfile to install Composite Primary Keys for Active Records      
     
```
# https://www.rubydoc.info/gems/composite_primary_keys/8.1.1
gem 'composite_primary_keys'
```
<project_name>/Gemfile

Then install all of the gem files by running the follow command

```
bundle install 
```

[rubydoc](https://www.rubydoc.info/gems/composite_primary_keys/8.1.1)   
[mymyoji's blog](https://blog.mmyoji.com/posts/2019-06-07-discard-composite-primary-keys-in-rails/) 


* # Configuration

Make sure your in the project folder before running any of the following commands.

```
$ cd web-rails-simple/
```


##### Scaffold

```
$ rails generate scaffold Dictionary 
        word:string 
        partOfSpeech:string 
        definition:string 
        wordUsage:string 

$ rails generate scaffold User 
        firstName:string 
        lastName:string 
        rights:string

$ rails generate scaffold Correctness 
        dictionary:references 
        user:references 
        totalTryCount:integer 
        rightCount:integer

```

* # Database initialization

[db/seeds](https://github.com/cusey/steadyfast/blob/master/db/seeds.rb)

```
$ rake db:migrate

$ rake db:seed
```

*  # Rails Console 

## Starting Console

```
$ rails console

Running via Spring preloader in process 576
Loading development environment (Rails 5.0.7)
irb(main):001:0>
```

## Errors Starting Console

If get cannot load such file error message when trying to run the rails console from the termial window.  

[rails console require cannot load such file readline - stack overflow](https://stackoverflow.com/questions/34875379/rails-console-require-cannot-load-such-file-readline/34876928)     

Readline gem is required by your application but not specified in your Gemfile

Please add this to your gem file

```
gem 'rb-readline' 
```


***

# References   
* [Codenvy online IDE](https://codenvy.com/)   
