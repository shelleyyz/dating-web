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

  #password
#validations
has_secure_password
validates :email, :presence => true, :uniqueness => true #user can only have account if they enter an email address AND it is not already an email address in the DB



end
