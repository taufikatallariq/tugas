users = []
puts "masukkan username"
username =  gets.chomp
puts "masukkan password"
password = gets.chomp

users.push({:username => username, :password => password})

# puts "masukkan username lagi"
# username =  gets.chomp
# puts "masukkan password lagi"
# password = gets.chomp
# puts users.select{ |user| user[:username] == username && user[:password] == password}

# user = {:password => password}

block = 1
while block <= 3 do
    puts "masukkan username yang benar"
    username = gets.chomp
    puts "masukkan password yang benar"
    password = gets.chomp
    verification =  users.select{ |user| user[:username] == username && user[:password] == password}
    if verification.any?
        a = "Berhasil"
        break
    else
        puts "salah, coba lagi"
    end
    block += 1
end

if a == "Berhasil"
    puts a
else
    puts "Anda telah memasukkan password 3 kali, akun diblokir"
end 