Sistem Kurulumu
===============

İmaj Dosyası İndirme
^^^^^^^^^^^^^^^^^^^^

`İmajı indirmek için tıklayınız. <https://github.com/etahta/stable/releases/download/current/etahta.iso>`_


UsbDisk Hazırlama
^^^^^^^^^^^^^^^^^

Ventoy
------

	* imajı yüklemek için usb disk ventoy ile hazırlanabilir. Ventoy kullanmak ve usb disk hazırlamak için ventoy kullanım rehberine `bakınız. <2-ventoy.html>`_
	* `Ventoy indirmek için tıklayınız. <https://www.ventoy.net/en/download.html>`_

Rufus
-----

	* Rufus kullanan ise DD modunda gpt olarak flash belleğe imajı yazdırın
	* Rufus indirmek için `tıklayınız. <https://rufus.ie/tr/#>`_

Sistem Kurma
^^^^^^^^^^^^

Sistem kurlumu **Amd, intel tel Faz1, Faz2 ve Faz3** tahtalarda kullanılabilir.
	
Kurulum İşlemi
++++++++++++++
	
	- Kurulum için fizki bir klavye takılır.
	- Tahta açma düğmesinden başlatılır.
	- Açılırken klavyeden Vestel ve Aidata tahtalarda F7 tuşuna, Arçeliklerde(Bios şifresi:9301) F12 tuşuna basılı
	- Ön yükleme menüsü gelecektir.
	- Açılan menüden USB Bellek seçilerek enter tuşuna basıp, usb üzerinden sistem açılışı yapılır
	- Sitem açılışında aşağıdaki resimdeki gibi kurulum seçenekleri gelecektir.

		.. image:: /_static/images/1-kurulum-boot.png
	    		:width: 600

	- Canlı seçeneği sadece ram üzerinde çalışan sistemdir.
	- Yükle seçeneği ile sistemi kurabilirsiniz.
	- Tahtanıza uygun kurulumu seçip kurulumun tammalanmasını bekleyiniz.
	- Kurulum tammalandığında tahta yeniden başlayacaktır.
	- Tahta yeniden başladığında usb diskimizi çıkartmalıyız.
	- Tahtamız kurluna sistem üzerinden açılacaktır.
	- Sistemin kullanıcılarının şifreleri **etapadmin ve ogretmen kullanıcı parolaları "1" dir.**
	- İlk açıldığında şifre değiştirme için uygulama açılacaktır. Uygun bir şifre belirleyiniz.

.. raw:: pdf

   PageBreak
