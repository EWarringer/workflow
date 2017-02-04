class Company < ApplicationRecord
  has_many :employers
  validates :name, presence: true
end
