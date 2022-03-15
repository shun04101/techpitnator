Rails.application.routes.draw do

root 'games#new'

resources :games, only: %i[new create update] do
    member do
        get :give_up
        get :challenge
        get :correct
    end
   resource :progresses, only: %i[new create]
end

end
