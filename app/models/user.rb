# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  first_name      :text
#  last_name       :text
#  interests       :text
#  email           :text
#  image           :text
#  gender          :text
#  dob             :date
#  location        :text
#  language        :text
#  bio             :text
#  admin           :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#

class User < ApplicationRecord
  has_secure_password
  zodiac_reader :dob
  validates :email, :presence => true, :uniqueness => true
  validates :location, :presence => true
  geocoded_by :location
  after_validation :geocode, if :location_changed?

  # validates :first_name, :presence => true
  # validates :last_name, :presence => true


  # TODO: add dependent destroy to liking and likers
  has_many :liking, class_name: "Relationship", foreign_key: :likee_id, dependent: :destroy
  has_many :likers, class_name: "Relationship", foreign_key: :liker_id, dependent: :destroy

  # has_many :active_relationships, ->(user) { where("relationships.liker_id = :user_id OR relationships.likee_id = :user_id", user_id: user.id) }

  has_many :mailboxes, :through =>:conversation
  has_many :conversations
  # enum language: [:javascript, :ruby, :python, :golang, :C, :php, :java]
end
end
