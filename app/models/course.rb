class Course < ApplicationRecord

has_one :menu, :dependent => :destroy
has_many :holes, :dependent => :destroy

has_many :scores, :through => :holes, :source => :scores
has_many :weathers, :through => :scores, :source => :weather

validates :course_name, :presence => true
validates :course_year_started, presence: true, format: {with: /(19|20)\d{2}/i }

end
