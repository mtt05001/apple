class Post < ActiveRecord::Base
  attr_accessible :content, :title
  
  validates :title, :content, :presence => true
  validates :title, :length => {:minimum =>2 }
  validates :title, :uniqueness => {:message => "Already Taken"}

end
