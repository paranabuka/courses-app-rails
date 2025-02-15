class Course < ApplicationRecord
  has_rich_text :description

  validates_presence_of :title, :description

  belongs_to :user
end
