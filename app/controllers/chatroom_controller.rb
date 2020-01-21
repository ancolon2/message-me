class ChatroomController < ApplicationController
  
  def index
    @messages = Message.all
    @username = User.find(10)
  end
  
  def home
    
  end
  def about
    
  end
end