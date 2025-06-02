class Resource < ApplicationRecord
  belongs_to :resource_category

  # For links: []link [href, title].
  serialize :links, coder: JSON, type: Array

  # Validations, other methods, etc.
  validates :name, presence: true
  validates :resource_category, presence: true
end
