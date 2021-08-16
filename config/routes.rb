Rails.application.routes.draw do
  
  # verb '/path', to: 'controller#action'
  root to: 'flats#index'
  # get 'about', to: 'flats#about'
  get 'flats/:id', to: 'flats#show', as: :flat  

end

