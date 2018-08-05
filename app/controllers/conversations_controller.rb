class ConversationsController < ApplicationController
  def index
    @conversations = Conversation.where(:sender_id => 1)
  end

  def new
    @conversation = Conversation.new
  end

  def create
    conversation = Conversation.new conversation_params
    conversation.sender_id = @current_user.id
    conversation.receiver_id = params[:receiver_id].to_i
    conversation.save
    redirect_to conversations_path
  end

  def edit
  end



  private
  def conversation_params
    params.require(:conversation).permit(:sender_id, :receiver_id)
  end

end
