class Restoran < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :menus, dependent: :destroy
  belongs_to :organization
  validates :name, presence: true
end
