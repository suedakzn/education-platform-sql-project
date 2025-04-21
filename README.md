# 🎓 Çevrimiçi Eğitim Platformu – SQL Final Projesi

Bu depo, **TurkStudentCo Veri Bilimi Bootcamp** kapsamında geliştirilen **SQL Final Projesi**ni içermektedir.

---

## 📌 Proje Özeti

Bu veritabanı, gerçek dünyada bir eğitim platformunun nasıl çalıştığını modellemeyi amaçlar:

- Kullanıcılar sisteme kayıt olabilir ve eğitimlere katılabilir  
- Eğitimler farklı kategorilere ayrılmıştır (Yapay Zeka, Blokzincir, Siber Güvenlik vb.)  
- Kullanıcılar tamamladıkları eğitimler için sertifika alabilir  
- Kullanıcılar blog gönderileri paylaşabilir ve profillerinde seviye atlayabilir  

---

## 🛠️ Kullanılan Teknolojiler

- **Veritabanı:** PostgreSQL  
- **ER Diyagramı:** [dbdiagram.io](https://dbdiagram.io) ile oluşturuldu  

---

## 📂 Veritabanı Tabloları

Projede aşağıdaki tablolar yer almaktadır:

| Tablo Adı                  | Açıklama                                       |
|---------------------------|------------------------------------------------|
| `members`                 | Kullanıcı bilgilerini saklar                   |
| `categories`              | Eğitim kategorilerini içerir                   |
| `courses`                 | Eğitim bilgilerini içerir                      |
| `enrollments`             | Kullanıcıların eğitim katılım bilgileri        |
| `certificates`            | Verilen sertifika bilgileri                    |
| `certificate_assignments` | Hangi kullanıcının hangi sertifikayı aldığı    |
| `blog_posts`              | Kullanıcıların paylaştığı blog gönderileri     |

---

## 📄 Dosya İçeriği

- `education_platform_commented.sql` → Tüm veritabanı yapısını ve ilişkileri içeren SQL dosyası  
- `er_diagram.png` → Veritabanı ilişkilerini gösteren ER şema görseli  

---

## ✅ Proje Gereksinimleri

Bu proje aşağıdaki tüm gereklilikleri karşılamaktadır:
- 7 tablo içeren veritabanı şeması
- Doğru birincil anahtar (PK), yabancı anahtar (FK) ve tekil (UK) kullanımı
- Uygun veri tipi seçimi
- Çalışabilir SQL dosyası
- ER diyagramı ekran görüntüsü
- Public GitHub deposunda paylaşım

---

## 🧪 Kullanım

1. `education_platform_commented.sql` dosyasını PostgreSQL ortamında çalıştırın.
2. Tüm tablolar ve ilişkiler veritabanınızda oluşturulacaktır.
3. `er_diagram.png` dosyası üzerinden veritabanı şemasını inceleyebilirsiniz.

---
## 📅 Teslimat Bilgisi

Bu proje, **TurkStudentCo SQL Final Projesi** kapsamında teslim edilmiştir.

