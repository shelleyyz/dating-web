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
  validates :email, :presence => true, :uniqueness => true
  # validates :dob
  # validates :first_name, :presence => true
  # validates :last_name, :presence => true
  # # validates :image
  # # validates :gender
  # validates :location, :presence => true

  # has_many :active_relationships, class_name:  "Relationship",
  #                                 foreign_key: #[:liker_id, :likee_id],
  #                                 dependent:   :destroy

  # TODO: add dependent destroy to liking and likers
  has_many :liking, class_name: "Relationship", foreign_key: :likee_id, dependent: :destroy
  has_many :likers, class_name: "Relationship", foreign_key: :liker_id, dependent: :destroy

  # has_many :active_relationships, ->(user) { where("relationships.liker_id = :user_id OR relationships.likee_id = :user_id", user_id: user.id) }

  has_many :mailboxes
  has_many :conversations, :through => :mailbox
  # enum language: [:javascript, :ruby, :python, :golang, :C, :php, :java]


end
