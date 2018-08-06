# == Schema Information
#
# Table name: mailboxes
#
#  id              :bigint(8)        not null, primary key
#  sender_id       :integer
#  content         :text
#  conversation_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Mailbox < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :user_id, :class_name => "User", :foreign_key => :sender_id
  has_many :conversations
end
