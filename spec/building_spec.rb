require 'building'
require 'spec_helper'

describe Building do

  describe "Building name validation" do
    before do
      Building.create(building_name: "Orion", building_code: "AP_MLB")
    end
    subject(:building) { Building.new }

    it { should accept_values_for(:building_name, "O'Connell St", "B54", "BT Centre, Glasgow", "AP_MLB") }
    it { should_not accept_values_for(:building_name, nil, " ", "Orion") }

  end

  describe "Building code validation" do
    before do
      Building.create(building_name: "Orion", building_code: "AP_MLB")
    end
    subject(:building) { Building.new }

    it { should accept_values_for(:building_code, "O'Con St", "B54", "B-34", "Orion") }
    it { should_not accept_values_for(:building_code, nil, " ", "AP_MLB") }

  end

end
