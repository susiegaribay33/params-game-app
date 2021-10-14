Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #Query Params
  get "/my_name" => "pages#name_own"
  get "/first_letter" => "pages#initial_letter"
  get "/guess_number" => "pages#check_number"
  #URL Segment Params
  get "/addition/:num1/:num2" => "pages#add"
  get "/guess_the_number/:number" => "pages#check_number"
  #Body Params
  post "guess_a_number" => "pages#check_number"
  post "login" => "pages#check_credentials"
end
