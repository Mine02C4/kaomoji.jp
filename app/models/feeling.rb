class Feeling < ActiveRecord::Base
  has_and_belongs_to_many :kaomojies
  validates_uniqueness_of :name
end
