Wine Nedir
==========

Wine, Linux kullanıcılarına Windows uygulamalarını kullanma esnekliği sağlar, ancak her uygulamanın sorunsuz çalışacağının garantisi yoktur. Wine'ın resmi web sitesi olan **winehq.org**'da, desteklenen uygulamaların bir listesini bulabilirsiniz.

Wine kurulmadan önce kurulacak sitem hakkında bilgi sahibi olmalıyız. Burada anlatılan kurulum debian için anlatılacaktır.
Debianın hangi sürümü olduğunu anlamak için **https://www.debian.org/releases/** adresinden bulabilirsiniz.

- Şimdiki "kararlı==stable" Debian dağıtımı, 12, kod adı **bookworm**.
- Şimdiki "test" dağıtımın kod adı trixie'dir
- "unstable==kararsız" dağıtımın kod adı sid'dir.

Hazırlık
--------

Sisteminiz 64 bit ise, 32 bit mimariyi etkinleştirin:

.. code-block:: shell

	sudo dpkg --add-architecture i386

Depo Anahtarı Ekleme
--------------------


Depo anahtarını indirin ve ekleyin: 

.. code-block:: shell

	sudo mkdir -pm755 /etc/apt/keyrings
	wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo gpg --dearmor -o /etc/apt/keyrings/winehq-archive.key -

Depo Ekleme
-----------

.. code-block:: shell

	# Debian Testing 
	#sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/trixie/winehq-trixie.sources

	# Debian stable 12 bookworm sadece alttaki satır aktif olduğuna dikkat ediniz.
	sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources

	# Eski sürüm Debian 11 
	#sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bullseye/winehq-bullseye.sources

Başka debian sürümleri için https://gitlab.winehq.org/wine/wine/-/wikis/Debian-Ubuntu adresini ziyaret ediniz.

Kurulum 
-------

Aşağıdaki wine sürümlerinden birini yükleyebilirsiniz. 

.. code-block:: shell

	# Kararlı  sürüm, en hatasız
	sudo apt install --install-recommends winehq-stable
	#geliştirme, az hatalı
	#sudo apt install --install-recommends winehq-devel
	#Daha deneysel özellikler içerir, en hatalı
	#sudo apt install --install-recommends winehq-staging

Uygulama Çalıştırma
-------------------

Terminali açın ve Wine ile uygulamayı çalıştırmak için aşağıdaki komutu kullanın: 

.. code-block:: shell

	wine /path/to/application.exe
	
Wine stable ile bir program çalıştıma: **wine program.exe**

Wine deneysel ile uygulama çalıştırma: **WINEPREFIX=~/wine-staging /opt/wine-staging/bin/wine program.exe**

İstenilen Sürümü Kurma
----------------------
Wine son yayınlanan sürümü kurar. Fakat bazen isteğimiz bir sürümü kurmak isteyebiliriz. 
Sürümleri https://dl.winehq.org/wine-builds/debian/dists/bookworm/main/binary-amd64/ adresinden bulabiliriz. 
Aşağıda 9.0 versiyonunu kurmak için komut verilmiştir.

.. code-block:: shell

	apt install winehq-stable=9.0.0.0~bookworm-1 wine-stable=9.0.0.0~bookworm-1 \
	wine-stable-amd64=9.0.0.0~bookworm-1 wine-stable-i386=9.0.0.0~bookworm-1 -y

İnternet Olmadan Yükleme
------------------------

Wine'ı internet erişimi olmayan bir makineye kurmak için; 

.. code-block:: shell

	sudo apt-get clean
	
	# sudo apt --download-only install winehq-<branch> örnek kullanımı
	# stable 9.0 yüklemek için
	sudo apt install winehq-stable=9.0.0.0~bookworm-1 wine-stable=9.0.0.0~bookworm-1 \
	wine-stable-amd64=9.0.0.0~bookworm-1 wine-stable-i386=9.0.0.0~bookworm-1 -y
	
	sudo apt-get --download-only dist-upgrade

Deb Paketlerini Kopyalama
-------------------------

İndirilen deb paketlerini USB belleğe veya sistemde bir yere kopyalabiliriz. 
Ben kullanıcı dizinideki **deb-pkgs** konumuna kopyaladım.

.. code-block:: shell
	
	cp -R /var/cache/apt/archives/ /home/$USER/deb-pkgs/

Bu paketleri internet olmayan bir bilgisayara kurabiliriz.


Wine Kurulumu
+++++++++++++

Uçbirimde aşağıdaki komutlar ile yükleyebilirsiniz;
Bu komutları sudo su root komutunu çalıştırıp root olduktan sonra kullanınız..

.. code-block:: shell

	#!/bin/bash
	apt --fix-broken install -y
	apt-get install -f -y # eksik bağımlılıkları tamamlaması için.
	apt --purge remove wine* -y
	apt autoremove -y
	apt update
	dpkg --add-architecture i386
	apt install software-properties-common -y
	
	#genel key ekleniyor
	wget -O /tmp/winehq.key https://dl.winehq.org/wine-builds/winehq.key
	dpkg --add-architecture i386
	apt install software-properties-common -y
	apt-key add /tmp/winehq.key
	#key ekleniyor
	mkdir -pm755 /etc/apt/keyrings
	rm -rf /etc/apt/keyrings/winehq*
	wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo gpg --dearmor -o /etc/apt/keyrings/winehq-archive.key -
	
	#repostory ekleniyor
	echo 'deb https://dl.winehq.org/wine-builds/debian/ bookworm main'> /etc/apt/sources.list.d/winehq.list
	apt update
	#debian en son stable versiyonunu https://www.debian.org/releases/ adresten bulabilirsiniz.
	# güncel debian  12.9 olup ismini bookworm olarak kullanmaktadırlar
	#https://dl.winehq.org/wine-builds/debian/dists/bookworm/main/binary-amd64/
	#üstteki adresten versiyonlarını bulabilirsiniz.
	apt install winehq-stable=9.0.0.0~bookworm-1 wine-stable=9.0.0.0~bookworm-1 \
	wine-stable-amd64=9.0.0.0~bookworm-1 wine-stable-i386=9.0.0.0~bookworm-1 -y
	apt install libgtk3-nocsd0:i386 -y
	apt install gnupg2 -y
	apt install --no-install-recommends winetricks -y
	apt install mono-complete -y
	apt autoremove -y
	apt autoclean -y
	rm -rf /etc/apt/sources.list.d/winehq*
	rm -rf /etc/apt/keyrings/wine*
	apt update


.. raw:: pdf

   PageBreak

