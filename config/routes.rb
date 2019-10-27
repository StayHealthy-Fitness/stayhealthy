Rails.application.routes.draw do
  scope '/auth' do
    post '/session', to: 'authentication#session'
  end
end
