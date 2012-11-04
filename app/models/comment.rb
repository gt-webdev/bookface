class Comment < ActiveRecord::Base
  default_scope order('created_at DESC')

  belongs_to :user
  belongs_to :status

  attr_accessible :status_id, :text, :user_id
end
