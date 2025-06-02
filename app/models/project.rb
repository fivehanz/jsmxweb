class Project < ApplicationRecord
  belongs_to :project_category

  # For links: []link [href, title].
  serialize :links, coder: JSON, type: Array

  # Validations, other methods, etc.
  validates :name, presence: true
  validates :project_category, presence: true
end
