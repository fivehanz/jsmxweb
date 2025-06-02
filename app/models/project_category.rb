class ProjectCategory < ApplicationRecord
  has_many :projects, dependent: :nullify

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end
