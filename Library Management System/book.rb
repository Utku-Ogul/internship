class Book
  attr_accessor :title, :author, :isbn

  def initialize(title, author, isbn)
    @title = title
    @isbn = isbn
    @author = author
  end

  def to_s
    "Title: #{@title}, Author: #{@author}, ISBN: #{@isbn}"
  end
end
