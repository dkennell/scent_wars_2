class Hydrant < ApplicationRecord
  belongs_to :dog
  has_many :visits, through :dogs

  def owner
    visits.last.dog
  end
end
