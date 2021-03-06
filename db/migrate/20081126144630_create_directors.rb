class CreateDirectors < ActiveRecord::Migration
  def self.up
    create_table :directors do |t|
      t.string :name
      t.string :country
      t.date :term_start
      t.date :term_end

      t.timestamps
    end
  end

  def self.down
    drop_table :directors
  end
end
