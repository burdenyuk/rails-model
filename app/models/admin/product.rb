# == Schema Information
#
# Table name: admin_products
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  code       :string(255)
#  type       :string(255)
#  desc       :text
#  created_at :datetime
#  updated_at :datetime
#

class Admin::Product < ActiveRecord::Base
end
