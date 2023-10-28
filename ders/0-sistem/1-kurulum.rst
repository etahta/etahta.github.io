Sistem Kurulumu
===============

İmaj Dosyası İndirme
^^^^^^^^^^^^^^^^^^^^

**İmajı indirmek için tıklayınız.** indir_

.. _indir: https://github.com/etahta/stable/releases/download/current/etahta.iso


UsbDisk Hazırlama
^^^^^^^^^^^^^^^^^

Ventoy Hazırlama
++++++++++++++++

* imajı yüklemek için ventoy kullanın.
* Ventoy indirmek için tıklayınız_

.. _tıklayınız: https://www.ventoy.net/en/download.html

Rufus Hazırlama
+++++++++++++++

* Rufus kullanan ise DD modunda gpt olarak flash belleğe imajı yazdırın
* Rufus indirmek için tıkla_

.. _tıkla: https://rufus.ie/tr/#

Sistem Kurma
^^^^^^^^^^^^

Sistem kurlumu **AMD olmayan, İntel Faz1, Faz2 ve Faz3** tahtalarda kullanılabilir.
	
Kurulum İşlemi
++++++++++++++
	
* Kurulum için fizki bir klavye takılır.
* Tahta açma düğmesinden başlatılır.
* Açılırken klavyeden Vestel ve Aidata tahtalarda F7 tuşuna, Arçeliklerde(Bios şifresi:9301) F12 tuşuna basılı
* Ön yükleme menüsü gelecektir.
* Açılan menüden USB Bellek seçilerek enter tuşuna basıp, usb üzerinden sistem açılışı yapılır
* Sitem açılışında aşağıdaki resimdeki gibi kurulum seçenekleri gelecektir.

	.. image:: /_static/images/1-kurulum-boot.png
    		:width: 600

- Canlı seçeneği sadece ram üzerinde çalışan sistemdir.
- Yükle (sda Diskli Faz-1-2-3'ler için) seçeneği ile sistemi kurabilirsiniz.
- Yükle (nvme Diskli Faz3'ler için) seçeneği ile Faz3 **nvme** diskli tahtalara kurulum yapınız.
	
* Tahtanıza uygun kuurlumu seçip kurlumun tammalanmasını bekleyiniz.
* Kurulum tammalandığında tahta yeniden başlayacaktır. 
* Tahta yeniden başladığında usb diskimizi çıkartmalıyız.
* Tahtamız kurluna sistem üzerinden açılacaktır.
* Sistemin kullanıcılarının şifreleri **etapadmin ve ogretmen kullanıcı parolaları "1" dir.**
* İlk açıldığında şifre değiştirme için uygulama açılacaktır. Uygun bir şifre belirleyiniz.

.. raw:: pdf

   PageBreak
