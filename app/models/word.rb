class Word < ActiveRecord::Base
  belongs_to :language
  
  attr_accessible :text, :translation, :ipa, :example
end