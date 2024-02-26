require 'digest'
require 'io/console'

# Kullanıcı verileri
def load_users
  users = {}
  if File.exist?('users.txt')
    File.readlines('users.txt').each do |line|
      username, password_hash = line.chomp.split(',')
      users[username] = password_hash
    end
  end
  users
end

# Kullanıcı kaydetme
def save_user(username, password)
  hashed_password = Digest::SHA256.hexdigest(password)
  File.open('users.txt', 'a') do |file|
    file.puts("#{username},#{hashed_password}")
  end
end

# Kayıt olma
def register
  puts "**Kayıt Ol**"

  username = ask_username
  password = ask_password

  users = load_users

  if users.key?(username)
    puts "Bu kullanıcı adı zaten alınmış."
  else
    save_user(username, password)
    puts "Kayıt başarılı!"
    login
  end
end

# Giriş yapma
def login
  puts "**Giriş Yap**"

  username = ask_username
  password = ask_password

  users = load_users

  hashed_password = Digest::SHA256.hexdigest(password)
  if users[username] && users[username] == hashed_password
    puts "Giriş başarılı!"
    app_main_menu
  else
    puts "Hatalı kullanıcı adı veya şifre!"
    login
  end
end

# Gizli giriş fonksiyonu
def ask_username
  print "Kullanıcı Adınız: "
  gets.chomp
end

def ask_password
  print "Şifreniz: "
  STDIN.noecho(&:gets).chomp
end

# Ana menü
def app_main_menu
  puts "**Ana Menü**"

  puts "1. Makaleler"
  puts "2. Github Repoları"
  puts "3. Atlaspad Çalışmaları"
  puts "4. Freelance Projeler"
  puts "5. Profilim"
  puts "6. Çıkış"

  choice = gets.chomp.to_i

  case choice
  when 1
    show_articles
  when 2
    show_github_repos
  when 3
    show_atlaspad_works
  when 4
    show_freelance_projects
  when 5
    show_profile
  when 6
    puts "Çıkış yapılıyor..."
    exit
  else
    puts "Geçersiz seçim. Lütfen tekrar deneyin."
    app_main_menu
  end
end

# Makaleler
def show_articles
  puts "**Makaleler**"

  puts "1. ZK Snark"
  puts "2. Atlaspad ZK Launchpad"

  choice = gets.chomp.to_i

  case choice
  when 1
    system("open https://medium.com/@baturalpguvenc/zk-snark-3a0eba755fb5")
  when 2
    system("open https://medium.com/@baturalpguvenc/atlaspad-zk-launchpad-7180481a125d")
  else
    puts "Geçersiz seçim. Lütfen tekrar deneyin."
    show_articles
  end
end

# Github repoları
def show_github_repos
  puts "**Github Repoları**"

  puts "1. Nix Mina Yarn"
  puts "2. Zkapp Merkle"
  puts "3. Zkapp UI"
  puts "4. Zkchat"

  choice = gets.chomp.to_i

  case choice
  when 1
    system("open https://github.com/virjilakrum/nix-mina-yarn")
  when 2
    system("open https://github.com/virjilakrum/zkapp-merkle")
  when 3
    system("open https://github.com/virjilakrum/zkapp-UI")
  when 4
    system("open https://github.com/virjilakrum/zkchat")
  else
    puts "Geçersiz seçim. Lütfen tekrar deneyin."
    show_github_repos
  end
end

def show_atlaspad_works
  puts "Atlaspad çalışmaları burada listelenecek."
end

def show_freelance_projects
  puts "Freelance projeler burada listelenecek."
end

def show_profile
  puts "Profil"
end

# Programı başlat
def start_app
  puts "Uygulamaya hoşgeldiniz!"
  puts "1. Kayıt Ol"
  puts "2. Giriş Yap"

  choice = gets.chomp.to_i

  case choice
  when 1
    register
  when 2
    login
  else
    puts "Geçersiz seçim. Lütfen tekrar deneyin."
    start_app
  end
end

start_app
