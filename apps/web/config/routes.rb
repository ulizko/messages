# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
get '/messages/:url', to: 'messages#show'
post '/link', to: 'messages#create'
get '/', to: 'messages#new'
