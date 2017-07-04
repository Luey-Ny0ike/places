class Place
  define_method(:initialize) do |title|
    @title = title
  end

  define_method(:place_title) do
    @title
  end
end
