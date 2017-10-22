Rails.application.routes.draw do
  #get 'report/index'

  #get 'report/new'

  #get 'report/show'
get "reports/new"
post "reports/create"

root "reports#new"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
