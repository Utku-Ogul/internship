=begin
  


gets.to_i  #hem string alır hemde stringi int yapmak için
gets.to_f  #hem string alır hemde stringi float yapmak için
nil #bideğer nil e eşitse ona hiçbirşey atanmamaıştır demek oluyor
gets.chomp() değerin sonundaki \n i kabul etmeyecektir bunu ifli işlemlerde kullanmak daha yararlı olacatır
 
print "Birinci sayi: "

firstNumber = gets.to_i

print "İkinci sayi: "

secondNumber = gets.to_i

puts secondNumber + firstNumber 


a = "Yazilim dersleri"

puts a.length()

langs=["aaaaa","bbb",3.14,2,false] #böyle değerler bir arada bulanabiliyor

puts langs[1]
puts langs[-1] #testen okuyabiliyor

cities={
  "ankara" =>3,
  "istanbul" => 5
}


puts cities
puts cities["ankara"]

def merhaba()
  puts "aaaaaa"
end

merhaba


grad = false

if grad 
  puts  "mezunsun"
else
  puts "mezun değilsin"
end


option= 4

case option

when 1
  puts "işlem 1"
when 2
  puts "işlem 2"
when 4 
  puts "işlem 4"
else 
  puts "geçersiz işlem"
end

langs = ["Ruby", "Python", "JavaScript", "C++"]

for langs in langs

  puts langs 
end


langs = ["Ruby", "Python", "JavaScript", "C++"]

langs.each do |lang|
  puts lang
end

===ikiside for döngüsü olarak kullanabiliyor


for number in 1..10  #".." anlamı kadar anlamına denk geliyor
  puts number
end


4.times do |number|  #.times  sıfırdan başlayarak oraya kadar gelir ama son sayıyı dahil etmez
  
  puts  number
end

file= File.open("mezun.txt","r") #sadece okuma işlemi yapacağı için "r" yazıyoruz

puts file.read()

puts file.readline()
file.close()

File.open("mezun.txt","r") do |file|
  for line in file.readlines()
    puts line 
    puts "---------"
  end
end

File.open("mezun.txt","a") do |file| #dosyaya yazı yacağımız için "a" kipini kulnacaz

  file.write("kamil,gazi\n")
  file.write("oktay,ankara\n")

end







=end











