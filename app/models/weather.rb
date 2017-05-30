class Weather < ApplicationRecord

  belongs_to :score
  has_one :course, :through => :score, :source => :course

end
