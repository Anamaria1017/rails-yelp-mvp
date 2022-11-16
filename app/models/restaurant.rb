class Restaurant < ApplicationRecord
  @allowed_types = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: @allowed_types }
end

# A restaurant must have a name, an address and a category.
# When a restaurant is destroyed, all of its reviews must be destroyed as well.
# A restaurant’s category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
