class TestController < ApplicationController
  def index
    @users = User.all
    @first = User.first
    @last = User.last
    @by_id = User.find(2)
  end

end
