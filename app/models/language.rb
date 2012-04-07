class Language < ActiveRecord::Base
  has_many :words, :dependent => :destroy
end
