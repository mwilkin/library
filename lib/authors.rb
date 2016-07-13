class Author

  attr_reader :name, :id

  define_method(:initialize) do |attributes|
    @id = attributes[:id]
    @name = attributes[:name]
  end

  define_method(:save) do
    result = DB.exec("INSERT INTO authors (name) VALUES ('#{@name}') RETURNING id;")
    @id = result.getvalue(0,0).to_i
  end

  define_singleton_method(:delete_all) do
    DB.exec("DELETE FROM authors;")
  end

  define_method(:delete) do
    DB.exec("DELETE FROM authors WHERE id = #{@id};")
  end

  def self.all
    authors = []
    returned_authors = DB.exec("SELECT * FROM authors;")
    returned_authors.each do |author|
      authors.push(Author.new({:id => author['id'], :name => author['name']}))
    end
    authors
  end

#   def self.find(id)
#     book = DB.exec("SELECT * FROM books WHERE id = #{id}").first()
#     return Book.new({id: book['id'].to_i, title: book['title']})
#   end
#
#   def ==(other)
#     (@id == other.id) && (@title == other.title)
#   end
#
#   def update_title!(new_title)
#     @title = new_title
#     DB.exec("UPDATE books SET title = '#{@title}' WHERE id = #{@id}")
#   end
#
end
