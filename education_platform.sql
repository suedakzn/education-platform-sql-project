
-- Üyeler tablosu: Platforma kayıtlı kullanıcı bilgilerini tutar
CREATE TABLE members (
    member_id SERIAL PRIMARY KEY, -- Otomatik artan birincil anahtar
    username VARCHAR(50) UNIQUE NOT NULL, -- Kullanıcı adı, tekil ve boş olamaz
    email VARCHAR(100) UNIQUE NOT NULL, -- E-posta adresi, tekil ve boş olamaz
    password VARCHAR(255) NOT NULL, -- Şifre
    registered_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Kayıt tarihi
    first_name VARCHAR(50), -- İsim
    last_name VARCHAR(50) -- Soyisim
);

-- Kategoriler tablosu: Eğitimlerin kategorilerini tutar
CREATE TABLE categories (
    category_id SMALLINT PRIMARY KEY, -- Kategori kimliği
    category_name VARCHAR(100) UNIQUE NOT NULL -- Kategori adı
);

-- Eğitimler tablosu: Platformdaki kurs bilgilerini içerir
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY, -- Kurs ID
    course_name VARCHAR(200) NOT NULL, -- Kurs adı
    description TEXT, -- Kurs açıklaması
    start_date DATE, -- Başlangıç tarihi
    end_date DATE, -- Bitiş tarihi
    instructor VARCHAR(100), -- Eğitmen adı
    category_id SMALLINT, -- Kategoriyle ilişki
    CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

-- Katılımlar tablosu: Kullanıcıların kurslara katılım bilgisi
CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY, -- Katılım ID
    member_id INTEGER NOT NULL, -- Katılan üye ID
    course_id INTEGER NOT NULL, -- Katıldığı kurs ID
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Katılım tarihi
    CONSTRAINT fk_member FOREIGN KEY (member_id) REFERENCES members(member_id),
    CONSTRAINT fk_course FOREIGN KEY (course_id) REFERENCES courses(course_id),
    CONSTRAINT unique_enrollment UNIQUE (member_id, course_id) -- Aynı kursa iki kez kayıt olmasın
);

-- Sertifikalar tablosu: Verilen sertifika bilgilerini tutar
CREATE TABLE certificates (
    certificate_id SERIAL PRIMARY KEY, -- Sertifika ID
    certificate_code VARCHAR(100) UNIQUE NOT NULL, -- Sertifika kodu
    issue_date DATE -- Veriliş tarihi
);

-- Sertifika atamaları tablosu: Kim hangi sertifikayı almış
CREATE TABLE certificate_assignments (
    assignment_id SERIAL PRIMARY KEY, -- Atama ID
    member_id INTEGER NOT NULL, -- Üye ID
    certificate_id INTEGER NOT NULL, -- Sertifika ID
    received_date DATE, -- Alım tarihi
    CONSTRAINT fk_cert_member FOREIGN KEY (member_id) REFERENCES members(member_id),
    CONSTRAINT fk_certificate FOREIGN KEY (certificate_id) REFERENCES certificates(certificate_id),
    CONSTRAINT unique_assignment UNIQUE (member_id, certificate_id) -- Aynı sertifika birine iki kez verilmesin
);

-- Blog gönderileri tablosu: Kullanıcıların blog yazıları
CREATE TABLE blog_posts (
    post_id SERIAL PRIMARY KEY, -- Gönderi ID
    title VARCHAR(255) NOT NULL, -- Başlık
    content TEXT NOT NULL, -- İçerik
    published_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Yayın tarihi
    author_id INTEGER NOT NULL, -- Yazar (üye) ID
    CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES members(member_id)
);
