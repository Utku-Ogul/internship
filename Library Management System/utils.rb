module Utils
  def self.clear_screen
    system("clear") || system("cls")
  end

  def self.display_menu
    puts "Kütüphane Yönetim Sistemi"
    puts "1. Kitap Ekle"
    puts "2. Kitapları Listele"
    puts "3. Kitap Ara"
    puts "4. Kitap Sil"
    puts "5. Çıkış"
    print "Bir seçenek girin: "
  end
end
