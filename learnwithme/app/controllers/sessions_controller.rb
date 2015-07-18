class SessionsController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def index
  end

  def create
    p "HELLLLOOOOOOOO"
    User.new(


      )
  end


end
