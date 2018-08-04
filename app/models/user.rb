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

  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  # validates :dob, :presence => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  # validates :image, :presence => true
  # validates :gender, :presence => true
  # validates :location, :presence => true

  has_many :relationships
  has_many :mailboxes
  # enum language: [:javascript, :ruby, :python, :golang, :C, :php, :java]

end
