# burada kitap classı olacak kitap bilgileri: ismi yazarı ve yazım yılı şekilde olacak

class Book
  attr_accessor :title, :author :year

  def initialize(title,author,year)

    @title= title
    @author= author
    @year= year
  end

  def to_s
    "Title: #{@title},  Author: #{@Author}, Year: #{@year}"
  end
  

end






=begin
attr_accessor, bir sınıf örneği değişkeni (instance variable) için hem okuma (getter) 
hem de yazma (setter) yöntemi oluşturur.
Bu, bu değişkene hem erişim sağlamak hem de değer atamak için kullanılır.


Neden @ Kullanıyoruz? (c++ daki protected gibi )

Nesneye Özgü Değişkenler: @ işareti, değişkenin nesneye özgü olduğunu ve o nesneye ait olduğunu belirtir.


Kapsülleme: Bu değişkenler, nesne içindeki verilerin kapsüllenmesini sağlar, 
yani bu veriler sadece nesne içindeki metotlar tarafından erişilebilir ve değiştirilebilir.


to_s

Sınıfınızı tanımlarken to_s metodunu özelleştirirseniz,
bu metod çağrıldığında döndürülen stringi belirleyebilirsiniz. 
Özelleştirilmiş to_s metodu, nesnenizin daha anlamlı ve okunabilir bir temsilini sağlar.

Özellikle puts, print, to_s gibi string işlemleri sırasında nesnenin nasıl görüneceğini 
belirlemek için to_s metodunu kullanırsınız. Bu metod sayesinde nesneleri ekrana yazdırmak
veya string olarak işlemek daha anlamlı hale gelir.
=end 