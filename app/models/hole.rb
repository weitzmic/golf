class Hole < ApplicationRecord

belongs_to :course
has_many :scores, :dependent => :destroy


end
