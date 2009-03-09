class Position < ActiveRecord::Base
  has_and_belongs_to_many :director
  liquid_methods :name
end
