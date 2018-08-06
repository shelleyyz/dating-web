# == Schema Information
#
# Table name: conversations
#
#  id          :bigint(8)        not null, primary key
#  sender_id   :integer
#  receiver_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Conversation < ApplicationRecord
  belongs_to :mailbox, :optional => true
  belongs_to :user_id, :class_name => "User", :foreign_key => :sender_id

end
