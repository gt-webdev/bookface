class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :status
  attr_accessible :status_id, :user_id
end
