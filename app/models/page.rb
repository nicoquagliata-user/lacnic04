class Page < ActiveRecord::Base
  has_many :subpages, :class_name => 'Page', :foreign_key => 'parent_id'
  belongs_to :parent, :class_name => 'Page', :foreign_key => 'parent_id'
  
  def self.find_main
    Page.find(:all, :conditions => ["parent_id IS NULL and admin!= ?", false], :order => 'position')
  end
  
  def self.find_main_public
    Page.find(:all, :conditions => ["parent_id IS NULL and admin!= ?", true], :order => 'position')
  end
  
  liquid_methods :directors
  
  def directors
    Director.find(:all, :order => :term_end, :limit => 7)
    
  end
end
