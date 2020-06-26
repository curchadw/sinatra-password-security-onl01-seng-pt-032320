<<<<<<< HEAD
require_relative '../db/migrate/20180314210852_create_users.rb'

require_relative 'spec_helper'

describe 'user' do
  before do
    sql = "DROP TABLE IF EXISTS users"
    ActiveRecord::Base.connection.execute(sql)
    CreateUsers.new.up
  end

  it 'has a name' do
    user = User.new
    user.username = "Steven"
    user.password = "safepassword"
    user.save
    expect(User.where(username: "Steven").first).to eq(user)
  end
end

=======
require_relative '../db/migrate/20180314210852_create_users.rb'

require_relative 'spec_helper'

describe 'users' do
  before do
    sql = "DROP TABLE IF EXISTS users"
    ActiveRecord::Base.connection.execute(sql)
    CreateUsers.new.up
  end

  it 'has a name' do
    user = User.new
    user.username = "Steven"
    user.password = "safepassword"
    user.save
    expect(User.where(username: "Steven").first).to eq(user)
  end
end

>>>>>>> 7876080f1b8a0a2f7edf65136b40a451daeb97d1
