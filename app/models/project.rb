class Project < ApplicationRecord
  belongs_to :project_category

  # For links: []link [href, title].
  serialize :links, Array

  # Validations, other methods, etc.
  validates :name, presence: true
end
