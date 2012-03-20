Ringr::Application.routes.draw do
  root :to => 'victims#new'
  resources :victims
  scope path: 'facebook', as: 'facebook', module: 'facebook' do
    root to: 'canvas#index'
  end
end
