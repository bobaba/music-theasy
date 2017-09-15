Rails.application.routes.draw do
  resources :scales
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'random_chord_generator' => 'page#random_chord'
  get 'scale_discovery' => 'page#scale_discovery'
  get 'chord_progressions' => 'page#chord_progressions'
  get 'etude_machine' => 'page#etude_machine'
  root 'page#home'
end
