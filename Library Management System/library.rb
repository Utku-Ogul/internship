require_relative 'utils'
require_relative 'book'

class Library
  def initialize
    @books = []
  end

  def add_book(book)
    @books << book
    puts "Kitap başarıyla eklendi!"
  end

  def list_books
    if @books.empty?
      puts "Kütüphane boş."
    else
      @books.each_with_index do |book, index|
        puts "#{index + 1}. #{book}"
      end
    end
  end

  def find_book_by_title(title)
    found_books = @books.select { |book| book.title.downcase.include?(title.downcase) }
    if found_books.empty?
      puts "Kitap bulunamadı."
    else
      found_books.each { |book| puts book }
    end
  end

  def remove_book_by_title(title)
    initial_size = @books.size
    @books.delete_if { |book| book.title.downcase.include?(title.downcase) }
    if initial_size == @books.size
      puts "Kitap bulunamadı."
    else
      puts "Kitap(lar) başarıyla silindi!"
    end
  end
end

library = Library.new

loop do
  Utils.clear_screen
  Utils.display_menu
  choice = gets.chomp.to_i

  case choice
  when 1
    print "Kitap Başlığı: "
    title = gets.chomp
    print "Yazar: "
    author = gets.chomp
    print "ISBN: "
    isbn = gets.chomp
    book = Book.new(title, author, isbn)
    library.add_book(book)
  when 2
    library.list_books
  when 3
    print "Aranacak Kitap Başlığı: "
    title = gets.chomp
    library.find_book_by_title(title)
  when 4
    print "Silinecek Kitap Başlığı: "
    title = gets.chomp
    library.remove_book_by_title(title)
  when 5
    puts "Çıkış yapılıyor..."
    break
  else
    puts "Geçersiz seçenek."
  end

  puts "Devam etmek için Enter'a basın..."
  gets
end
