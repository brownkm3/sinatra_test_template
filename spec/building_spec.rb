require 'building'
require 'spec_helper'

describe Building do
  describe '.lookup' do
    it 'will return the building code associated with a given building name' do
      Building.new(building_name: "Orion", building_code: "MLB_AP").save()
      expect(subject.lookup('orion')).to eq 'OR_666'
    end
  end
end
