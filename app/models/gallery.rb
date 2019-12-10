class Gallery < ApplicationRecord
  belongs_to :user
  has_many :photographers
  validates :name, presence: true
end
