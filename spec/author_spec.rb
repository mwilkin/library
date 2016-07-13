require('spec_helper')

describe(Author) do

  # before(:each) do
  #   Author.delete_all()
  # end

  describe('#initialize') do
    it('instantiates an author object') do
      author = Author.new({:name => 'Mark Twain'})
      expect(author.class).to eq(Author)
    end

    it('instantiates a author with a name') do
      author = Author.new({:name => 'Mark Twain'})
      expect(author.name).to eq('Mark Twain')
    end

    it('instantiates a author with an id') do
      author = Author.new({:id => 1, :name => 'Michael Creighton'})
      expect(author.id).not_to eq(nil)
    end
  end
  #
  # describe('#save') do
  #   it('creates/stores book objects on the database') do
  #     book = Book.new({:id => nil, :title => 'Red'})
  #     book.save()
  #     result = DB.exec("SELECT title FROM books WHERE title = 'Red';")
  #     expect(result.getvalue(0,0)).to eq('Red')
  #   end
  # end
  #
  # describe('.delete_all') do
  #   it('deletes stored book objects on the database') do
  #     book = Book.new({:id => nil, :title => 'Blue'})
  #     book.save()
  #     Book.delete_all
  #     result = DB.exec("SELECT * FROM books;")
  #     expect(result.values.size()).to eq(0)
  #   end
  # end
  #
  # describe('#delete') do
  #   it('deletes a book from the database') do
  #     book = Book.new({:id => nil, :title => 'Green'})
  #     book.save()
  #     book.delete
  #     result = DB.exec("SELECT id FROM books WHERE id = #{book.id};")
  #     expect(result.values.size()).to eq(0)
  #   end
  # end
  #
  # describe('.all') do
  #   it('returns all books') do
  #     book1 = Book.new({:id => nil, :title => 'Red'})
  #     book2 = Book.new({:id => nil, :title => 'Green'})
  #     book3 = Book.new({:id => nil, :title => 'Yellow'})
  #     book1.save()
  #     book2.save()
  #     book3.save()
  #     expect(Book.all().size).to eq(3)
  #   end
  # end
  #
  # describe('.find') do
  #   it('returns the book with the input id') do
  #     book1 = Book.new({:id => nil, :title => 'Red'})
  #     book2 = Book.new({:id => nil, :title => 'Green'})
  #     book1.save()
  #     book2.save()
  #     expect(Book.find(book2.id)).to eq(book2)
  #   end
  # end
  #
  # describe('#==') do
  #   it('returns true if the objects @id and @title are equal') do
  #     book1 = Book.new({:id => nil, :title => 'Red'})
  #     book1.save()
  #     book2 = Book.find(book1.id)
  #     expect(book1).to eq(Book.find(book2.id))
  #   end
  # end
  #
  # describe('#==') do
  #   it('returns false if the objects @id and @title are not equal') do
  #     book1 = Book.new({:id => nil, :title => 'Red'})
  #     book1.save()
  #     book2 = Book.find(book1.id)
  #     book3 = Book.new({:id => nil, :title => 'Red'})
  #     book3.save
  #     expect(book1).not_to eq(Book.find(book3.id))
  #   end
  # end
  #
  # describe('#update_title') do
  #   it('will change the title of the book') do
  #     book1 = Book.new({:id => nil, :title => 'Red'})
  #     book1.save()
  #     book1.update_title!('Green')
  #     book2 = Book.find(book1.id)
  #     expect(book2.title).to eq('Green')
  #   end
  #
  # end
end
