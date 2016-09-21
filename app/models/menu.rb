class Menu < ApplicationRecord
  belongs_to :restoran
  has_many :items, dependent: :destroy
  accepts_nested_attributes_for :items, allow_destroy: true
end
