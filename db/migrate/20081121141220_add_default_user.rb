class AddDefaultUser < ActiveRecord::Migration
  def self.up
    if !User.find_by_login('admin')
      User.create(:login => 'admin', :email => 'nicolas@lacnic.net', :password => 'lacnic', :password_confirmation => 'lacnic')
    end
  end

  def self.down
  end
end
