class History < ApplicationRecord
  belongs_to :patient
  has_many :labs
  has_many :mars
  has_many :prns
  has_many :orders 
end
