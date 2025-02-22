class Course < ApplicationRecord
  has_rich_text :description
  belongs_to :user
  validates_presence_of :title, :description
end
