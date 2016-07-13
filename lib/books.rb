class Book
  attr_reader(:title)
  define_method(:initialize) do |attributes|
    @title = attributes[:title]
  end
end
