Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #CRUD Verbs: get,post,patch/put, delete
  #Actions: index, show, new, create, edit, update,destroy
  get "/sitcoms", to: "sitcoms#index"
  get "/sitcoms/:id", to: "sitcoms#show"
  get "/characters", to: "characters#index"
  get "/characters/:id", to: "characters#show"

end
