class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # debugger
    #コンソールでみえる
  end

  def new
    @user = User.new
  end
end
