class Dose < ApplicationRecord
  belongs_to :smoothie
  belongs_to :ingredient

  validates :description, :smoothie, presence: true
  validates :smoothie, uniqueness: { scope: :ingredient }
end
