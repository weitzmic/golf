class Meteorologist < ApplicationRecord

  belongs_to :course
  has_one :course, :through => :score, :source => :course
  


end
