class Director < ActiveRecord::Base

  validates :fname, presence: true
  validates :lname, presence: true

  has_many :productions
  has_many :films, :through => :productions

  def to_s
    "#{fname} #{lname}"
  end
end
