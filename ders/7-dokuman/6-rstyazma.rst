Rst Yazı Yazma
==============

Rst formatında yazı yazmak için yazım kuralları şunlardır.


.. code-block:: shell

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



.. code-block:: shell

- # üst çizgili, parçalar için
* * üst çizgili, bölümler için
* = , bölümler için
* - , alt bölümler için
* ^ , alt bölümler için
* “ , paragraflar için


Maddelendirmeler
----------------

.. code-block:: shell

* Bu madde işaretli bir listedir.
 *İki öğesi var, ikincisi
   öğe iki satır kullanır.  (girintiye dikkat edin)

 1. Bu numaralandırılmış bir listedir.
 2. Onun da iki öğesi var.

 #.  Bu numaralandırılmış bir listedir.
 #.  Onun da iki maddesi var.

Kod Paylaşma
------------

.. code-block:: shell

.. code-block:: html
   :linenos:
   <h1>code block example</h1>
   
Resim
-----

.. code-block:: shell

.. image:: stars.jpg
    :width: 200px
    :align: center
    :height: 100px
    :alt: alternate text 

İndirme
-------

İndirme linki vermek için;

.. code-block:: shell

:download:`download samplet.py <sample.py>`


`Kaynak: <https://thomas-cokelaer.info/tutorials/sphinx/rest_syntax.html>`_ 

.. raw:: pdf

   PageBreak
