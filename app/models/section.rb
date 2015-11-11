class Section < ActiveRecord::Base
validates :name, presence: true
validates :complete, inclusion: {in: [true, false]}
end
