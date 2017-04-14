class History < ApplicationRecord
  belongs_to :patient
  has_many :labs, dependent: :destroy
  has_many :mars, dependent: :destroy
  has_many :prns, dependent: :destroy
  has_many :orders, dependent: :destroy
end
