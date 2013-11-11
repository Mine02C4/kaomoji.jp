class Kaomoji < ActiveRecord::Base
  has_and_belongs_to_many :feelings
  has_and_belongs_to_many :readings
  validates_uniqueness_of :kaomoji
end
