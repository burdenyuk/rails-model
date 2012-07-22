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

  validates :login, :name, :last_name, :email, presence: true
  validates :login, :name, :last_name, format: { with: /\A[A-Za-z]+\Z/, message: "should contain only letters" }
  validates :login, :name, :last_name, length: { minimum: 2, maximum: 50 }
  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/, message: "incorrect" }
  validates :email, :login, uniqueness: true
  validate :check_login_for_default

  scope :id_exp, lambda{|id| where('id > ?', id)}
  scope :another_scope, limit(2).offset(0)
  #default_scope order('id ASD')

  def check_login_for_default
    errors.add(:login, "can't be 'default'") if self.login == "default"
  end
end
