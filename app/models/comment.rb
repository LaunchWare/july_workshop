class Comment < ActiveRecord::Base
  validates_presence_of :text
  attr_accessible :text, :post_id

  belongs_to :post,
    inverse_of: :comments
end
