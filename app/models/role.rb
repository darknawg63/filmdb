class Role < ActiveRecord::Base

  validates :character, presence: true

  belongs_to :actor
  belongs_to :film
end
