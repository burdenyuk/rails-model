# == Schema Information
#
# Table name: users
#
#  id          :integer(4)      not null, primary key
#  login       :string(255)
#  name        :string(255)
#  last_name   :string(255)
#  email       :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class User < ActiveRecord::Base
  has_many :posts
end
