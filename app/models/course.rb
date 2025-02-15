class Course < ApplicationRecord
  validates_presence_of :title
  validates_length_of :description, { minimum: 5 }
end
