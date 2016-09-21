class Organization < ApplicationRecord
  resourcify
  
  has_and_belongs_to_many :users
end
