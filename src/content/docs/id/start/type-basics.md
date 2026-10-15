---
title: Dasar-Dasar Huruf
description: Istilah dan gagasan di balik setiap font, dari baseline dan x-height sampai glyph, Unicode, em, dan keluarga gaya.
---

Desainer huruf punya kosakata sendiri. Mereka bicara tentang *baseline* dan *x-height*, *stem* dan
*bowl*, glyph dan *code point*. Istilah-istilah ini bukan untuk gaya-gayaan: masing-masing menamai
sesuatu yang akan Anda lihat dan atur di FontEasy. Begitu Anda mengenalnya, menu, panel, dan bab-bab
lain di panduan ini mendadak terasa masuk akal.

Bab ini adalah bab konsep terpenting dalam panduan. Tidak ada tombol yang perlu diklik, tetapi ada
banyak gambar. Semua huruf di gambar adalah huruf sungguhan dari font gratis, kebanyakan Source
Serif 4. Bacalah pelan-pelan, dan kembalilah kapan pun ada istilah yang membingungkan. Setiap istilah
juga punya entri di [glosarium](/reference/glossary/).

Banyak istilah di bab ini tetap memakai bahasa Inggris. Begitulah istilah itu dipakai para desainer
huruf di seluruh dunia, dan begitu pula yang tertulis di menu FontEasy. Di setiap istilah kami
sertakan penjelasan singkat dalam bahasa Indonesia.

Dalam bab ini Anda akan mempelajari:

- garis-garis tempat setiap huruf berdiri: *baseline*, *x-height*, *cap height*, *ascender*, dan
  *descender*;
- mengapa huruf bulat dibuat sedikit lebih besar (*overshoot*);
- bagian-bagian huruf: *stem*, *bowl*, *counter*, *aperture*, *terminal*, dan *serif*;
- arti *serif* dan *sans serif*, kontras, ketebalan, lebar, *italic*, dan *oblique*;
- beda glyph dan karakter, serta apa itu Unicode dan *code point*;
- apa itu *em* dan *units per em*, serta gambaran awal *sidebearing* dan *advance width*;
- bagaimana font membentuk keluarga gaya.

## Garis-garis tempat huruf berdiri

