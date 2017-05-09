class Prn < ApplicationRecord
  belongs_to :history
  has_one :patient, through: :history 
end
