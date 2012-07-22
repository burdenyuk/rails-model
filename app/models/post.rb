# == Schema Information
#
# Table name: posts
#
#  id            :integer(4)      not null, primary key
#  title         :string(255)
#  message       :text
#  created_at    :datetime
#  updated_at    :datetime
#  authors_email :string(255)
#

class Post < ActiveRecord::Base
  belongs_to :user
end
