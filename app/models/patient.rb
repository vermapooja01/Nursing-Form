class Patient < ApplicationRecord
  has_many :submissions
  has_many :users, through: :submissions
  has_many :histories, dependent: :destroy
end
