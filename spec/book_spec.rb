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

end
