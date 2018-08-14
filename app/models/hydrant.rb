class Hydrant < ApplicationRecord
  has_many :visits
  has_many :dogs, through :visits

  def owner
    return '' unless visits.any?
    visits.last.dog.name
  end
end
