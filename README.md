# Jenkinson

This gem allows running most common operations on remote jenkins server 

Currently supports:  

- Backup of jobs (get_jobs) 
- Restore local jobs to server (set_jobs) 
- Install jenkins plugins (install) 

## Installation

Add this line to your application's Gemfile:

    gem 'jenkinson'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jenkinson

## Usage

`jenkinson get_jobs TARGET_FOLDER # download jobs configuration into target_dir (config/jobs)`  

`jenkinson help [COMMAND]  # Describe available commands or one specific command`  

`jenkinson install PLUGINS # install jenkins plugins (comma seperated)`  

`jenkinson set_jobs FROM_FOLDER  # create (or update) jobs from specified folder (config/jobs)`  

## Contributing

1. Fork it ( https://github.com/[my-github-username]/jenkinson/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
