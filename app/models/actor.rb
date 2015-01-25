class Actor < ActiveRecord::Base

  validates :fname, presence: true
  validates :lname, presence: true

  has_many :roles
  has_many :films, :through => :roles

  def full_name
    [fname, lname].join(' ')
  end

  def full_name=(name)
    split = name.split(' ', 2)
    self.fname = split.first
    self.lname = split.last
  end

  def to_s
    "#{fname} #{lname}"
  end
end
