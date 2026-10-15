---
title: Otomasi Desain
description: Buat banyak glyph lebih tebal, lebih tipis, lebih sempit, lebih lebar, miring, bergaris tepi, atau bergaris dalam sekaligus, buat small caps dari huruf kapital, dan pahami kapan sebaiknya menggambar ulang dengan tangan.
---

Sebagian pekerjaan desain adalah perubahan kecil yang sama, diulang di ratusan glyph. Menebalkan
sedikit setiap huruf, menyempitkan seluruh alfabet untuk gaya *condensed*, atau membuat huruf
kapital kecil dari huruf kapital: kalau dikerjakan dengan tangan, masing-masing butuh berhari-hari.
FontEasy bisa membuat versi pertama yang bagus dalam hitungan detik.

Anggap alat-alat ini sebagai asisten yang sangat cepat dan sangat teliti. Asisten ini mengikuti
aturan: batang huruf menebal tepat sekian unit, tinggi tetap di garisnya, titik tetap dalam urutan
yang sama. Yang tidak bisa dilakukannya adalah *melihat*: ia tidak sadar bahwa lengkung "a" yang
ditebalkan kini tampak sesak, atau bahwa "m" yang sempit butuh sambungan yang lebih tipis. Bagian itu
tetap tugas Anda. Hasil terbaik datang dari membiarkan alat mengerjakan bagian beratnya, lalu
memperhalusnya dengan mata.

Dalam bab ini Anda akan mempelajari:

- cara **Alat › Ubah Glyph…** membuat glyph lebih tebal atau tipis, lebih sempit atau lebar, miring,
  bergaris tepi, atau bergaris dalam;
- cara memilih glyph dan master mana yang terkena perubahan;
- cara **Font › Buat Small Caps…** membuat huruf kapital kecil dari huruf kapital Anda;
- cara **Jadikan Variabel** memakai alat yang sama untuk menggambar master bold;
- kapan otomasi itu ide bagus dan kapan sebaiknya menggambar ulang dengan tangan.

## Mengapa "titik tetap sama" itu penting

