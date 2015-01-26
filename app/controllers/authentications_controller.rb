class AuthenticationsController < ApplicationController
  def index
    @authentications = current_user.authentications if current_user
  end

  def create
    omniauth = request.env['omniauth.auth']
    authentication = Authentication.find_by(provider: omniauth['provider'], uid: omniauth['uid'])
    if authentication
      session[:id] = authentication.user_id
      redirect_to :root
    elsif current_user
      current_user.authentications.create!(provider: omniauth['provider'], uid: omniauth['uid'])
      # current_user.update_attributes(omniauth['provider'] => omniauth['info']['nickname'])
      # flash[:notice] = "Successfully added #{omniauth['provider']} authentication"
      redirect_to :root
    else
      user = User.new(first_name: omniauth['info']['name'])
      user.authentications.build(provider: omniauth['provider'], uid: omniauth['uid'])
      user.save
      session[:id] = user.id
      redirect_to :root
    end
  end
end
