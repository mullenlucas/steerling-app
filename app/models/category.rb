class Category < ApplicationRecord
  has_and_belongs_to_many :operations, dependent: :destroy
  belongs_to :user

  validates :name, presence: true
  validates :name, uniqueness: true
end
