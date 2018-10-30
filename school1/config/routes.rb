Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :'students'
#root 'students#new'
get 'students/new'

end
