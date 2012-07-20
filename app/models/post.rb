class Post < ActiveRecord::Base
  attr_accessible :title, :message

  #validates :title, :presence => true
  validates :message, :presence => true, :if => ":title.blank?"

  before_validation :check_title

  protected
  def check_title
    self.title = "default" if self.title.blank?
  end
end