class MessagesController < ApplicationController
  # Create a new message
  def create
    if msg.save
      send_message :create_success, msg, namespace: :messages
    else
      send_message :create_fail, msg, namespace: :messages
    end
  end

  # Edit an existing message
  def edit
    
  end

  # Reply with all available messages
  def show
    render json: Message.all.to_json, root: false
  end

  private

  def msg
    @msg ||= Message.new message
  end
end
