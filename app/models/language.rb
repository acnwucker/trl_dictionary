class Language < ActiveRecord::Base
  has_many :words, :dependent => :destroy
  
  attr_accessible :name, :description

end
