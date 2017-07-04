require('rspec')
require('places')

describe(Place) do
  describe('#place_title') do
    it("lets you add a title to a place you've been") do
      test_track = Place.new('Mombasa city')
      expect(test_track.place_title).to(eq('Mombasa city'))
    end
  end

  describe('.all_places')do
    it("is empty at first")do
      expect(Place.all_places()).to(eq([]))
    end
  end
end
