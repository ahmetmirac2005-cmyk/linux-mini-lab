# Mini Linux Sistem Yönetimi Projesi

## Ne Yaptım?

Mustafa Akgül Özgür Yazılım Yaz Kampı'nda (Bolu) oluşturduğum Ubuntu Server 
sanal makinesini temel alarak, kamp sonrası kendi başıma sistem yönetimi 
becerilerimi geliştirmek için bu ortamı genişlettim. Bu proje, teorik olarak 
bildiğim Linux konularını pratiğe dökmek ve staj/iş başvurularımda 
gösterebileceğim somut bir çalışma olarak hazırlandı.

## Neler Kurdum ve Yapılandırdım?

- **Ubuntu Server 26.04 LTS** (VirtualBox, NAT ağ modu)
- **SSH ile uzaktan erişim** — Port forwarding (host 2222 → guest 22) ile Windows 
  makinemden VM'e SSH bağlantısı kurdum
- **nginx web sunucusu** kurulumu ve çalışır hale getirilmesi (port forwarding: 
  host 8080 → guest 80)
- **ufw firewall** yapılandırması — sadece SSH (22) ve HTTP (80) trafiğine izin 
  verecek şekilde ayarlandı
- **Bash ile otomatik yedekleme scripti** — nginx yapılandırma dosyalarını 
  zaman damgalı olarak yedekleyen script
- **Cron job** ile scriptin her gece otomatik çalışması sağlandı

## Kullanılan Komutlar (Özet)

```bash
# Nginx kurulumu
sudo apt update
sudo apt install nginx -y

# Firewall ayarları
sudo ufw allow ssh
sudo ufw allow http
sudo ufw enable

# Backup scriptini çalıştırılabilir yapma
chmod +x backup.sh

# Cron job ekleme (her gece 03:00'te çalışır)
crontab -e
# eklenen satır: 0 3 * * * /home/mirac/backup.sh
```

## Backup Script (backup.sh)

Bkz. [backup.sh](./backup.sh) dosyası.

## Neden Yaptım?

Management Information Systems bölümünde okuyorum ve sistem yönetimi alanında 
staj arıyorum. Bu projeyle, sadece ders içeriğinde kalmayıp temel Linux sistem 
yönetimi becerilerini (SSH, web sunucusu yönetimi, güvenlik duvarı yapılandırması, 
otomasyon) kendi başıma uygulamalı olarak deneyimlemek istedim.
