#burda library de kitap eklem çıkarma listeleme 

require_relative 'utils'
require_relative 'book'

#bunlar diğer dosyaları entegre etmek içn kullanılıyor.

class Library
  def initialize
    @books=[]
  end

  # eklenen kitapları burda deoplayacaz

  def add_book(book)
    @books << book 
    puts "kitap eklendi"
  end

  #<< book: << operatörü, @books dizisinin sonuna book nesnesini ekler.
  #Yani, book nesnesi @books dizisine eklenir.

  def list_books
    if @books.empty?
      puts "kütüphane boş"
      #Ruby'de .empty? metodu, bir koleksiyonun (dizi, hash, string, vb.) boş olup olmadığını kontrol etmek için kullanılır. 
      #Eğer koleksiyon boşsa true, değilse false döner. 
    else 
      @book.each do |book|
        puts book
      end
    end
  end

  def find_book_by_title(title)
    