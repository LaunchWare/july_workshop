class Post < ActiveRecord::Base
  validates_presence_of :title, :body
  validates_uniqueness_of :title

  #mass assignment
  attr_accessible :body, :title

  has_many :comments,
    dependent: :destroy
end

