class UserSessionsController < ApplicationController
  before_filter :require_user, :only => :destroy

  def new
    @user_session = UserSession.new
    @current_user = UserSession.find
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    
    if @user_session.save
      redirect_back_or_default account_url(@current_user)
    else
      render :action => :new
    end
  end

  def destroy
    current_user_session.destroy
    redirect_back_or_default new_user_session_url
  end
end