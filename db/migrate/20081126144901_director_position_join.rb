class DirectorPositionJoin < ActiveRecord::Migration
  def self.up
    create_table :directors_positions, :id => false do |t|
      t.integer :director_id
      t.integer :position_id
    end
    
  end

  def self.down
     drop_table :directors_positions
  end
end
