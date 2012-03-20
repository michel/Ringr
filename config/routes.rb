Ringr::Application.routes.draw do
  scope path: 'facebook', as: 'facebook', module: 'facebook' do
    root to: 'canvas#index'
  end
end
