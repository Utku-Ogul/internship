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
      @books.each do |book|
        puts book
      end
    end
  end

  def find_book_by_title(title)
    found_books= @books.select{|book| book.title.downcase.include?(title.downcase)}
   

     
#   collection.select { |element| condition }
#   collection: Üzerinde işlem yapılacak koleksiyon (örneğin, bir dizi).
#   element: Koleksiyonun her bir elemanı.
#   condition: Elemanın karşılaması gereken koşul.


#   title.downcase:

#  title stringinin tüm harflerini küçük harfe dönüştürür.
#  Örneğin, "Hello World".downcase ifadesi "hello world" sonucunu verir.
#  Bu, karşılaştırmanın büyük/küçük harf duyarlılığını ortadan kaldırır ve arama işlemini daha esnek hale getirir.

#   include?(other_string):

#  Bu metot, bir stringin başka bir stringi içerip içermediğini kontrol eder.
#  Eğer içeriyorsa true, içermiyorsa false döner.
#  Örneğin, "hello world".include?("world") ifadesi true sonucunu verir.


    if found_books.empty?
      puts "kitap bulunamadi"
    else
      found_books.each do |book|
        puts book
      end
    end
  end
 
  def remove_book_by_title(title)

    initial_size = @books.size
    @books.delete_if{|book| book.title.downcase.include?(title.downcase)}


  #   collection.delete_if { |element| condition }

  # collection: Üzerinde işlem yapılacak koleksiyon (örneğin, bir dizi veya hash).
  # element: Koleksiyonun her bir elemanı.
  # condition: Elemanın karşılaması gereken koşul.



    if initial_size == @books.size
      puts "kitap bulunnamadi"
    else
      puts "kitap başariyla silindi"
    end
  end
end

library=Library.new

=begin

count = 0

loop do
  puts "Count is: #{count}"
  count += 1
  break if count >= 5
end

puts "Loop is done!"


=end
loop do

  Utils.displayMenu
  choice= gets.chomp.to_i

  case choice
  when 1
    print "kitap basliği:: "
    title = gets.chomp
    print "Yazar: "
    author = gets.chomp
    print "yili:: "
    year = gets.chomp
    book = Book.new(title, author, year)
    library.add_book(book)
  when 2
    library.list_books
  when 3
    print "aranacak kitap: "
    title =gets.chomp
    library.find_book_by_title(title)
  when 4
    print "silinecek kitap: "
    title=gets.chomp
    library.remove_book_by_title(title)
  when 5
    puts "iyi günler"
    break

  end

end
