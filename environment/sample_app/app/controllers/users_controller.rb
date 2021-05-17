class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # debugger
    #コンソールでみえる
  end

  def new
  end
end
