class Place
  define_method(:initialize) do |title|
    @title = title
  end

  define_method(:place_title) do
    @title
  end

  define_singleton_method(:all_places)do
    []
  end
end
