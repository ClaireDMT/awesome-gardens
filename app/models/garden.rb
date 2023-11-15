class Garden < ApplicationRecord
  has_many :plants, dependent: :destroy # gives a method @garden.plants
end
