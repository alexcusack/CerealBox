class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def all
    binding.pry
    request.env['omniauth.auth']
  end


  alias_method :google, :all



end