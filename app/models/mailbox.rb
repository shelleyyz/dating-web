# == Schema Information
#
# Table name: mailboxes
#
#  id          :bigint(8)        not null, primary key
#  sender_id   :integer
#  receiver_id :integer
#  content     :text
#  date        :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Mailbox < ApplicationRecord
  belongs_to :user
end
