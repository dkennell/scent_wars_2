class Dog < ApplicationRecord
  has_many :visits
  has_many :hydrants, through :visits

  def visit_hydrant(hydrant_id, stamina_to_use)
    visit = find_or_create_by(dog_id: id, hydrant_id: hydrant_id)
    visit.update(stamina_used: visit.stamina_used + stamina_to_use)
    update(stamina: stamina - stamina_to_use)
  end
end
