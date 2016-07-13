class Book

  attr_reader :title, :id

  define_method(:initialize) do |attributes|
    @id = attributes[:id]
    @title = attributes[:title]
  end

  define_method(:save) do
    result = DB.exec("INSERT INTO books (title) VALUES ('#{@title}') RETURNING id;")
    @id = result.getvalue(0,0).to_i
    # result.first().fetch("id").to_i()
  end

end