Ingat buku tulis bergaris waktu SD? Anda menulis di atas sebuah garis, huruf kecil mencapai garis
putus-putus di tengah, dan huruf tinggi mencapai garis paling atas. Font bekerja dengan cara yang
sama. Setiap huruf digambar mengikuti beberapa garis mendatar yang tidak terlihat, yaitu
[*vertical metrics*](/reference/glossary/#vertical-metrics) (ukuran-ukuran tegak font).

![Kata Hxdp dengan lima garis: garis ascender di puncak d, cap height di puncak H, x-height di puncak x, baseline di bawah semua huruf, dan garis descender di ujung bawah p.](diagram:type-basics-vertical-metrics)

Dari bawah ke atas:

- Garis [*descender*](/reference/glossary/#descender) menandai sejauh apa huruf seperti p, g, q, j,
  dan y menjulur ke bawah baris teks. Ekor huruf-huruf itu juga disebut *descender*.
- [*Baseline*](/reference/glossary/#baseline) (garis dasar) adalah garis tempat huruf berdiri, seperti
  garis di buku tulis. Inilah garis terpenting: di FontEasy tingginya selalu 0.
- [*x-height*](/reference/glossary/#x-height) (tinggi-x) adalah tinggi huruf kecil yang tidak punya
  *ascender*, seperti x, a, n, dan o. Namanya diambil dari huruf x, karena puncak dan dasar x datar
  dan menyentuh garis dengan tepat.
- [*Cap height*](/reference/glossary/#cap-height) (tinggi kapital) adalah tinggi huruf kapital,
  seperti H, E, dan T.
- Garis [*ascender*](/reference/glossary/#ascender) menandai setinggi apa huruf seperti b, d, h, k,
  dan l menjulang di atas *x-height*. Di banyak font, *ascender* sedikit lebih tinggi daripada huruf
  kapital, seperti di gambar.

*x-height* lebih penting daripada yang mungkin Anda kira. Dua font dengan ukuran yang sama bisa
tampak sangat berbeda besarnya karena yang satu punya *x-height* besar dan yang lain kecil.
*x-height* yang besar membuat teks lebih mudah dibaca di ukuran kecil; *x-height* yang kecil terasa
anggun dan klasik.

### Garis-garis ini di FontEasy

Saat Anda membuka sebuah glyph di FontEasy, editor menggambar garis-garis ini melintang di kanvas dan
memberi label nama serta tingginya. Pada gambar di bawah tampak tinggi kapital (670), tinggi-x (475),
*baseline* (0), dan *descender* (−335) dari Source Serif 4.

![Editor glyph menampilkan huruf a dari Source Serif 4, dengan garis berlabel tinggi kapital 670, tinggi-x 475, baseline 0, dan descender −335.](screen:g-edit)

Font baru di FontEasy dimulai dengan nilai yang wajar: *ascender* 750, tinggi kapital 700, tinggi-x
500, dan *descender* −250. [Wizard Font Baru](/start/first-font/#dua-cara-memulai-font) juga
membiarkan Anda memilih tinggi-x dengan melihat contohnya (Kecil, Sedang, atau Besar dibanding huruf
kapital). Semua nilai ini bisa diubah nanti di **Font › Info Font…**, seperti dijelaskan di bab
[Info Font](/production/font-info/).

### Overshoot

Perhatikan baik-baik huruf O di sebelah H. Kalau keduanya sama persis tingginya, O akan tampak lebih
kecil. Mata kita menilai bentuk bulat dari bagian tengahnya, dan lingkaran yang hanya menyentuh garis
di satu titik di atas dan satu titik di bawah terlihat seperti menjauh dari garis. Agar tampak sama
besar, huruf bulat dan huruf runcing dibuat sedikit melewati garis. Inilah yang disebut
[*overshoot*](/reference/glossary/#overshoot).

![H dan O bersebelahan: H tepat berada di antara baseline dan cap height, sedangkan O sedikit menyembul di atas cap height dan di bawah baseline; bagian overshoot ditandai merah.](diagram:type-basics-overshoot)

Besarnya kecil saja, biasanya 1 sampai 3 persen dari tinggi huruf. Di Source Serif 4, O naik 15 unit
di atas tinggi kapital dan turun 15 unit di bawah *baseline*, sedangkan o naik 13 unit di atas
tinggi-x. Huruf runcing seperti A, V, dan W juga mendapat tambahan serupa di ujung-ujungnya. Saat
menggambar huruf bulat pertama Anda di bab [Font Pertama Anda](/start/first-font/), Anda juga akan
memberinya sedikit *overshoot*.

:::tip
*Overshoot* adalah contoh klasik aturan desain huruf: yang penting adalah bagaimana huruf *terlihat*,
bukan apa kata penggaris. Bila mata dan angka tidak sepakat, percayalah pada mata Anda.
:::

## Bagian-bagian huruf

Huruf tersusun dari sekumpulan kecil bagian yang muncul berulang-ulang. Mengenal namanya membantu
Anda melihat mengapa satu font terasa berbeda dari yang lain, sekaligus membantu menjaga huruf-huruf
Anda tetap seragam.

![Kata bean dengan label bagian: stem (batang) pada b, bowl (lengkung) pada b dan counter (ruang dalam) di dalamnya, aperture (bukaan) pada e, terminal (ujung) di puncak a, dan serif (kait) di kaki n.](diagram:type-basics-anatomy)

- [*Stem*](/reference/glossary/#stem) (batang) adalah goresan tegak utama, seperti garis lurus pada
  b, kedua sisi H, atau goresan turun pada n. *Stem* pada huruf-huruf sejenis sebaiknya sama tebal.
- [*Bowl*](/reference/glossary/#bowl) (lengkung) adalah goresan melengkung yang mengurung sebuah
  ruang, seperti bagian bulat pada b, d, p, dan o.
- [*Counter*](/reference/glossary/#counter) (ruang dalam) adalah ruang di dalam huruf, baik yang
  tertutup penuh (di dalam o atau b) maupun yang setengah terbuka (di dalam n atau c). *Counter*
  adalah bagian putih huruf, dan sama pentingnya dengan bagian hitam: bila terlalu kecil, huruf
  tampak "penuh" dan sulit dibaca.
- [*Aperture*](/reference/glossary/#aperture) (bukaan) adalah celah pada *counter* yang setengah
  terbuka, seperti celah di kanan e atau c. *Aperture* yang lebar membuat huruf tetap jelas di ukuran
  kecil; yang sempit terasa padat dan kokoh.
- [*Terminal*](/reference/glossary/#terminal) (ujung) adalah ujung goresan yang tidak berakhir dengan
  *serif*, seperti ujung atas a yang melengkung. *Terminal* bisa dipotong lurus, dibulatkan, dibuat
  miring, atau diakhiri bulatan.
- [*Serif*](/reference/glossary/#serif) (kait) adalah goresan tambahan kecil, semacam "kaki", di ujung
  goresan utama, seperti kaki-kaki datar di bawah n.

Masih ada nama-nama lain, misalnya palang (*crossbar*) pada H atau A, bahu (*shoulder*) pada n tempat
lengkungannya keluar dari *stem*, atau ekor (*tail*) pada Q. Anda tidak perlu menghafal semuanya
sekarang. Kebiasaan yang berguna adalah melihat huruf sebagai bentuk yang tersusun dari bagian-bagian,
dan memperhatikan bagian mana di satu huruf yang seharusnya sama dengan bagian di huruf lain.

### Serif dan sans serif

Kaki-kaki kecil itulah yang memberi font kategorinya yang paling terkenal. Font yang punya *serif*
disebut font serif; font tanpa *serif* disebut font
[*sans serif*](/reference/glossary/#sans-serif) (*sans* adalah bahasa Prancis untuk "tanpa").

![Kata Rag dua kali: di kiri dalam font serif dengan serif pada R dilingkari, di kanan dalam font sans serif dengan ujung goresan yang polos.](diagram:type-basics-serif-sans)

Font serif sering terasa klasik, seperti buku, atau resmi. Font sans serif sering terasa modern,
bersih, atau teknis. Keduanya bisa sangat mudah dibaca; hal itu jauh lebih bergantung pada desainnya
daripada kategorinya.

Font sans serif di kanan gambar, Source Code Pro, juga termasuk
[*monospaced*](/reference/glossary/#monospaced): setiap hurufnya selebar persis sama, seperti mesin
ketik. Pemrogram menyukai font *monospaced* karena kolom-kolom kode jadi lurus rapi.

## Kontras, ketebalan, dan lebar

Tiga istilah lagi menggambarkan rupa keseluruhan sebuah font.

### Kontras

[*Contrast*](/reference/glossary/#contrast) (kontras) adalah perbedaan antara bagian tebal dan bagian
tipis goresan. Bayangkan menulis dengan pena kaligrafi yang ujungnya lebar: goresannya tebal ke satu
arah dan tipis ke arah lain. Banyak font serif masih menyimpan jejak pena itu. Font berkontras rendah
tampak seperti digambar dengan spidol bulat; goresannya hampir sama tebal di mana-mana.

![Dua huruf o: di kiri o berkontras tinggi dengan sisi tebal dan bagian atas-bawah yang sangat tipis; di kanan o berkontras rendah yang goresannya hampir sama tebal di sekelilingnya.](diagram:type-basics-contrast)

Kontras tinggi tampak anggun dan paling cocok di ukuran besar, saat bagian tipisnya tetap terlihat.
Kontras rendah lebih tangguh dan tetap baik di ukuran kecil, cetakan kasar, maupun layar beresolusi
rendah. Font yang setiap goresannya sama persis tebalnya disebut
[*monoline*](/reference/glossary/#monoline).

### Ketebalan

[*Weight*](/reference/glossary/#weight) (ketebalan) menyatakan seberapa tebal atau gelap goresannya.
Setiap ketebalan diberi nama dan angka dari 100 sampai 900. Yang paling umum adalah Regular (400) dan
[*Bold*](/reference/glossary/#bold) (700).

![Huruf a dalam enam ketebalan Source Serif 4: ExtraLight 200, Light 300, Regular 400, Semibold 600, Bold 700, dan Black 900.](diagram:type-basics-weight)

Huruf tebal bukan sekadar huruf biasa yang diberi garis tepi lebih tebal. Saat *stem* makin berat,
*counter* harus tetap terbuka, sehingga huruf jadi lebih lebar, sambungannya lebih tipis, dan
detailnya berubah. Karena itulah desainer menggambar Bold sebagai desain tersendiri. FontEasy bisa
membantu soal ini nanti, seperti yang akan Anda lihat di bab
[Otomatisasi Desain](/advanced/automation/) dan [Font Variabel](/advanced/variable/).

### Lebar

[*Width*](/reference/glossary/#width) (lebar) menyatakan seberapa sempit atau lebar hurufnya. Gaya
Condensed punya huruf sempit yang menghemat tempat di judul; gaya Extended atau Wide punya huruf lebar
yang melar.

![Kata WIDTH dua kali dengan typeface yang sama: sekali versi condensed dengan huruf sempit, sekali versi wide dengan huruf lebar.](diagram:type-basics-width)

Lebar dan ketebalan bisa dikombinasikan: sebuah keluarga bisa punya Bold Condensed, Light Wide, dan
seterusnya.

## Italic dan oblique

Huruf miring ada dua macam, dan desainer huruf peduli pada bedanya.

![Huruf afe tiga kali: roman yang tegak, oblique yang berupa huruf sama tetapi dimiringkan, dan italic sejati dengan bentuk berbeda, seperti a berlengkung tunggal dan f yang turun ke bawah.](diagram:type-basics-italic-oblique)

- [*Oblique*](/reference/glossary/#oblique) adalah desain tegak (roman) yang dimiringkan. Bentuknya
  tetap; hanya sudutnya yang berubah. Banyak font sans serif memakai *oblique*.
- [*Italic*](/reference/glossary/#italic) adalah desain tersendiri dengan bentuk huruf sendiri yang
  terilhami tulisan tangan. Lihat gambarnya: a italic hanya punya satu lengkung bulat, dan f italic
  turun melewati *baseline*. Sebagian besar font serif punya *italic* sejati.

Keduanya dipakai untuk tugas yang sama dalam teks: menegaskan sebuah kata, atau menandai judul dan
kata asing.

## Glyph dan karakter

Inilah gagasan yang mengejutkan banyak pemula: apa yang Anda ketik dan apa yang Anda lihat adalah dua
hal yang berbeda.

[*Character*](/reference/glossary/#character) (karakter) adalah gagasan sebuah huruf: "huruf kecil
a", "angka tujuh", "tanda tanya". Karakterlah yang disimpan saat Anda mengetik, mengirim pesan, atau
menyimpan file teks. [Glyph](/reference/glossary/#glyph) adalah gambar sebuah karakter dalam font
tertentu. Saat teks ditampilkan, komputer memilih sebuah glyph untuk setiap karakter.

![Di kiri, satu karakter U+0061 LATIN SMALL LETTER A dengan panah ke tiga glyph berbeda: a regular, a italic, dan a bold. Di kanan, dua karakter f dan i dengan panah ke satu glyph ligatur fi.](diagram:type-basics-glyph-character)

Hubungan keduanya tidak selalu satu banding satu:

- **Satu karakter, banyak glyph.** Karakter a punya glyph berbeda di setiap font dan setiap gaya.
  Bahkan di dalam satu font pun bisa ada beberapa: a biasa, a kapital kecil, atau
  [*alternate*](/reference/glossary/#alternate) (bentuk pengganti) gaya tertentu.
- **Beberapa karakter, satu glyph.** Di banyak font serif, f yang diikuti i ditampilkan dengan satu
  glyph gabungan, yaitu [*ligature*](/reference/glossary/#ligature) (ligatur), supaya titik i tidak
  bertabrakan dengan puncak f. Teksnya tetap berisi dua karakter: kalau disalin, hasilnya "f" dan "i".

Memilih glyph yang tepat untuk setiap karakter adalah tugas fitur OpenType, pokok bahasan
[Bagian IV](/opentype/features/). Untuk sekarang cukup diketahui bahwa font adalah kumpulan glyph, dan
sebagian besar glyph itu terhubung ke sebuah karakter.

### Unicode dan code point

Bagaimana komputer tahu glyph mana yang milik karakter mana? Lewat
[Unicode](/reference/glossary/#unicode), standar sedunia yang memberi setiap karakter dari setiap
sistem tulisan sebuah nomor unik. Nomor itu adalah [*code point*](/reference/glossary/#code-point)
karakter tersebut. Penulisannya U+ diikuti angka heksadesimal (sistem hitung yang memakai angka 0–9
dan huruf A–F):

| Karakter | Code point | Nama Unicode |
|---|---|---|
| A | `U+0041` | LATIN CAPITAL LETTER A |
| a | `U+0061` | LATIN SMALL LETTER A |
| é | `U+00E9` | LATIN SMALL LETTER E WITH ACUTE |
| 7 | `U+0037` | DIGIT SEVEN |
| ? | `U+003F` | QUESTION MARK |

Unicode mencakup lebih dari 150.000 karakter, dari aksara Latin dan Jawa sampai Arab, Tionghoa, dan
emoji. Tidak ada font yang memuat semuanya: setiap font memilih
[*character set*](/reference/glossary/#character-set) (himpunan karakter) sendiri, yaitu karakter
yang didukungnya.

Setiap glyph di FontEasy punya [*glyph name*](/reference/glossary/#glyph-name) (nama glyph),
misalnya `A`, `a`, `eacute`, atau `f_i`, dan biasanya satu *code point*. Pilih sebuah glyph di
Ikhtisar, dan panel **Info Glyph** menampilkan keduanya, bersama karakternya, nama Unicode resminya,
dan aksaranya.

![Ikhtisar Source Serif 4 dengan huruf a terpilih; panel Info Glyph di kanan menampilkan nama a, Unicode U+0061, karakter a, LATIN SMALL LETTER A, dan aksara Latin.](screen:g-overview)

Sebagian glyph sama sekali tidak punya *code point*, misalnya kapital kecil `a.sc` atau bentuk
pengganti `a.ss01`. Glyph seperti ini tidak bisa diketik langsung; fitur OpenType-lah yang
memunculkannya. FontEasy mendaftarnya di bawah **Tanpa Unicode** di Ikhtisar.

:::tip
Kotak pencarian di atas Ikhtisar memahami ketiganya: ketik nama glyph (`eacute`), karakter (`é`), atau
*code point* (`U+00E9`). Tekan <kbd>/</kbd> untuk langsung masuk ke kotak itu.
:::

## Em dan units per em

Seberapa besar sebuah huruf? Untuk menjawabnya, desain huruf memakai ukuran dari zaman huruf logam.
Setiap huruf dicetak di atas balok logam kecil, dan semua balok dalam satu font sama tingginya. Tinggi
itulah yang disebut [*em*](/reference/glossary/#em). Saat Anda memakai font berukuran 12 poin, em-nya
setinggi 12 poin. Hurufnya sendiri lebih kecil: huruf muat di dalam em dengan sisa ruang di atas dan
bawahnya.

Di font digital, em adalah kisi berbentuk persegi. Desainer tidak menggambar dalam milimeter atau
piksel, melainkan dalam unit font, dan jumlah unit dalam satu em disebut
[*units per em*](/reference/glossary/#units-per-em), disingkat UPM.

![Huruf H dan g, masing-masing di kotaknya setinggi satu em, dengan penggaris dari −250 sampai 750: satu em sama dengan 1000 unit, setiap kotak glyph setinggi satu em, dan lebarnya berbeda-beda.](diagram:type-basics-em-square)

- Kebanyakan font memakai **1000 unit per em**. Ini tradisi font PostScript dan OpenType CFF, dan
  juga bawaan FontEasy. Angkanya jadi mudah: tinggi kapital 700 berarti 70 % dari em.
- Banyak font TrueType memakai **2048** unit per em. Keduanya bisa dipakai di mana saja.

Koordinatnya seperti grafik di pelajaran matematika. Sumbu x berjalan ke kanan dari tepi kiri glyph.
Sumbu y berjalan ke atas dari *baseline*, sehingga titik di atas *baseline* bernilai positif dan
titik di bawahnya (pada *descender*) bernilai negatif. Di font bawaan FontEasy, em membentang dari −250
di *descender* sampai 750 di *ascender*: tepat 1000 unit.

Di FontEasy, bilah status menampilkan UPM font, misalnya "320 glyph · 1000 UPM". Di Mode Pro, dialog
**Font Baru** punya isian **Units per em**, dan **Edit › Preferensi… › Umum › Units per em** menentukan
nilai untuk font baru. Kalau ragu, biarkan 1000.

:::note
Huruf boleh menyembul keluar dari em. Aksen di atas huruf kapital, seperti Å, sering melewatinya, dan
sebagian hiasan (*swash*) menjulur jauh ke luar. Em adalah tongkat pengukur, bukan pagar.
:::

## Sidebearing dan advance width: gambaran awal

Huruf dalam sebaris teks tidak saling bersentuhan (kecuali pada sebagian aksara dan font tulisan
tangan). Setiap glyph membawa sedikit ruang kosong di kiri dan kanannya. Bayangkan setiap glyph duduk
di kotaknya sendiri, seperti balok-balok logam zaman dulu: saat Anda mengetik, kotak-kotak itu
dijajarkan berdampingan.

![Huruf n dan o di kotaknya masing-masing: pita hijau menunjukkan sidebearing kiri, pita oranye sidebearing kanan, dan panah di bawah n menandai advance width-nya; jarak antara n dan o adalah sidebearing kanan n ditambah sidebearing kiri o.](diagram:type-basics-sidebearings)

- [*Advance width*](/reference/glossary/#advance-width) adalah lebar kotaknya: sejauh apa "pena"
  bergeser ke kanan sebelum huruf berikutnya dimulai.
- [*Sidebearing*](/reference/glossary/#sidebearing) adalah ruang kosong antara gambar huruf dan sisi
  kotaknya: *sidebearing* kiri (LSB) dan *sidebearing* kanan (RSB).
- Jarak antara dua huruf adalah *sidebearing* kanan huruf pertama ditambah *sidebearing* kiri huruf
  kedua.

*Spacing* yang baik ([*spacing*](/reference/glossary/#spacing), pengaturan jarak huruf) berarti
memilih ruang-ruang ini sehingga irama hitam dan putih tampak rata di sepanjang kata. Sisi yang bulat
mendapat ruang sedikit lebih kecil daripada sisi yang lurus, karena lengkungannya sudah membawa ruang
putih tambahan. Untuk segelintir pasangan yang masih tampak janggal, seperti AV atau To, font
menambahkan [*kerning*](/reference/glossary/#kerning): koreksi kecil untuk pasangan huruf tertentu.

Di FontEasy, panel **Info Glyph** menampilkan *advance width* glyph yang dipilih (**Lebar advance**),
dan di editor glyph bilah opsi menampilkan **Lebar**, **LSB**, dan **RSB** saat tidak ada yang
dipilih. Anda akan mengaturnya untuk huruf-huruf pertama Anda di
[Font Pertama Anda](/start/first-font/#atur-spasi-huruf), dan Bagian III,
[Metrics dan Spasi](/spacing/metrics/) serta [Kerning](/spacing/kerning/), membahasnya lebih dalam.

## Keluarga dan gaya

Satu font adalah satu [*style*](/reference/glossary/#style) (gaya): Regular, Italic, Bold, dan
seterusnya. Font-font yang berbagi satu desain membentuk sebuah [*family*](/reference/glossary/#family)
(keluarga), dan desainnya sendiri adalah [*typeface*](/reference/glossary/#typeface).

![Typeface Source Serif 4 sebagai keluarga empat gaya, masing-masing menampilkan Ag: Regular, Italic, Bold, dan Bold Italic; empat gaya berarti empat file font.](diagram:type-basics-family)

Keluarga klasik untuk teks punya empat gaya: Regular, Italic, Bold, dan Bold Italic. Aplikasi
pengolah kata berpindah di antara keempatnya saat Anda menekan tombol Bold atau Italic. Keluarga yang
lebih besar menambah ketebalan (Thin sampai Black) dan lebar (Condensed sampai Extended), dan bisa
tumbuh sampai puluhan gaya.

Secara tradisional setiap gaya adalah satu [*font file*](/reference/glossary/#font-file) tersendiri.
[*Variable font*](/reference/glossary/#variable-font) (font variabel) menyimpan seluruh rentang dalam
satu file, dan aplikasi bisa memilih ketebalan berapa pun di antaranya, misalnya 450 atau 563.

Di FontEasy, font yang Anda buat dimulai sebagai satu gaya yang disimpan sebagai satu source UFO. Nama
keluarga dan nama gayanya diatur di **Font › Info Font…**. Bila ingin lebih banyak gaya, font itu bisa
Anda kembangkan menjadi keluarga nanti, dengan *master* dan *designspace* (lihat
[Font Variabel](/advanced/variable/)).

## Salah kaprah yang sering terjadi

:::caution[Ukuran font bukan tinggi huruf]
"12 poin" adalah tinggi em, bukan tinggi huruf kapital. Itu sebabnya dua font dengan ukuran poin yang
sama bisa tampak sangat berbeda besarnya: yang satu mungkin punya *x-height* tinggi, yang lain
rendah.
:::

:::caution[Glyph bukan karakter]
Menggambar glyph yang indah baru separuh pekerjaan. Bila glyph itu tidak punya *code point*, atau
*code point*-nya salah, mengetik hurufnya tidak akan memunculkan glyph tersebut. Template FontEasy
sudah memberi setiap glyph *code point* yang benar untuk Anda.
:::

:::caution[Miring belum tentu italic]
Memiringkan huruf roman menghasilkan *oblique*. *Italic* sejati punya bentuk sendiri. Keduanya sah,
tetapi sebutlah sesuai namanya, terutama di nama gaya font Anda.
:::

## Ringkasan

- Huruf digambar di atas garis-garis tak terlihat: *descender*, *baseline* (selalu 0 di FontEasy),
  *x-height*, *cap height*, dan *ascender*. Huruf bulat dan runcing sedikit melewati garis
  (*overshoot*) agar tampak sama besar.
- Huruf tersusun dari bagian-bagian: *stem*, *bowl*, *counter*, *aperture*, *terminal*, dan pada font
  serif, *serif*.
- Kontras adalah beda goresan tebal dan tipis; ketebalan (*weight*) adalah seberapa gelap goresannya;
  lebar (*width*) adalah seberapa sempit atau lebar hurufnya.
- *Oblique* adalah roman yang dimiringkan; *italic* punya bentuk sendiri yang lebih mirip tulisan
  tangan.
- Karakter adalah apa yang Anda ketik; glyph adalah cara sebuah font menggambarnya. Unicode memberi
  setiap karakter sebuah *code point*, ditulis seperti `U+0041`.
- Satu em adalah ukuran font; FontEasy memakai 1000 unit per em secara bawaan, dengan sumbu y naik dari
  *baseline*.
- Setiap glyph duduk di kotak selebar *advance width*-nya; *sidebearing* adalah ruang di kiri dan kanan
  gambarnya.
- Gaya seperti Regular, Italic, dan Bold membentuk keluarga; font variabel memuat banyak gaya dalam
  satu file.

## Coba sendiri

1. Di kertas, gambar empat garis mendatar untuk *descender*, *baseline*, *x-height*, dan *cap height*
   (beri jarak sekitar 2 cm antara *baseline* dan *cap height*). Tulis "Hxdp" di antaranya. Di mana
   setiap huruf menyentuh garis? Lalu tambahkan O dan o: biarkan keduanya sedikit melewati garis.
2. Cari halaman cetak dengan font serif dan halaman lain dengan font sans serif. Di masing-masing,
   temukan sebuah *stem*, *bowl*, *counter*, *aperture*, dan *terminal*.
3. Di FontEasy, buat font baru dari template **Latin Dasar** dan klik dua kali glyph `H` di Ikhtisar.
   Baca nama dan tinggi garis-garis di editor. Lalu kembali ke tab **Ikhtisar**, ketik `U+0067` di
   kotak pencarian, klik glyph yang tersisa, dan lihat panel **Info Glyph**: karakter apa itu, dan
   apa nama Unicode-nya?
