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

  def self.find(id)
    author = DB.exec("SELECT * FROM authors WHERE id = #{id}").first()
    return Author.new({id: author['id'].to_i, name: author['name']})
  end

  def ==(other)
    (@id == other.id) && (@name == other.name)
  end

#   def update_title!(new_title)
#     @title = new_title
#     DB.exec("UPDATE books SET title = '#{@title}' WHERE id = #{@id}")
#   end
#
end
