Rails.application.routes.draw do

  # resque site path
  mount Resque::Server.new, :at => "/resque"

  # sample paths
  get '/job', to: 'sample#job'
end
