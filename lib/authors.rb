class Author

  attr_reader :name, :id

  define_method(:initialize) do |attributes|
    # @id = attributes[:id]
    # @title = attributes[:name]
  end

#   define_method(:save) do
#     result = DB.exec("INSERT INTO books (title) VALUES ('#{@title}') RETURNING id;")
#     @id = result.getvalue(0,0).to_i
#   end
#
#   define_singleton_method(:delete_all) do
#     DB.exec("DELETE FROM books WHERE id > 0;")
#   end
#
#   define_method(:delete) do
#     DB.exec("DELETE FROM books WHERE id = #{@id};")
#   end
#
#   def self.all
#     returned_books = DB.exec("SELECT * FROM books;")
#     books = []
#     returned_books.each do |book|
#       books.push(Book.new({:id => book['id'], :title => book['title']}))
#     end
#     books
#   end
#
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
