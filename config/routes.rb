Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"

  scope '/auth' do
    post '/session', to: 'authentication#session'
  end
end