Sebelum melihat alat-alatnya, satu gagasan membuat semuanya lebih jelas. Glyph terdiri dari
[titik-titik](/reference/glossary/#point). Ada dua cara sebuah alat bisa menebalkan huruf:

- **Menambahkan outline baru** di sekeliling outline lama lalu menggabungkannya. Cara ini berhasil,
  tetapi glyph-nya berakhir dengan jumlah titik dan urutan yang berbeda.
- **Memindahkan titik yang sudah ada** ke luar. Glyph tetap punya titik yang persis sama, hanya di
  tempat baru.

**Tebal / Tipis** di FontEasy memakai cara kedua. Ini penting untuk
[*variable font*](/advanced/variable/): interpolasi butuh titik yang sama dengan urutan yang sama di
setiap master. Glyph yang ditebalkan dengan memindahkan titik tetap kompatibel dengan aslinya, jadi
keduanya bisa menjadi master Light dan Bold sebuah *variable font*, dan setiap ketebalan di antaranya
langsung berfungsi.

![Kiri: batang huruf dengan empat titik bernomor 1 sampai 4. Kanan: batang yang lebih tebal punya empat titik yang sama, masing-masing dipindahkan ke luar; outline putus-putus menunjukkan bentuk aslinya.](diagram:automation-bolder)

## Ubah Glyph

Pilih **Alat › Ubah Glyph…** untuk membuka dialognya. Dialog ini bisa dipakai di Mode Sederhana
maupun Mode Pro.

![Dialog Ubah Glyph pada Source Serif 4 dengan Tebal / Tipis dipilih: Tiap sisi batang 21 unit, batang berubah dari sekitar 84 menjadi 126 unit, dan pratinjau menampilkan Hamburg sebelum (atas) dan sesudah (bawah); Glyph terpilih (7) dipilih.](screen:transform)

Di bagian atas ada lima tab: **Tebal / Tipis**, **Sempit / Lebar**, **Kemiringan**, **Garis Tepi**,
dan **Garis Dalam**. Di bawah pengaturan, pratinjau menampilkan kata "Hamburg" dengan font Anda dua
kali: baris atas adalah rupanya sekarang, baris bawah adalah rupanya nanti. Pratinjau diperbarui saat
Anda menggeser slider.

Di bagian bawah Anda memilih **apa** yang diubah (dan, di *variable font*, **di mana**), lalu klik
**Terapkan**. Setiap Terapkan adalah satu langkah di riwayat *undo*, jadi **Edit › Batalkan**
mengembalikan seluruh perubahan sekaligus.

### Tebal / Tipis

Slider **Tiap sisi batang** menambahkan unit di kedua sisi setiap [batang](/reference/glossary/#stem)
(*stem*) huruf. Nilai negatif membuat font lebih tipis. Baris di bawah slider memberi tahu hasilnya,
misalnya: "Batang sekarang sekitar 84 unit; menjadi 126. Titiknya tetap sama, jadi hasilnya bisa
diinterpolasi dengan aslinya."

Yang dilakukan FontEasy:

- Batang menebal di kedua sisi; goresan mendatar juga menebal, sebanding dengan tebalnya di font Anda.
- [*Sidebearing*](/reference/glossary/#sidebearing) (ruang kosong di kiri-kanan huruf) tetap sama,
  jadi [*advance width*](/reference/glossary/#advance-width) (lebar total huruf) ikut bertambah.
- Bentuk ditarik kembali ke garisnya: *baseline*, *x-height*, *cap height*, *ascender*, dan
  *descender* tetap di tempatnya, jadi "x" yang lebih tebal tidak menjadi lebih tinggi.
- Jumlah dan urutan titik tidak berubah.

Untuk mengukur batang huruf, FontEasy melihat huruf n, l, H, dan I (serta e, o, H untuk goresan
mendatar). Kalau huruf-huruf itu belum digambar, FontEasy memakai nilai yang lazim.

### Sempit / Lebar

Slider **Lebar** (50% sampai 150%) membuat huruf lebih sempit atau lebih lebar. Memampatkan huruf
secara mendatar begitu saja juga akan menipiskan batang tegaknya, sehingga huruf *condensed* berubah
menjadi huruf tipis yang ringkih. Karena itu, setelah menskalakan, FontEasy mengembalikan batang ke
tebal aslinya: "Tebal batang tetap: huruf yang lebih sempit tidak jadi lebih tipis."

![Huruf H dalam tiga versi: aslinya dengan batang 60 unit; dimampatkan 70%, sehingga batangnya menipis; dan Sempit 70%, sehingga hurufnya sempit tetapi batangnya tetap 60 unit.](diagram:automation-condense)

### Kemiringan

Slider **Sudut** (−20° sampai 20°) memiringkan huruf. FontEasy memiringkannya di sekitar setengah
*x-height*, sehingga setiap huruf tetap berada di atas ruangnya sendiri dan tidak bergeser ke samping.
Kalau Anda memiringkan semua glyph di font, FontEasy juga mengatur sudut italic font.

Hasilnya adalah [*oblique*](/reference/glossary/#oblique) (miring), bukan
[*italic*](/reference/glossary/#italic) sejati: huruf condong tetapi bentuknya tetap bentuk tegak.
Italic sejati sering punya bentuk yang berbeda, misalnya "a" satu tingkat dan "f" yang turun di bawah
*baseline*. Kemiringan cocok sebagai awal untuk *oblique* huruf *sans serif*, atau untuk master italic
sebuah *variable font* yang kemudian Anda gambar ulang.

### Garis Tepi dan Garis Dalam

Keduanya menghasilkan gaya dekoratif:

- **Garis Tepi** mengubah setiap huruf menjadi pita di sepanjang tepinya, sehingga bagian dalamnya
  kosong, seperti huruf yang dijiplak dengan pena. **Garis** mengatur tebal pita itu.
- **Garis Dalam** memotong garis tipis ke dalam huruf, sedikit di dalam tepinya, seperti garis grafir
  pada huruf poster lama. **Garis** mengatur tebal garis potongnya, dan **dari tepi** mengatur seberapa
  jauh di dalam tepi garis itu berjalan.

Keduanya membangun outline baru dan membersihkan remah-remah kecil yang tersisa. Berbeda dengan
Tebal / Tipis, keduanya **menambah titik**, jadi hasilnya tidak lagi kompatibel dengan aslinya.
Keduanya dimaksudkan untuk font dekoratif tersendiri, bukan untuk master sebuah *variable font*.

### Memilih glyph

Di bawah pratinjau, pilih sasaran perubahannya:

- **Glyph terpilih (n)**: glyph yang dipilih di Ikhtisar. Kalau sebuah glyph sedang terbuka di editor
  glyph, perubahan berlaku pada glyph itu.
- **Semua glyph yang sudah digambar**: setiap glyph yang punya outline.

Kalau Anda membuka dialog tanpa ada yang dipilih dan tanpa glyph yang terbuka, dialog dimulai dengan
**Semua glyph yang sudah digambar**.

[Glyph komposit](/reference/glossary/#composite-glyph) seperti "é" tidak diubah langsung. Setelah
glyph dasarnya berubah, FontEasy membangunnya kembali dari bagian-bagiannya, sehingga aksen kembali ke
*anchor*-nya di huruf baru yang lebih tebal atau lebih sempit.

### Master aktif atau semua master

Di font dengan lebih dari satu master, muncul kotak centang **Di semua master**.

- **Mati** (bawaan): hanya master aktif yang berubah. Pakai ini untuk menyetel satu master, misalnya
  untuk membuat master Bold sedikit lebih berat.
- **Hidup**: setiap master berubah dengan jumlah yang sama. Pakai ini untuk menggeser seluruh keluarga,
  misalnya membuat semua ketebalan sedikit lebih sempit.

### Langkah demi langkah: font yang sedikit lebih tebal

1. Pilih **Alat › Ubah Glyph…**.
2. Tetap di **Tebal / Tipis**.
3. Geser **Tiap sisi batang** ke nilai kecil, misalnya 5 unit. Perhatikan pratinjaunya.
4. Pilih **Semua glyph yang sudah digambar**.
5. Di *variable font*, putuskan apakah perlu mencentang **Di semua master**.
6. Klik **Terapkan**.

Dialog tertutup dan bilah status melaporkan berapa glyph yang berubah, misalnya "312 glyph diubah".
Telusuri Ikhtisar dan Pratinjau untuk memeriksa hasilnya.

## Buat Small Caps

[*Small caps*](/reference/glossary/#small-caps) (kapital kecil) adalah huruf kapital yang digambar
setinggi kira-kira huruf kecil, dengan ketebalan huruf kecil. Small caps dipakai untuk singkatan
seperti NASA atau UNESCO di tengah teks, supaya tidak terkesan berteriak. Sekadar mengecilkan huruf
kapital tidak cukup: batangnya akan terlalu tipis dibanding huruf kecil di sebelahnya.

**Font › Buat Small Caps…** membuatnya dengan benar dari huruf kapital Anda.

![Dialog Buat Small Caps pada Source Serif 4: huruf A sampai Z, tinggi 514 unit di antara x-height 475 dan cap height 670, serta pratinjau HAMBURG dengan small caps setelah huruf H.](screen:smallcaps)

1. Pilih **Font › Buat Small Caps…**.
2. Di **Huruf**, biarkan A sampai Z atau ketik hanya huruf kapital yang Anda inginkan. Karakter lain
   diabaikan.
3. Atur **Tinggi**. Slider berjalan dari *x-height* sampai *cap height* (keduanya ditampilkan di
   sebelahnya); FontEasy memulai sedikit di atas *x-height*, yang cocok untuk kebanyakan desain.
4. Periksa pratinjaunya: "HAMBURG" ditampilkan dengan H berukuran penuh dan small caps sesudahnya.
5. Klik **Buat Small Caps**.

Yang dilakukan FontEasy:

- Setiap huruf kapital diskalakan ke tinggi yang dipilih dan sedikit dilebarkan, lalu batangnya
  ditipiskan agar sepadan dengan batang huruf kecil.
- Glyph baru dinamai menurut huruf kecilnya dengan `.sc`: `a.sc`, `b.sc`, dan seterusnya. Glyph ini
  tidak punya nilai Unicode sendiri, karena dicapai lewat fitur.
- Small caps dibuat di setiap master *variable font*.
- Glyph yang sudah ada dibiarkan, jadi menjalankannya lagi hanya menambahkan yang belum ada.
- Fitur **Small Caps** (`smcp` dan `c2sc`) mengikuti dengan sendirinya, karena FontEasy membangunnya
  dari nama glyph (lihat [bab tentang fitur](/opentype/features/)).

Bilah status melaporkan berapa small caps yang dibuat.

## Jadikan Variabel menggambar master bold

Bab [*variable font*](/advanced/variable/#menjadikan-font-variabel-dalam-satu-langkah) menjelaskan
**Font › Jadikan Variabel…**. Opsinya, **Gambarkan master baru untuk saya (lebih tebal, sempit, atau
miring)**, memakai alat yang sama dengan Ubah Glyph:

- master **Ketebalan** ditebalkan (atau ditipiskan) dengan memindahkan titik, sebanding dengan
  ketebalan yang Anda pilih;
- master **Lebar** disempitkan atau dilebarkan, dengan batang yang tetap;
- master **Miring** dimiringkan 10°, dan sudut italic-nya diatur.

Karena titiknya tetap sama, master baru langsung kompatibel sejak awal, dan slider di Pratinjau
langsung menampilkan setiap gaya di antaranya.

![Source Serif 4 setelah Jadikan Variabel: panel Variasi menunjukkan slider ketebalan di 560 dan huruf H yang dihitung di sana, serta "Strukturnya sama di semua master."](screen:variablebold)

## Kapan memakai otomasi dan kapan menggambar ulang

Otomasi sangat cocok untuk:

- **Draf pertama**: master bold atau *condensed* untuk diperhalus, alih-alih mulai dari halaman kosong.
- **Penyesuaian kecil**: membuat seluruh font 3% lebih sempit atau 4 unit lebih berat setelah diuji.
- **Konsistensi**: perubahan yang sama diterapkan persis ke setiap glyph.
- **Keluarga dekoratif**: versi garis tepi dan garis dalam dari font *display*.
- **Small caps**: dasar yang kokoh, yang sering hanya perlu sentuhan ringan.

Gambar ulang dengan tangan kalau:

- ***Counter* menyempit.** Di ketebalan berat, ruang dalam "e", "a", dan "s" mengecil. Desainer huruf
  membuka bentuk-bentuk ini, melebarkan huruf, dan menipiskan sambungan tempat goresan bertemu. Alat
  yang hanya menggeser batang ke luar tidak bisa melakukannya.
- **Struktur huruf berubah.** Italic sejati, "g" satu tingkat, atau "y" yang berbeda adalah gambar
  baru, bukan hasil transformasi.
- **Butuh koreksi optis.** Huruf bulat perlu sedikit lebih besar daripada huruf datar, dan diagonal
  perlu sedikit lebih ringan daripada batang lurus. Aturan yang diterapkan sama rata ke setiap glyph
  tidak tahu soal ini.
- **Nilai ekstrem.** Mendorong slider sampai ujung biasanya memperlihatkan di mana metodenya gagal:
  kurva yang saling tumpang tindih, *counter* yang tertutup, serif yang berdesakan.

:::tip[Alur kerja yang baik]
Terapkan perubahannya, lalu telusuri alfabet di Pratinjau, di ukuran teks dan di ukuran judul. Tandai
glyph yang tampak salah dengan warna tanda, lalu perbaiki satu per satu. Di *variable font*, perbaiki
dengan memindahkan titik, supaya master tetap kompatibel.
:::

:::caution[Kesalahan yang sering terjadi]
- **Menebalkan glyph dua kali.** Setiap Terapkan menambah perubahan sebelumnya. Kalau hasilnya terlalu
  berat, pakai **Edit › Batalkan** untuk kembali ke aslinya, alih-alih menumpuk koreksi di atas koreksi.
- **Memakai Garis Tepi atau Garis Dalam pada master.** Keduanya menambah titik, sehingga glyph tidak
  lagi bisa diinterpolasi. Buat gaya dekoratif sebagai font tersendiri.
- **Lupa Di semua master.** Di *variable font*, perubahan yang hanya mengenai master aktif mengubah
  hubungan antar master; kadang memang itu yang Anda mau, kadang tidak.
:::

*Kerning* juga bisa diotomasi: **Kerning › Kerning Otomatis…** mencari pasangan huruf dari bentuknya.
Penjelasannya ada di [bab tentang kerning](/spacing/kerning/).

## Ringkasan

- **Alat › Ubah Glyph…** punya lima tab: **Tebal / Tipis**, **Sempit / Lebar**, **Kemiringan**,
  **Garis Tepi**, dan **Garis Dalam**, dengan pratinjau sebelum dan sesudah.
- **Tebal / Tipis** memindahkan titik alih-alih menambahnya, menjaga *sidebearing* dan tinggi, dan
  tetap kompatibel untuk interpolasi.
- **Sempit / Lebar** menjaga tebal batang; **Kemiringan** membuat *oblique* dan mengatur sudut italic.
- **Garis Tepi** dan **Garis Dalam** menambah titik dan ditujukan untuk font dekoratif.
- Terapkan ke **Glyph terpilih** atau **Semua glyph yang sudah digambar**, dan di *variable font* ke
  master aktif atau **Di semua master**. Glyph komposit dibangun ulang sesudahnya.
- **Font › Buat Small Caps…** membuat `a.sc`, `b.sc` … dengan ketebalan huruf kecil, dan fitur small
  caps mengikuti dengan sendirinya.
- **Jadikan Variabel** memakai metode yang sama untuk menggambar master Bold, Condensed, atau Italic
  yang kompatibel.
- Pakai otomasi untuk draf dan perubahan yang konsisten; gambar ulang dengan tangan untuk *counter*,
  struktur, dan koreksi optis.

## Coba sendiri

1. Buka font yang sudah punya beberapa huruf. Di **Alat › Ubah Glyph…**, coba setiap tab dan perhatikan
   pratinjaunya tanpa mengeklik Terapkan. Lalu terapkan **Sempit / Lebar** di 85% ke **Semua glyph yang
   sudah digambar**, lihat hasilnya, kemudian batalkan.
2. Jalankan **Font › Buat Small Caps…** dengan pengaturan bawaan. Ketik sebuah kata di Pratinjau dan
   nyalakan fitur small caps untuk melihat glyph `.sc` baru Anda. Bandingkan satu small cap dengan huruf
   kecil di sebelahnya: apakah ketebalannya mirip? Kalau tidak, coba **Tebal / Tipis** hanya pada glyph
   `.sc`.
