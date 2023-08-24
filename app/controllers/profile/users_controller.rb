class Profile::UsersController < ApplicationController
  before_action :authenticate_user!, :validate_user

  def show
    @user = User.find_by(id: params[:id])
  end

  private

  def validate_user
    if current_user.id != params[:id].to_i
      render :file => 'public/404.html', :status => :not_found, :layout => false
    end
  end
end
