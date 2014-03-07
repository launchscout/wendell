set :user, "gaslight"
set :use_sudo, false

set :ssh_options, forward_agent: true, user: fetch(:user)

role :app, "office.gaslight.co"

