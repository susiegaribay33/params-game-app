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
    input = params["number"].to_i
    if input == 12
      render json: {message: "Correct!"}
    elsif input < 12
      render json: {message: "Aim higher."}
    elsif input > 12
      render json: {message: "Aim lower."}
    end
  end

end
