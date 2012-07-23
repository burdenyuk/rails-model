# == Schema Information
#
# Table name: microposts
#
#  id         :integer(4)      not null, primary key
#  title      :string(255)
#  message    :text
#  user_id    :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class Micropost < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :title, :message, :user, presence: true
  validates :title, length: { minimum: 2, maximum: 50 }
end
