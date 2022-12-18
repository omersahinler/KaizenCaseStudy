Case Study Questions1

Questions:
Hızlı tüketim sektöründe faaliyet gösteren bir gıda firması, ürün ambalajları içerisine bir kod
yerleştirerek, bu kodlar aracılığı ile çeşitli kampanyalar düzenlemek istemektedir. Proje aşağıda
kısaca özetlenmiştir.
1. Öncelikle firmaya aşağıdaki özelliklere sahip 10.000.000 adet kod üretilecektir.
• Kodlar 8 hane uzunluğunda ve unique olmalıdır.
• Kodlar ACDEFGHKLMNPRTXYZ234579 karakter kümesini içermelidir.
• Kolayca tahmin edilememesi için ardışık sıralı üretim yapılmamalıdır.
2. Gıda firması kendisine iletilen kodları gerekli güvenlik önlemlerine dikkat edecek şekilde
sadece yetkili kişilerin erişimine açacak ve gerekli matbaa süreçlerini yürütecektir.
3. Kampanya dönemi içerisinde ANDROID/IOS UYGULAMA, SMS, WEB, IVR gibi çeşitli kanallar
üzerinden son kullanıcıların ellerindeki kodları kullanarak kampanyalara katılımı
sağlanacaktır.
• Kod üretimi belirlediğiniz bir algoritmaya uygun olarak yapılmalıdır.
• Kod geçerliliği veritabanı, array, hash table, file, redis, elastic gibi bir ortamdan kontrol
edilmemelidir.
• Kod geçerliliği sadece algoritmik olarak tespit edilmelidir. 


CaseStudyQuestions1 adında console application projesi oluşturulmuştur.
GenerateUniqueCode fonsiyonu istenilen miktarda ve uzunlukta code üretmek için kulanılmaktadır.
CouponCode fonksiyonu number ve uzunluk alınarak bir adet code üretmektedir.
CouponCodeValidator daha önce üretilen kodları algoritma yardımıyla doğruluğunu tespit edmektedir.