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
  belongs_to :user, :optional => true
end
