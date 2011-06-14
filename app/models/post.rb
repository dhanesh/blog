class Post < ActiveRecord::Base
  attr_accessible :title, :content
  validates_presence_of :title, :content
  validates_uniqueness_of :title

  belongs_to :user
end
