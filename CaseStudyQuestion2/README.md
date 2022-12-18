Case Study Questions2

Questions:
Birden fazla dilde hizmet vermek üzere bir haber ajans sistemi tasarlanacaktır. Sistem multilanguage destekli olarak tasarlanacak ve kullanıcının kullandığı dile uygun olarak içerikler istenen
dilde servis edilecektir. Bu sistemde bir içerik için temelde aşağıdaki bilgilerin tutulması
gerekmektedir.
- Name (Identifier olarak kullanılır, Multi Language olmasına gerek yok. Ingilizce yazılır)
- Title (Multi Language)
- Detail (Multi Language)
- ImageUrls (Multi Language, Bir içerik birden fazla imaja sahip olabilir)
- Category (Multi Language)
Kullanıcılar okumak istedikleri içerikler için web sitesi üzerinden desteklenen diller arasında bir
seçim yapabilir, ardından da sisteme bu dil seçeneği ile birlikte istek atarak ilgili dil için girilmiş
içerikleri listeleyebilirler.
Sisteme dil seçeneği ile istek geldiği durumda tasarladığınız yapıya uygun olarak içeriklerin
verilmesini sağlayacak T-SQL sorgusunu yazmanız beklenmektedir.


 News ve NewsTranslations tabloları oluşturmak için sp_NewsAndNewsTranslationsCreateTableoluşturulup exec_NewsAndNewsTranslationsCreateTable çalıştırılmalı.
 Sisteme dil seçeneği ile istek geldiği durumda çalışması için sp_NewsAgencySystem oluşturulup exec_NewsAgencySystem çalıştırılmalı