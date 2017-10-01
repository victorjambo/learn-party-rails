# Welcome to the Learn Party

**Learn Party** is a learning platform that offers user generated content for studying the latest technologies online (Youtube hosted videos).

## What can I do on Learn Party

**1. Register account**

Create an account using your email, facebook, twitter or github account in under a minute.

Proceed to login here

**2. User profile**

Update your profile details, avatar or simply put up a small bio about yourself that your video viewers can read about. 

**3. Video Resources**

1. Create new videos on your profile, edit exisiting details or delete your uploaded videos entirely.

2. Keep track of all the videos you have uploaded straight from your dashboard.

**4. Favorite, Comment, Engage**


1. Engage other learners on the comment section of the videos that capture your attention.

Too many videos?

2. Favorite the videos you like and revisit them later on your profile.

**5. Trendy Videos**

If you are just looking to see what technologies are the fuss around, Access the most popular videos on your homepage

```
See the most popular videos according to
1. Which videos have the most likes.
2. Which videos have the most comments
3. Which videos have the most views
4. Which users have the most uploads
```

**You do not have to be logged in to view the videos without engagement (Commenting, Favoriting, uploading and editing)**

##Usage

It is recommended that you have the following set up on your local environment before getting started

1. [Ruby ~> 2.4.0](https://www.ruby-lang.org/en/downloads/)
2. [Ruby on Rails ~> 5.0.4](http://rubyonrails.org/)
3. [Postgres](http://www.postgresql.org)
4. [Git](https://git-scm.com)

Clone the repository into your local environment

```bash
$ git clone git@github.com:victorjambo/learn-party-rails.git
```

Change directory into `learn-party-rails`

```bash
$ cd learn-party-rails
```

Run bundle to install all the gems

```bash
$ bundle install
```

## Image processing

Intranet uses mini_magick for image processing.

ImageMagick. Carrierwave can use either RMagick or MiniMagick (default). To change resize option the correct gem must be used (specified in Gemfile) and change included setting for Carrierwave in file_uploader.rb
Can be installed from: http://www.imagemagick.org

or run

```bash
sudo apt-get update
sudo apt-get install imagemagick
```

### cloud9
Start postgresql service by running;
```bash
sudo service postgresql start
```
Finally before running `rake db:create db:migrate` goto `config/database.yml` and change value of `encoding:` to `SQL_ASCII`


## Tests

i know right

## Contributing

Contributions are **welcome** and will be fully **credited**.

## Security

If you discover any security related issues, please email me at [Victor Mutai](victorjambo@live.com) or create an issue.

## Credits

[Victor Mutai](https://github.com/victorjambo)
[John kariuki](https://github.com/andela-jkariuki)

## License

### The MIT License (MIT)

Copyright (c) 2016 Victor Mutai <victorjambo@live.com>

The Learn Party is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT).