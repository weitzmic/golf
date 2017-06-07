class Course < ApplicationRecord

has_one :menu, :dependent => :destroy
has_many :holes, :dependent => :destroy

has_many :scores, :through => :holes, :source => :scores
has_many :weathers, :through => :scores, :source => :weather

validates :course_name, :presence => true

end
