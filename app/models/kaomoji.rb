class Kaomoji < ActiveRecord::Base
  has_and_belongs_to_many :feelings
  has_and_belongs_to_many :readings
  validates_uniqueness_of :kaomoji

  def status_string
    case status
    when 0
      return '公開'
    when 1
      return '承認待ち'
    when 2
      return '拒否'
    else
      return 'エラー'
    end
  end
end
