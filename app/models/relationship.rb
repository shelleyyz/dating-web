# == Schema Information
#
# Table name: relationships
#
#  id         :bigint(8)        not null, primary key
#  liker_id   :integer
#  likee_id   :integer
#  active     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Relationship < ApplicationRecord
  belongs_to :liker, :optional => true, class_name: "User"
  belongs_to :likee, :optional => true, class_name: "User"
  validates :liker_id, presence: true
  validates :likee_id, presence: true
end
