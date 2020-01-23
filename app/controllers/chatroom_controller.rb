class ChatroomController < ApplicationController
  before_action :require_user
  
  def index
    @message = Message.new
    @messages = Message.custom_display
    @users = User.all
  end
  
  def home
    
  end
  
  def about
    
  end
end