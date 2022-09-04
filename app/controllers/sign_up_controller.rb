class SignUpController < ApplicationController
  def index
    @user = User.new
  end
  
  def create
    @dictionaries = Dictionary.all
    
    redirect_to :controller => 'work_space', :action => 'index'
  
    # render plain: params[:user].inspect
  end
end
