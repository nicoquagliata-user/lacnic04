class Director < ActiveRecord::Base
  has_and_belongs_to_many :position
  validates_presence_of :name
  

  
  def self.find_directors
    Director.find(:all, :order => :term_end, :limit => 3)
  end
  def self.find_all_directors
    Director.find(:all)
  end
  
  def get_active_directors
    
  end
  
  liquid_methods :name, :country, :term_start, :term_end, :position
  
end
