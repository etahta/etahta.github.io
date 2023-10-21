# usbkeycreater
<img src="usbkeycreatergui/icons/usbkeycreater.svg" width="100" height="100" />
Bu proje usb anahtar hazırlama ve açılmasını içeren bir projedir.

**Kurulum:**

Kurulum için deb paketini indirip kurununuz.

**Usb Hazırlamak:**

Aşağıdaki aşamaları sırasıyla uygulayarak usb disk hazırlanabilir.

<img src="1.png" width="600" height="600" />
<img src="2.png" width="600" height="600" />
<img src="3.png" width="600" height="600" />
<img src="4.png" width="600" height="600" />

Disk hazırlandı mesajını aldığınızda usb diskiniz hazırlanmıştır.

**Usb Anahtar Olarak Kullanma:**

1- Sistemi yeniden başlatın

2- Oturum açma giriş ekranına geldiğinde usb diskiniz takınız.

3- Usb disk takılınca sistem ebaqr kullanıcısıyla açılacaktır.

4- Oturum açıkken usb diski çıkartığınız  oturumu kapatacaktır.

5- Eğer disk çıkartıldığında başka bir farklı bir komut çalıştırmak isterseniz;

/usr/share/usbkeycreater/command.conf dosya içeriğini değiştirin.

**Örnek 1(Oturum Kapatma varsayılan bu var):**

sudo echo "loginctl terminate-seat seat0">/usr/share/usbkeycreater/command.conf

**Örnek 2(Sistemi Kapatma):**

sudo echo "poweroff">/usr/share/usbkeycreater/command.conf

**Örnek 3(Sistemi Yeniden Başlatma):**

sudo echo "reboot">/usr/share/usbkeycreater/command.conf

Yukarıdaki örnekleri veya başka bir işi yapacak komutları çalıştırabilirsiniz. Kurulduğunda varsayılan olarak ilk örnek çalışacak şekilde ayarlanmıştır.
Terminalde örneklerde gösterilen komut çalıştırılarak görev tanımlaması yapabilirsiniz.

