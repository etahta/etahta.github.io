Etahta Wikiye Hoşgeldiniz
=========================

Sistem Hakkında
^^^^^^^^^^^^^^^
Bu dağıtım tahtalarda açık kaynaklı sistemleri kullanarak hızlı ve pratik bir şekilde tahtayı kullanma amaçlanmıştır.

* Sistemin kolay bir şekilde kullanılması için bir çok yazılım içerisinde kurulu gelmektedir.

* Öğretmenlerin temel ihtiyaçları hedeflenerek planlanlanmıştır.

    .. image:: /_static/images/1-etahta.png

    .. image:: /_static/images/2-etahta.png 

    .. image:: /_static/images/3-etahta.png

    .. image:: /_static/images/4-etahta.png

    .. image:: /_static/images/5-etahta.png

İmaj Açıklamaları
^^^^^^^^^^^^^^^^^
    0- AMD olmayan Faz1, Faz2 ve Faz3 tahtalarda kullanılabilir.

    1- e-kilit sistemine ihtiyaç olmayacak şekilde tasarlandı(girişe iki farklı qr uygulaması eklendi)

    2- EbaQr ile sisteme giriş sistemi eklendi.
          - ebaqr kullanıcı şifresi  kurulum sırasında rasgele oluşturulmaktadır.  
          - Şifre değişikliği yapmayınız. Şifre değişirse ebaqr girişi yapılamaz. 
          - Telefon ve tahta aynı ağda olma şartı yoktur.
          - Tahta internetini telefondan paylaşıp bu işlemleri yapabilirsiniz. Tahtaya öncesinde cep telefonu wi-fisini paylaşmış olmanız yeterlidir.

    3- Qr ile sistemdeki kullanıcılardan birini seçerek telefon ile giriş eklendi
          - Telefon ve tahta aynı ağda olmalıdır.
          - Tahta internetini telefondan paylaşıp bu işlemleri yapabilirsiniz. Tahtaya öncesinde cep telefonu wi-fisini paylaşmış olmanız yeterlidir.

    4- 3 farklı kalem eklendi(e-tahta, parduspen, fatih kalem)

    5- Klavye yenilendi.

    6- Wine kurulu(8.0)
      - Wine ilk defa açıldığında hazır değil.. 
      - Çalışır hale gelmesi için fatih kalem çalıştırılmalıdır.
      - Fatih kalem exe uzantılı bir windows uygulamasıdır..
      - Bu uygulama wine uygulamasını yapılandıracaktır...
      - Eğer çalışmama gibi durumlarla karşılaşmanız durumunda;
            .. code-block:: shell
                
                sudo rm -rf /opt/windows
                sudo rm -rf /home/$USER/.wine

            * Komutlarını çalıştırıp yeniden başlatınız ve 6. madde aşamalarını baştan uygulayınız..

            * moremore z kitabını çalıştırmak  için okuyunuz.****

 
    7- Java dosyaları çalışır hale getirildi

    8- Flash(swf)dosyaları çalışır hale getirildi 

    9- Ağ kontrol sistemi yüklenmiştir(client olarak) 

    10- Only Ofis kurulu.Only ofis büyük gözüküyorsa buradan ayarlayabilirsiniz..

        .. image:: /_static/images/6-etahta-onlyoffice.png
          :width: 400

    11- Sağ tuş iki parmak dokunuşudur.

    12- imajı yüklemek için ventoy kullanın. Rufus kullanan ise DD modunda gpt olarak flash belleğe imajı yazdırın Sonra da kurulumu gerçekleştirin

    13- **etapadmin ve ogretmen kullanıcı parolaları "1" dir.** İlk açıldığında şifre değiştirme için uygulama açılacaktır.
 
    14- Usb Anahtar Oluşturma ve Usb ile Açma yazılımı imaj içinde mevcuttur. Detay için okuyunuz..

**İmajı indirmek için tıklayınız.** indir_

.. _indir: https://github.com/etahta/stable/releases/download/current/etahta.iso


Kaynak kod ve dokümanlarımız yansılarımız:

* https://github.com/etahta/etahta.github.io adresine pull request gönderebilirsiniz.
* https://etahta.github.io/rst2pdf.pdf adresinden çevirimdışı pdf formatında da erişebilirsiniz.
* https://bayramkarahan.blogspot.com
