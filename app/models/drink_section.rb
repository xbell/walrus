class DrinkSection < ActiveRecord::Base
  validates :name, presence: true
end
