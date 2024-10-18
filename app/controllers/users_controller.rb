class UsersController < ApplicationController
  def show
    @user = the_user
  end
  def liked
    @user = the_user
  end
  def feed
    @user = the_user
  end
  def followers
    @user = the_user
  end
  def following
    @user = the_user
  end

  private
  def the_user
    User.find_by!(username: params.fetch(:username))
  end
end

