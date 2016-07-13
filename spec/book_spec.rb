require('spec_helper')

describe(Book) do

  # before(:each) do
  #   Book.clear()
  # end

  describe('#initialize') do
    it('instantiates a book object') do
      book = Book.new({:title => 'Cat in the Hat'})
      expect(book.class).to eq(Book)
    end

    it('instantiates a book with a title') do
      book = Book.new({:title => 'Cat in the Hat'})
      expect(book.title).to eq('Cat in the Hat')
    end

    it('instantiates a book with an id') do
      book = Book.new({:id => 1, :title => 'Red'})
      expect(book.id).not_to eq(nil)
    end
  end

  describe('#save') do
    it('creates/stores book objects on the database') do
      book = Book.new({:id => nil, :title => 'Red'})
      book.save()
      result = DB.exec("SELECT title FROM books WHERE title = 'Red';")
      expect(result.getvalue(0,0)).to eq('Red')
    end
  end

  describe('.delete_all') do
    it('deletes stored book objects on the database') do
      book = Book.new({:id => nil, :title => 'Blue'})
      book.save()
      Book.delete_all
      result = DB.exec("SELECT * FROM books;")
      expect(result.values.size()).to eq(0)
    end

  end

end
