# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  first_name :text
#  last_name  :text
#  interests  :text
#  email      :text
#  image      :text
#  gender     :text
#  dob        :date
#  location   :text
#  language   :text
#  bio        :text
#  admin      :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
end
