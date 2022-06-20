class UsersController < ApplicationController
  before_action :set_user
  before_action :set_user, only: %i[ profile ]
  def profile
    @user.update(views: @user.views + 1)
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
end
