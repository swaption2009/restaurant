class Menu < ApplicationRecord
  belongs_to :restoran
  has_many :items
  accepts_nested_attributes_for :items
end
