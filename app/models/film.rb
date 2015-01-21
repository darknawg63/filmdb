class Film < ActiveRecord::Base
  
  validates :title, presence: true
  validates :description, presence: true
  validates :genre, presence: true
  validates :release_date, presence: true

  has_many :roles
  has_many :actors, :through => :roles
  has_many :productions
  has_many :directors, :through => :productions

  def to_s
    "#{title}, #{genre}"
  end
end
