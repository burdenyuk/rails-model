class Post < ActiveRecord::Base
  attr_accessible :title, :message

  validates :message, presence: true, if: :check_title

  before_validation :check_title

  protected

  def check_title
    self.title = "default" if self.title.blank?
  end
end