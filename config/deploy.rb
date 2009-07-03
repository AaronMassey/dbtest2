set :application, "dbtest"
set :deploy_to,  "/home/accordi3/www/rails/#{application}"

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
# set :deploy_to, "/var/www/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
# set :scm, :subversion

role :app, "dbtest.accordingtopan.com"
role :web, "dbtest.accordingtopan.com"
role :db,  "dbtest.accordingtopan.com", :primary => true

default_run_options[:pty] = true
set :repository, "git://github.com/aaronmassey/dbtest.git"
set :scm, "git"
set :branch, "master"
set :deploy_vis, :remote_cache

set :user, "accordi3"
set :admin_runner, "accordi3"

namespace :deploy do
  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end
  desc "Start Application -- not needed for Passenger"
  task :start, :roles => :app do
  end
end