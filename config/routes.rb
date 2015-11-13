Rails.application.routes.draw do
  post '/register' => 'auth#register'
  # patch '/confirm' => 'auth#confirm'
  post '/login' => 'auth#login'
  delete '/logout/:id' => 'auth#logout'

  resources :users, except: [:new, :edit]

  resources :dogs, except: [:new, :edit]
  get '/dog/breeds/:id' => 'dogs#list_breeds'
  get '/dog/colors/:id' => 'dogs#list_colors'

  resources :breeds, except: [:new, :edit]
  resources :colors, except: [:new, :edit]
  resources :shelters, except: [:new, :edit]
  resources :locations, except: [:new, :edit]
  resources :favorites, except: [:new, :edit]
  resources :breed_mixes, except: [:new, :edit]
  resources :color_mixes, except: [:new, :edit]


end
