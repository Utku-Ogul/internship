# dosyalardaki ortak noktalar olacak  oda ana ekran menüsü olarak yapabiliriz.



module Utils
  def self.diplayMenü

    puts "Kütüphane Yönetim Sistemi"
    puts "1. Kitap Ekle"
    puts "2. Kitaplari Listele"
    puts "3. Kitap Ara"
    puts "4. Kitap Sil"
    puts "5. Çikiş"

    print "Ne yapmak istiyorsunuz: "

    
  end
end

=begin

self. nın amacı modülü fonksiyonun içinde direkt olarak kullanabilmektir.
eğer kullanmazsak şöyle bi yol izlememiz gerekir

# Modülün örneğini oluşturmak ve yöntemlere erişmek için:
utils = Object.new
utils.extend(Utils)

utils.clear_screen
utils.display_menu

bunun ana kodun içine yazmamız gerkir orada modülün bir kopyasını oluşturup kullanması için.

=end