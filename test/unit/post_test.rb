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

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
