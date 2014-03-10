# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'wendell'
set :repo_url,  'https://github.com/gaslight/wendell.git'

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# Default deploy_to directory is /var/www/my_app
# set :deploy_to, '/var/www/my_app'
set :deploy_to, "/Users/gaslight/wendell"
set :deploy_via, :remote_cache

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :info

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
set :linked_dirs, %w{log node_modules}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do
  desc "Sets up the log file, then sources EnvVars & starts Hubot"
  task :start do
    on roles(:app), in: :sequence, wait: 5 do
      release_name = fetch(:release_name)
      log_file = "#{shared_path}/log/hubot.log"

      # If we've got a log file already, mark that a deployment occurred
      execute "if [ -e #{log_file} ]; then echo \"\n\nDeployment #{release_name}\n\" >> #{log_file}; fi"

      # Start Hubot!
      execute "launchctl load -w /Users/gaslight/Library/LaunchAgents/co.gaslight.wendell.plist"
    end
  end

  desc "Stop Hubot"
  task :stop do
    on roles(:app), in: :sequence, wait: 5 do
      execute "launchctl unload -w /Users/gaslight/Library/LaunchAgents/co.gaslight.wendell.plist"
    end
  end

  desc "Install necessary Node modules, then move them to the correct path"
  task :npm_install do
    on roles(:app), in: :sequence, wait: 5 do
      execute "cd #{release_path} && source /opt/boxen/env.sh; NODENV_VERSION=v0.10.21 npm install"
    end
  end

  task :restart do
    invoke 'deploy:stop'
    invoke 'deploy:start'
  end

  after :publishing, 'deploy:restart'
end
