class MessagesController < ApplicationController
  # Create a new message
  def create
    render json: Message.create(attributes_for_new_message)
  end

  # Edit an existing message
  def edit
    
  end

  # Reply with all available messages
  def index
    render json: Message.all
  end

  private

  def attributes_for_new_message
    params.require(:message).permit(:user_id, :message)
  end
end
