class MenuItem < ActiveRecord::Base
  validates :name, presence: true
  validates :price, presence: true
end
