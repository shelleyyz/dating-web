class MailboxesController < ApplicationController
  def index
    @mailboxes = Mailbox.where(:sender_id => @current_user.id)

  end

  def new
    @mailbox = Mailbox.new
    @receiver = User.where(:id => params[:id]).first
    @conversations = Conversation.where(:id => params[:id])
  end

  def create
    mailbox = Mailbox.new mailbox_params
    conversation = Conversation.new
    conversation.sender_id = @current_user.id
    conversation.receiver_id = extra_params[:receiver_id].to_i
    conversation.save
    mailbox.conversation_id = conversation.id
    mailbox.content = mailbox_params[:content]
    mailbox.sender_id = @current_user.id
    mailbox.save
    redirect_to mailbox_path(mailbox.conversation_id)

  end

  def show
    @mailboxes = Mailbox.where(:conversation_id => params[:id])
    @conversations = Conversation.where(:id => params[:id])

  end

  def mail
    mailbox = Mailbox.new
    mailbox.conversation_id = params[:id]
    mailbox.content = params[:content]
    mailbox.sender_id = @current_user.id
    mailbox.save

  redirect_back :fallback_location => root_path

  end

  def destroy
  @mailbox =  Mailbox.find params[:id]
  @mailbox.destroy
  redirect_to mailboxes_path

end

  private
  def mailbox_params
    params.require(:mailbox).permit(:content, :sender_id, :conversation_id)
  end
  def extra_params
    params.require(:extra).permit(:receiver_id)
  end

end
