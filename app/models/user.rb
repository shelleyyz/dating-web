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

  attr_accessor :name
  has_attachments :photos, maximum: 3

  # validates :first_name, :presence => true
  # validates :last_name, :presence => true

  has_many :liking, class_name: "Relationship", foreign_key: :likee_id, dependent: :destroy
  has_many :likers, class_name: "Relationship", foreign_key: :liker_id, dependent: :destroy

  has_many :mailboxes, :through =>:conversation
  has_many :conversations
  has_many :categories
  # enum language: [:javascript, :ruby, :python, :golang, :C, :php, :java]

  # Users this user likes
  def likes
    self.likers.where(:liker_id => self.id).map do |r|
      r.likee
    end
  end

  # Users who like this user
  def likees
    self.liking.where(:likee_id => self.id).map do |r|
      r.liker
    end
  end

  # Users who like this user and vice versa
  def matches
    self.likes & self.likees # Intersection
  end
end
end
