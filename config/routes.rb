Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/my_name", controller: "pages", action: "name_own"
  get "/first_letter", controller: "pages", action: "initial_letter"
  get "/guess_number", controller: "pages", action: "check_number"
end
