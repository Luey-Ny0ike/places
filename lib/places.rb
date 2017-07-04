class Place
  @@places = []
  define_method(:initialize) do |title|
    @title = title
  end

  define_method(:place_title) do
    @title
  end

  define_singleton_method(:all_places) do
    @@places
  end

  define_method(:save) do
    @@places.push(self)
  end

  define_singleton_method(:clear) do
    @@places = []
  end
end
