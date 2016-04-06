class ProfileController < ApplicationController

  def show_user
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to current_user
    end
  end

  def show_org
    @org = Organization.find(params[:id])
  end

  def not_found
    fail ActionController::RoutingError.new('Profile Not Found')
  end

  def edit
    @interests = Interests.all
  end
end
