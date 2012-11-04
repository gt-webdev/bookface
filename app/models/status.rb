class Status < ActiveRecord::Base
  belongs_to :user

  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  attr_accessible :text, :user_id
end
