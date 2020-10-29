class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @author_info = Gossip.find(params[:id]).user
    @user_city = @author_info.city.name
  end

end
