class TestController < ApplicationController
  def index
    @users = User.all
    @first = User.first
    @last = User.last
    @by_id = User.find(2)
    @where1 = User.where('id > ?', 1)
    @where2 = User.where('id > ? AND last_name = ?', 1, 'test')
    @where3 = User.where(:id => 2..3)
    @where4 = User.where(:id => [1,3])
    @order1 = User.order('id DESC')
    @select1 = User.select('id, name')
    @select2 = User.select('id, name').last
    @limitoffset1 = User.limit(1).offset(1)
    @except = User.where('id <= 3').limit(2).order('name').except(:limit)
    @only = User.where('id <= 3').limit(2).order('name').only(:where, :limit)
    @joins1 = Micropost.joins(:user)
    @includes1 = Micropost.includes(:user)
    @find1 = User.find_by_login('admin')
    @find2 = User.find_by_name('test')
    @find3 = User.find_by_sql('SELECT * FROM users WHERE name="test"')
    @selall = User.connection.select_all('SELECT * FROM users WHERE name="test"')
  end

end
