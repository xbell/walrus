class NewMenu < ActiveRecord::Base
  validates :name, presence: true
end
