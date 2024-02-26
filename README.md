# Şubat Ayı Çalışma Raporları için

# Zero-Knowledge Projeleri Uygulaması

Bu uygulama, kullanıcıların Zero-Knowledge teknolojileri ile ilgili çeşitli projelere erişimini sağlar. Özellikler şunları içerir:

## Çalıştırma

Bu, Ruby ile yazılmış bir komut satırı (CLI) uygulamasıdır. Başlamak için aşağıdaki adımları izleyin:

1. **Ruby'yi Kurun:** https://www.ruby-lang.org/en/downloads/ adresinden bilgisayarınıza Ruby'yi indirin ve kurun.

2. **Gerekli Gemleri Kurun:** Proje için aşağıdaki Ruby gem'leri gerekir:
   * `digest`: Şifreleri karma hale getirmek için
   * `io/console`: Kullanıcı girişini gizlemek için (şifre girişi sırasında)

   Terminalinizi veya komut isteminizi açın ve aşağıdaki komutu girerek bunları kurun:
   ```bash
   gem install digest io-console

Uygulamayı İndirin/Klonlayın: Proje kodunu indirin veya GitHub deposunu klonlayın.

Uygulamayı Çalıştırın: Terminal/komut isteminde proje dizinine geçin ve şunu çalıştırın:

  ```
ruby main.rb
```

## Özellikler
Kullanıcı Kayıt Sistemi: Uygulama, kullanıcıların bir kullanıcı adı ve şifre oluşturmasına olanak tanır. Şifreler güvenlik için karma hale getirilir ve bir dosyada saklanır.
        Giriş Sistemi: Kayıtlı kullanıcılar, kullanıcı adlarını ve şifrelerini kullanarak giriş yapabilirler.
        Ana Menü : Kullanıcılar, aşağıdakileri de içeren bir ana menü aracılığıyla çeşitli projeleri keşfedebilirler:
        Makaleler: Zero-Knowledge teknolojileri ile ilgili makalelerin bir listesi (harici sitelere bağlantılar sağlar).
        Github Repoları: Zero-Knowledge tabanlı projelerin olduğu GitHub depolarının bir listesi (harici sitelere bağlantılar sağlar).
        Atlaspad Çalışmaları: Atlaspad tarafından başlatılan Zero-Knowledge projelerinin bir açıklaması.
        Freelance Projeler: Zero-Knowledge teknolojilerini kullanan freelance proje örnekleri.
        Kullanıcı Profili: Basit kullanıcı profili bilgileri (yalnızca görüntüleme, düzenleme yok).
