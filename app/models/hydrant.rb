class Hydrant < ApplicationRecord
  has_many :visits
  has_many :dogs, through :visits

  def owner
    return '' unless visits.any?
    visits.pluck(:points).max.dog
  end
end
