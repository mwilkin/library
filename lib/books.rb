class Book

  attr_reader :title, :id

  define_method(:initialize) do |attributes|
    @id = attributes[:id]
    @title = attributes[:title]
  end
end
