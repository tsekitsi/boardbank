class UserlistController < ApplicationController

  def show
    @users = User.all
  end

  def index
  end
end