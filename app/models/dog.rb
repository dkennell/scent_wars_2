class Dog < ApplicationRecord
  has_many :visits
  has_many :hydrants, through :visits
end
