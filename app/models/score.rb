class Score < ApplicationRecord

  belongs_to :hole
  belongs_to :user
  has_one :weather, :dependent => :destroy

  has_one :course, :through => :hole, :source => :course


end
