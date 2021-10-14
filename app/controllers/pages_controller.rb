class PagesController < ApplicationController
  def name_own
    render json: {message: "hello"}  
  end
end
