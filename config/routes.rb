Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/my_name" => "pages#name_own"
  get "/first_letter" => "pages#initial_letter"
  get "/guess_number" => "pages#check_number"
end
