require('rspec')
require('places')

describe(Place) do
  before do
    Place.clear
  end
  describe('#place_title') do
    it("lets you add a title to a place you've been") do
      test_track = Place.new('Mombasa city')
      expect(test_track.place_title).to(eq('Mombasa city'))
    end
  end

  describe('.all_places') do
    it('is empty at first') do
      expect(Place.all_places).to(eq([]))
    end
  end

  describe('#save') do
    it('saves places') do
      test_track = Place.new('Mombasa city')
      test_track.save
      expect(Place.all_places).to(eq([test_track]))
    end
  end

  describe('.clear') do
    it('clears all data from the array') do
      Place.new('Mombasa city').save
      Place.clear
      expect(Place.all_places).to(eq([]))
    end
  end
end
