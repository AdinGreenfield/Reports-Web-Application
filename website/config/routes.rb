Rails.application.routes.draw do
  #get 'report/index'

  #get 'report/new'

  #get 'report/show'
get "report/new"

post "report/create"

root "report#new"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
