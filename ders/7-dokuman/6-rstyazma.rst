Rst Yazı Yazma
==============

Rst formatında yazı yazmak için yazım kuralları şunlardır.

usage 		syntax 				HTML rendering
- italic 		*italic* 		italic
- bold 		**bold** 			bold
- link 		`python <www.python.org>`_ 	python
- verbatim 	``*`` 				*


Başlıklar
---------

Başlık yazmak için altını çizebilir veya altını çizebilirsiniz.

İki kural:

        - Alt ve üst çizgi kullanılıyorsa uzunlukları aynı olmalıdır
        - Alt çizginin uzunluğu en az başlığın kendisi kadar uzun olmalıdır

Normalde belirli karakterlere atanmış başlık düzeyleri yoktur. Yapı, başlıkların sırasına göre belirlenir. Ancak proje boyunca aynı kurala bağlı kalmak daha iyidir. Örneğin:



- # üst çizgili, parçalar için
* * üst çizgili, bölümler için
* = , bölümler için
* - , alt bölümler için
* ^ , alt bölümler için
* “ , paragraflar için


Maddelendirmeler
----------------

* Bu madde işaretli bir listedir.
 *İki öğesi var, ikincisi
   öğe iki satır kullanır.  (girintiye dikkat edin)

 1. Bu numaralandırılmış bir listedir.
 2. Onun da iki öğesi var.

 #.  Bu numaralandırılmış bir listedir.
 #.  Onun da iki maddesi var.

Kod Paylaşma
------------

.. code-block:: html
   :linenos:

   <h1>code block example</h1>
   
Resim
-----

.. image:: stars.jpg
    :width: 200px
    :align: center
    :height: 100px
    :alt: alternate text 

İndirme
-------

İndirme linki vermek iiçin;

| :download:`download samplet.py <sample.py>`


.. raw:: pdf

   PageBreak
