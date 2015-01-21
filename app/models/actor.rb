class Actor < ActiveRecord::Base

  validates :fname, presence: true
  validates :lname, presence: true

  has_many :roles
  has_many :films, :through => :roles

  def to_s
    "#{fname} #{lname}"
  end
end
