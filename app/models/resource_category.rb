class ResourceCategory < ApplicationRecord
  has_many :resources, dependent: :nullify

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end
