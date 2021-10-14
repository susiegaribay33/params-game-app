class PagesController < ApplicationController
  def name_own
    render json: {message: "hello"}  
  end
  
  def initial_letter
    name_string = params["name"]
    name_array = name_string.split(//)
    first = name_array[0]

    if first.downcase == "a"
      render json: {message: "Hey, your name starts with the first letter of the alphabet!"}
    else
      render json: {message: "Your name is weird."}
    end
  end

  def check_number
    correct_guess = 12
    input = params[:number].to_i
    if input == correct_guess
      render json: {message: "Correct!"}
    elsif input < correct_guess
      render json: {message: "Aim higher."}
    elsif input > correct_guess
      render json: {message: "Aim lower."}
    end
  end

  def add
    total = params[:num1].to_i + params[:num2].to_i
    render json: {message: "This is your total: #{total}"}
  end

  def check_credentials
    username_entry = params[:username]
    password_entry = params[:password]
    if username_entry == "hugh" && password_entry == "swordfish"
      render json: {message: "Valid credentials."}
    else
      render json: {message: "Invalid credentials."}
    end
  end

end
