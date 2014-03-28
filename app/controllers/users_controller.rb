class UsersController < Devise::SessionsController  
  def create
    super
    @event.update_attributes!(params[:username])
    UserMailer.registration_confirmation(@user).deliver
  end
end
