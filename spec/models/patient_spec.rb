require 'rails_helper'

RSpec.describe Patient, type: :model do

  it "is valid with valid attributes" do
    expect(Patient.new).to be_valid
  end

  it "is not valid without a name" do
    patient = Patient.new(name: nil)
    expect(patient).to_not be_valid
  end
end
