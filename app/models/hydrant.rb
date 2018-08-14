class Hydrant < ApplicationRecord
  belongs_to :dog
  has_many :visits, through :dogs

  def owner
    return '' unless visits.any?
    visits.last.dog.name
  end
end
