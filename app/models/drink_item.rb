class DrinkItem < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :pricing, presence: true
end
