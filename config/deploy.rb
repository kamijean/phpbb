# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'latinos-in-action-forum'
set :repo_url, 'git@github.com:kamijean/phpbb.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, %w{phpBB3/config.php}

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('phpBB3/store/', 'phpBB3/files/', 'phpBB3/cache/', 'phpBB3/images/avatars/upload/')
# set :linked_dirs, %w{phpBB3/store phpBB3/files phpBB3/cache phpBB3/image/avatars/upload}
# set :linked_dirs, %w{phpBB3}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end

#after :deploy, "deploy:fix_permissions"
