class MailboxesController < ApplicationController
  def index
    @mailboxes = Mailbox.where(:conversation_id => 1)

  end

  def new
  end

  def show
    @mailboxes = Mailbox.where(:conversation_id => 1)

  end
end
