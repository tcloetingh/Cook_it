class Recipe < ApplicationRecord
  validates :recipe, presesnce: true, length: { maximum: 60, minimum: 3 }
  validates :instructions, presesnce: true, length: { maximum: 140, minimum: 3 }
end
