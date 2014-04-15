Flightfinder::Application.routes.draw do
  get '/about'    => 'high_voltage/pages#show', id: 'about'
  get '/contact'  => 'high_voltage/pages#show', id: 'contact'
  get '/privacy'  => 'high_voltage/pages#show', id: 'privacy'
  get '/terms'    => 'high_voltage/pages#show', id: 'terms'

  #get '/home', to: redirect('/')
  scope :api do
   # resources :learninglogs, defaults: {format: :json}
    get "/learninglogs(.:format)" => "learninglogs#index"
    get "/learninglogs/:id(.:format)" => "learninglogs#show"
  end
  root :to => 'high_voltage/pages#show', id: 'home'
end
