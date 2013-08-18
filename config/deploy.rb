require 'capistrano/ext/multistage'
set :stages, ["staging", "production"]
set :default_stage, "staging"

set :application, "roadtodev"
set :scm, :git
set :repository, "git@github.com:alvinang/Blogger-App.git"
set :scm_passphrase, "Hansomee7"
set :user, "alvinang"
set :rails_env, "production"
set :deploy_to, "/home/alvinang/public/roadtodev"
set :deploy_via, :copy
set :ssh_options, { :forward_agent => true, :port => 2277 }

ENV['SSH_AUTH'] = '/var/lib/alvinang/.ssh/ssh-agent.sock'
set :branch, "master"


# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "roadtodev.com"                          # Your HTTP server, Apache/etc
role :app, "roadtodev.com"                          # This may be the same as your `Web` server
role :db,  "roadtodev.com", :primary => true # This is where Rails migrations will run
# role :db,  "your slave db-server here"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
   task :start do ; end
   task :stop do ; end

   desc "Precompile assets after deploy"
   task :precompile_assets do
     run <<-CMD
      cd #{ current_path } &&
      #{ sudo } bundle exec rake assets:precompile RAILS_ENV=#{ rails_env }
     CMD
   end

   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
end

after "deploy", "deploy:symlink_config_files"
after "deploy", "deploy:restart"
after "deploy", "deploy:cleanup"
