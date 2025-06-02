class Resource < ApplicationRecord
  belongs_to :resource_category

  # For links: []link [href, title].
  serialize :links, Array

  # Validations, other methods, etc.
  validates :name, presence: true
end
