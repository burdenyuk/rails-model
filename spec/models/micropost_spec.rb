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

require 'spec_helper'

describe Micropost do
  pending "add some examples to (or delete) #{__FILE__}"
end
