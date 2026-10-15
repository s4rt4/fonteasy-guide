---
title: Spasi dan Metrics
description: Cara memberi setiap glyph ruang yang pas di sekelilingnya, secara manual, dengan metric key, dan dengan Spasi Otomatis.
---

Huruf-huruf Anda sudah tergambar, dan masing-masing tampak bagus. Lalu Anda mengetik sebuah kata
dan ada yang terasa janggal: sebagian huruf berdesakan, sebagian lagi saling menjauh, dan kata itu
tampak belang. Ini bukan masalah gambar. Ini masalah **spasi**, dan membereskannya adalah salah
satu langkah terbesar dari "sekumpulan gambar huruf" menuju "font yang enak dibaca".

Mengatur *spacing* (spasi, yaitu jarak di kiri dan kanan setiap huruf) berarti menentukan seberapa
banyak ruang kosong yang dibawa setiap [glyph](/reference/glossary/#glyph) di sisi kiri dan
kanannya. Bayangkan setiap huruf sebagai stempel karet di atas balok kayu: baloknya sedikit lebih
lebar daripada tintanya. Saat stempel-stempel dijajarkan, kayu di sekitar tinta itulah yang
menentukan jarak antarhuruf. Mengatur spasi berarti memilih lebar setiap balok.

Kabar baiknya: spasi mengikuti beberapa aturan sederhana, FontEasy menampilkan glyph Anda di dalam
kata sungguhan selama Anda bekerja, dan sebagian besar putaran pertama bisa dikerjakan otomatis
dengan Spasi Otomatis.

Dalam bab ini Anda akan mempelajari:

- apa itu *advance width* dan *sidebearing* kiri serta kanan;
- mengapa spasi yang rata lebih penting untuk keterbacaan daripada bentuk yang sempurna;
- cara klasik desainer huruf mengatur spasi, dengan teks uji seperti `HOH` dan `non`;
- cara mengatur spasi di FontEasy dengan Jendela Metrics, tool Metrics, dan baris teks;
- bagaimana *metric key* seperti `=o` dan `=|H` menjaga huruf yang mirip tetap seirama;
- cara kerja Spasi Otomatis dan kapan memakainya;
- apa itu angka tabular, angka proporsional, dan font *monospaced*.

## Apa itu spasi

Setiap glyph punya dua jenis ukuran: bentuknya (outline) dan
**[metrics](/reference/glossary/#metrics)**-nya, yaitu angka-angka yang menyatakan seberapa banyak
tempat yang dipakai glyph itu dalam sebaris teks. Semuanya diukur dalam unit font. Di kebanyakan
font, satu [em](/reference/glossary/#em) berisi 1.000 unit, jadi nilai 50 berarti seperdua puluh
ukuran font.

### Advance width

*[Advance width](/reference/glossary/#advance-width)* (lebar advance) adalah lebar total kotak
sebuah glyph. Saat aplikasi menyusun teks, ia menggambar satu glyph, lalu memajukan "pena" sejauh
tepat lebar itu, dan menggambar glyph berikutnya di sana. Tidak ada hal lain yang menentukan di
mana huruf berikutnya mulai (kecuali kerning, yang akan Anda kenal di bab berikutnya).

Advance width bukan lebar tintanya. Ia adalah lebar tinta **ditambah** ruang kosong di kedua sisi.

### Sidebearing

Ruang kosong di tiap sisi tinta disebut
*[sidebearing](/reference/glossary/#sidebearing)* (ruang samping):

- **sidebearing kiri** (LSB, *left sidebearing*) adalah ruang antara awal kotak dan titik paling
  kiri outline;
- **sidebearing kanan** (RSB, *right sidebearing*) adalah ruang antara titik paling kanan outline
  dan ujung kotak.

Jadi advance width selalu sama dengan LSB + lebar tinta + RSB. Bila RSB diperbesar, advance width
ikut bertambah sebanyak itu. Bila LSB diperbesar, seluruh gambar bergeser ke kanan di dalam kotak
yang menjadi lebih lebar.

![Huruf n dan o dari Source Serif beserta kotaknya: pita ungu muda adalah sidebearing kiri dan kanan, panah di bawahnya adalah lebar advance.](diagram:metrics-sidebearings)

Perhatikan kedua huruf di gambar. Sidebearing selalu diukur dari titik terluar outline. Huruf
**n** mendapat 34 unit di kiri dan 30 di kanan, tetapi angka itu diukur dari ujung serifnya;
batangnya sendiri berdiri lebih ke dalam. Huruf **o** mendapat 45 unit di tiap sisi, diukur dari
satu titik tempat lengkungnya paling dekat ke tepi. Di atas dan di bawah titik itu, sisi bulat
melengkung menjauh, sehingga ruang putih di samping `o` berbentuk baji dan jauh lebih luas daripada
yang terlihat dari angkanya. Sebentar lagi Anda akan melihat mengapa hal ini penting.

:::note
Sidebearing boleh bernilai negatif. Huruf yang punya bagian menjulur, seperti ekor `j` atau lengan
`f` miring, sering sengaja keluar dari kotaknya supaya bisa menyelip di bawah atau di atas huruf
tetangganya.
:::

## Mengapa spasi lebih penting daripada bentuk

Saat membaca, mata tidak melihat huruf satu per satu. Mata menangkap kata utuh sebagai pola goresan
hitam dan celah putih. Pembaca merasakan irama ruang putih jauh sebelum memperhatikan detail sebuah
lengkungan. Font dengan bentuk biasa saja tetapi spasi rata terasa nyaman dibaca. Font dengan
bentuk indah tetapi spasi tidak rata terasa bergelombang, karena sebagian pasangan huruf seolah
menempel dan membentuk "lubang" atau "gumpalan" di dalam kata.

![Kata minimum disusun tiga kali: terlalu rapat, terlalu renggang, dan dengan spasi yang merata.](diagram:metrics-tight-loose)

Kata *minimum* adalah alat uji yang bagus karena hampir seluruhnya terdiri atas goresan tegak
lurus. Di baris pertama hurufnya terlalu rapat: *counter* (ruang putih di dalam `n` dan `m`)
tampak lebih besar daripada celah antarhuruf, sehingga kata itu berubah jadi sisir yang gelap. Di
baris kedua huruf-hurufnya tercerai-berai. Di baris ketiga ruang putih di antara huruf kira-kira
sama dengan ruang putih di dalamnya, dan kata itu terbaca sebagai satu tekstur yang tenang dan
rata. Itulah tujuannya.

:::tip[Patokan praktis]
Ruang di antara dua batang tegak (seperti pada `nn`) sebaiknya tampak kurang lebih sama dengan
ruang putih di dalam `n`, sering sedikit lebih kecil. Font untuk teks diberi spasi lebih longgar
daripada font *display*, dan ukuran kecil butuh spasi lebih longgar daripada judul besar.
:::

## Metode klasik

Desainer huruf sudah mengatur spasi dengan cara yang sama selama lebih dari seabad. Gagasannya
berasal dari desainer huruf Walter Tracy: atur dulu spasi beberapa huruf kunci, lalu beri setiap
huruf lain sisi yang meniru huruf-huruf kunci itu.

### Sisi lurus dan sisi bulat

Kebanyakan huruf punya sisi dari beberapa jenis dasar:

- **lurus**: sisi kiri `n`, `h`, `b`; kedua sisi `H`, `I`;
- **bulat**: kedua sisi `o`, sisi kiri `d`, `c`, `e`; kedua sisi `O`;
- **diagonal**: `v`, `w`, `y`, `A`, `V`;
- **terbuka atau unik**: `r`, `f`, `t`, `L`, `T`, `F`.

Sisi bulat hanya menyentuh tepi kotaknya di satu titik, sehingga ruang putih di sampingnya lebih
besar daripada kesan angkanya. Agar tampak sejauh sisi lurus, sisi bulat justru butuh sidebearing
yang *lebih kecil*. Sebagai titik awal, sisi bulat sering mendapat kira-kira setengah sampai dua
pertiga sidebearing sisi lurus di font yang sama, bila diukur dari batangnya. (Di font berserif
seperti Source Serif angkanya bisa tampak terbalik, karena serif `n` menjulur ke arah tepi kotak.
Mata tidak peduli angka: yang dinilainya adalah luas ruang putih.)

### Teks uji spasi

Untuk menilai satu glyph, letakkan ia di antara huruf yang sudah Anda percayai. Teks uji pendek
ini disebut **teks spasi** (*spacing string*):

- `HH?HH` dan `HOH?HOH` untuk huruf kapital dan angka;
- `nn?nn` dan `non?non` untuk huruf kecil;
- `OO?OO` dan `oo?oo` untuk memeriksa sisi bulat.

Ganti `?` dengan huruf yang sedang Anda atur. Bila `nnann` tampak rata, spasi `a` sudah baik.

![Teks HOHOH dan nonon: pita ungu menandai sidebearing sisi lurus, pita jingga menandai sidebearing sisi bulat yang lebih kecil.](diagram:metrics-spacing-strings)

Perhatikan pitanya: batang lurus `H` dan `n` membawa sidebearing yang lebih lebar daripada sisi
bulat `O` dan `o`, tetapi ruang putih di antara setiap pasangan huruf tampak sama.

### Urutan mengatur spasi

Kerjakan dengan urutan ini, dan setiap langkah dibangun di atas langkah sebelumnya:

1. Atur `n` sampai `nnnn` tampak rata. Ini menentukan irama huruf kecil.
2. Atur `o` sampai `nonon` tampak rata, dengan hanya mengubah `o`.
3. Atur `H` sampai `HHHH` tampak rata, lalu `O` dengan `HOHOH`.
4. Beri huruf-huruf lain sisi dari keempat huruf ini, dengan tabel di bawah.
5. Periksa setiap huruf di teks spasinya, lalu di kata sungguhan.

| Bentuk sisi | Tiru sisi dari | Huruf (contoh) |
|---|---|---|
| Kiri lurus | kiri `n` | `b h k l m n p r` |
| Kanan lurus | kanan `n` | `h m n`, sisi batang `d q u` |
| Kiri bulat | kiri `o` | `c d e o q` |
| Kanan bulat | kanan `o` | `b o p`, sering sedikit lebih untuk `c e` |
| Kapital lurus | sisi `H` | `B D E F H I K L M N P R` (kiri) |
| Kapital bulat | sisi `O` | `C G O Q` (kiri), `D O Q` (kanan) |

Huruf diagonal dan terbuka (`v w y`, `A V W`, `T`, `L`) tidak bisa meniru apa pun. Atur spasinya
dengan mata di teks spasinya, dan serahkan pasangan sulitnya, seperti `AV` atau `To`, kepada
[kerning](/spacing/kerning/).

## Spasi di FontEasy

FontEasy membiarkan Anda mengatur spasi glyph di dalam sebaris teks, langsung di
[editor glyph](/drawing/glyph-editor/), sehingga Anda selalu menilai spasi dalam konteksnya.

### Baris teks

Di atas kanvas setiap tab glyph ada bilah berlabel **Teks**. Apa pun yang Anda ketik di sana
tampil di kanvas di sekitar glyph yang sedang diedit, lengkap dengan advance width dan kerning
yang sebenarnya. Glyph yang sedang diedit tetap bisa diedit; glyph lain digambar abu-abu.

- Ketik karakter biasa: `nnann`.
- Ketik `/` diikuti [nama glyph](/reference/glossary/#glyph-name) untuk glyph yang tidak ada di
  keyboard: `/a.sc`, atau `/A/V` untuk dua glyph. Sebuah nama berakhir di spasi atau di `/`
  berikutnya.
- Buka daftar **Teks spasi** di kanan bilah untuk teks siap pakai: **Glyph only**, `nn◦nn`,
  `oo◦oo`, `HH◦HH`, `OO◦OO`, dan `Hamburgefonstiv`. Tanda `◦` mewakili glyph yang sedang diedit.

Untuk pindah ke glyph lain di baris itu, klik dua kali glyph tersebut. Dengan tool **Teks**,
**Metrics**, atau **Kerning**, cukup klik sekali. Posisi baris di layar tidak bergeser, jadi Anda
bisa menyusuri satu kata huruf demi huruf.

:::tip
Bila Anda memilih beberapa glyph di Ikhtisar lalu membukanya bersama (tekan <kbd>Enter</kbd>),
semuanya tampil berdampingan dalam satu baris teks.
:::

### Jendela Metrics

Cara tercepat untuk mulai mengatur spasi adalah **Metrics › Jendela Metrics**
(<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>1</kbd>).

![Menu Metrics di FontEasy dengan Jendela Metrics, Spasi Otomatis…, dan Perbarui Metrics.](screen:g-menu-metrics)

1. Di Ikhtisar, klik glyph yang ingin diatur, misalnya `n`.
2. Pilih **Metrics › Jendela Metrics**.
3. FontEasy membuka glyph itu, mengisi baris teks dengan `nn◦nn` (atau `HH◦HH` untuk huruf kapital
   dan angka), dan beralih ke tool **Metrics**.

![Jendela Metrics untuk n dari Source Serif: baris teks berisi nnnnn, n di tengah adalah yang sedang diedit, dan angka di bawah tiap glyph adalah sidebearing kiri, kanan, dan lebar advance-nya.](screen:g-spacing)

Di bawah setiap glyph di baris itu kini tampak tiga angka: sidebearing kiri di tepi kiri,
sidebearing kanan di tepi kanan, dan advance width di tengah, sedikit lebih ke bawah. Garis tegak
tipis menunjukkan kotak glyph yang sedang diedit.

### Tool Metrics

Tool **Metrics** (<kbd>Y</kbd>) dibuat khusus untuk spasi. Petunjuknya di options bar menjelaskan
fungsinya: seret sidebearing; klik glyph lain di teks untuk mengatur spasinya.

1. Pilih tool **Metrics** di toolbox, atau tekan <kbd>Y</kbd>.
2. Tekan di dekat tepi **kiri** glyph lalu seret ke samping: outline bergeser di dalam kotaknya,
   sehingga sidebearing kiri berubah.
3. Tekan di dekat tepi **kanan** (garis advance width) lalu seret: kotak melebar atau menyempit,
   sehingga sidebearing kanan berubah.
4. Perhatikan seluruh baris selama menyeret. Bila celahnya sudah tampak rata, lepaskan.
5. Klik glyph berikutnya di baris itu untuk mengatur spasinya.

![Mengatur spasi H dari Mutator Sans dengan tool Metrics: baris teks berisi HHHHH dan angka 60 | 60 di bawah glyph adalah sidebearing-nya.](screen:spacing)

Setiap seretan menjadi satu langkah riwayat, jadi <kbd>Ctrl</kbd>+<kbd>Z</kbd> membatalkannya.

### Mengetik angka persis

Menyeret cocok untuk menilai dengan mata. Bila Anda sudah tahu angkanya, ketik saja:

1. Pilih tool **Pilih** (<kbd>V</kbd>) dan klik bagian kanvas yang kosong agar tidak ada yang
   terpilih.
2. Options bar kini menampilkan tiga kolom: **Lebar**, **LSB**, dan **RSB**.
3. Klik sebuah kolom, ketik angka, lalu tekan <kbd>Enter</kbd> (atau <kbd>Tab</kbd>).

Panel **Info Glyph** juga menampilkan **Lebar advance** glyph, sehingga Anda bisa memeriksa
hasilnya.

## Metric key

Banyak huruf berbagi sisi. Sisi kiri `b`, `h`, `k`, `l`, `m`, `n`, `p`, dan `r` adalah batang lurus
yang sama. Bila sidebearing kiri `n` diubah, biasanya Anda ingin semua huruf itu ikut berubah.
*[Metric key](/reference/glossary/#metrics-key)* (kunci metrics; FontEasy juga menyebutnya
*metric expression*) melakukan persis hal itu: alih-alih angka, sisi glyph berisi rumus kecil yang
menunjuk ke glyph lain.

### Bentuk metric key

Metric key diawali `=`. Anda bisa mengetiknya di kolom **Lebar**, **LSB**, atau **RSB**.

| Key | Artinya |
|---|---|
| `=n` | sama dengan sisi yang sama milik `n` |
| `=n+10` | sisi yang sama milik `n`, ditambah 10 unit |
| `=n-5` | sisi yang sama milik `n`, dikurangi 5 unit |
| `=H*1.1` | sisi yang sama milik `H`, dikali 1,1 |
| `=H/2` | sisi yang sama milik `H`, dibagi 2 |
| `=40` | selalu 40 |

Di kolom **Lebar**, key menyalin advance width glyph lain, jadi `=n` di sana membuat glyph sama
persis lebarnya dengan `n`.

Garis tegak setelah `=` berarti sisi **seberang**: `=|H` di kolom LSB mengambil RSB `H`, dan di
kolom RSB mengambil LSB `H`. Ini berguna untuk huruf yang saling bercermin. Mangkuk `d` ada di kiri, mangkuk `b` di kanan,
jadi sisi kiri `d` bisa diisi `=|b`. Huruf simetris bahkan bisa meniru sisinya sendiri: RSB `O` yang
diisi `=|O` selalu sama dengan LSB `O`.

### Memasang metric key

1. Buka glyph-nya, misalnya `m`.
2. Pilih tool **Pilih** dan klik bagian kanvas yang kosong.
3. Di kolom **LSB**, ketik `=n` lalu tekan <kbd>Enter</kbd>.
4. Di kolom **RSB**, ketik `=n` lalu tekan <kbd>Enter</kbd>.

Sidebearing kiri dan kanan `m` kini sama dengan milik `n`. Kolomnya menampilkan key dengan warna
aksen, dan bila kursor diarahkan ke kolom itu, tooltip menunjukkan nilai hasilnya (misalnya
`=n = 30`). Dengan tool Metrics, angka di bawah glyph juga menampilkan key di samping nilainya,
dengan warna aksen.

Untuk menghapus key, ketik angka biasa di kolomnya. Glyph menyimpan angka itu dan melupakan
key-nya.

FontEasy menyimpan metric key dengan cara yang sama seperti aplikasi Glyphs, sehingga key tetap
utuh bila font dibuka di Glyphs atau dibangun dengan glyphsLib.

### Perbarui Metrics

Key diterapkan saat Anda mengetiknya. Namun bila nanti `n` diubah, `m` belum ikut bergerak dengan
sendirinya. Untuk menyelaraskan semua glyph dengan key-nya, pilih **Metrics › Perbarui Metrics**
(<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>U</kbd>).

FontEasy menentukan urutannya untuk Anda: key boleh menunjuk ke glyph yang juga punya key (`m`
meniru `n`, `h` meniru `m`, …), dan glyph yang menjadi sandaran selalu diperbarui lebih dulu.
Bahkan rantai yang berputar kembali ke dirinya sendiri dihitung sekali saja dan tidak membuat
aplikasi macet. Status bar lalu menyebutkan berapa glyph yang berubah.

Bila sebuah key tidak bisa diterapkan, misalnya karena menyebut glyph yang tidak ada, FontEasy
menampilkan pesan berisi daftar glyph beserta masalahnya.

### Huruf beraksen

Huruf beraksen biasanya berupa [glyph komposit](/reference/glossary/#composite-glyph): `á` yang
tersusun dari `a` ditambah aksen (lihat [Komponen dan aksen](/drawing/components/)).
**Perbarui Metrics** memberi glyph komposit tanpa key lebar advance yang sama dengan huruf dasarnya,
jadi saat spasi `a` diubah, semua `á à â ä ã å` ikut menyesuaikan.

## Spasi Otomatis

Mengatur spasi seluruh font secara manual memakan waktu. **Metrics › Spasi Otomatis…** memberi
putaran pertama yang kuat dalam hitungan detik, yang kemudian Anda haluskan dengan mata.

### Cara kerja Spasi Otomatis

Spasi Otomatis melakukan apa yang dilakukan metode klasik, tetapi dengan mengukur:

- Ia memakai **glyph acuan**: `n` untuk huruf kecil, tanda baca, dan sejenisnya; `H` untuk huruf
  kapital dan angka.
- Ia mengukur seberapa banyak ruang putih di samping sisi glyph acuan, sebagai *luas*, sepanjang
  tinggi-x (untuk huruf kecil) atau tinggi kapital (untuk huruf kapital).
- Ia memberi setiap sisi glyph lain luas ruang putih yang sama.

Karena yang diukur adalah luas dan bukan titik terdekat, sisi bulat otomatis mendapat sidebearing
lebih kecil daripada sisi lurus, persis seperti yang akan diberikan seorang desainer.

Tinggal satu pertanyaan: seberapa dalam ruang putih di dalam bukaan ikut dihitung? Sisi terbuka
`c`, ruang di bawah lengan `r`, atau bagian dalam `L` juga ruang putih, tetapi bila semuanya
dihitung, huruf-huruf ini akan didorong terlalu dekat ke tetangganya. Pengaturan
**Kedalaman bukaan** membatasi seberapa jauh ruang putih di dalam bukaan diukur, sebagai bagian
dari tinggi yang diukur.

Metode spasi FontEasy dikalibrasi dengan tujuh font yang spasinya dibuat profesional (Arial,
Georgia, Verdana, Segoe UI, Calibri, Times, dan Tahoma). Dengan pengaturan bawaan, hasilnya
rata-rata hanya meleset sekitar 8/1000 em dari sidebearing buatan desainernya.

### Memakai Spasi Otomatis

1. Atur dulu spasi glyph acuan `n` dan `H` secara manual, sampai `nnnn` dan `HHHH` tampak pas.
   Spasi Otomatis meniru ruang putih keduanya, jadi merekalah yang menentukan nada seluruh font.
2. Di Ikhtisar, pilih glyph yang akan diatur. Tekan <kbd>Ctrl</kbd>+<kbd>A</kbd> untuk semua glyph,
   atau klik lalu <kbd>Shift</kbd>-klik untuk satu rentang. (Bila sebuah glyph sedang terbuka di
   editor, Spasi Otomatis hanya bekerja pada glyph itu.)
3. Pilih **Metrics › Spasi Otomatis…**.
4. Periksa **Acuan huruf kecil** (`n`) dan **Acuan huruf kapital** (`H`). Anda bisa mengetik nama
   glyph lain, misalnya `o` untuk font yang hurufnya sangat bulat.
5. Biarkan **Kedalaman bukaan** di 20% sebagai permulaan. Nilai yang lebih kecil menghitung lebih
   sedikit ruang putih di dalam bukaan, sehingga huruf terbuka seperti `c`, `r`, dan `L` mendapat
   ruang lebih banyak; nilai yang lebih besar merapatkannya.
6. Lihat tabelnya: untuk setiap glyph ditampilkan sidebearing **Sekarang (Ki / Ka)** dan
   **Baru (Ki / Ka)**.
7. Klik **Terapkan**.

![Dialog Spasi Otomatis untuk O dari Mutator Sans: acuan huruf kecil dan kapital, slider Kedalaman bukaan di 20%, serta sidebearing sekarang dan yang baru.](screen:autospace)

Status bar menyebutkan berapa glyph yang diberi spasi. Semuanya menjadi satu langkah riwayat, jadi
satu kali <kbd>Ctrl</kbd>+<kbd>Z</kbd> membatalkan seluruhnya.

:::caution[Spasi Otomatis adalah awal, bukan akhir]
Spasi Otomatis bekerja dari outline, bukan dari mata Anda. Setelahnya, selalu periksa seluruh font
dengan Jendela Metrics dan perbaiki huruf yang tampak janggal. Huruf diagonal (`v`, `w`, `y`, `A`,
`V`) dan huruf dengan bukaan besar (`r`, `f`, `L`, `T`) adalah tersangka yang biasa.
:::

Bila tabelnya tetap kosong dan FontEasy mengatakan tidak ada yang bisa diberi spasi, glyph yang
dipilih masih kosong, atau glyph acuan tidak ada atau belum punya outline.

### Spasi dari Perjalanan Font

Di Mode Sederhana, panel **Perjalanan Font** punya langkah **Atur spasi huruf**. Tombolnya,
**Spasi Otomatis…**, memilih semua glyph yang sudah punya outline lalu membuka dialog Spasi
Otomatis untuk semuanya sekaligus. Ini cara termudah bagi pemula untuk mengatur spasi satu font
utuh.

## Angka: tabular dan proporsional

Angka (digit 0 sampai 9) butuh keputusan khusus. Di tabel harga atau lembar kerja, angka harus
sejajar dalam kolom, jadi setiap angka butuh advance width yang sama. Angka seperti ini disebut
*[tabular figures](/reference/glossary/#tabular-figures)* (angka tabular). Di dalam teks biasa,
angka `1` yang ramping di dalam kotak lebar tampak kesepian, sehingga banyak font juga punya
**angka proporsional**, yang lebarnya hanya sebesar yang dibutuhkan.

![Angka tabular berada di kotak yang sama lebar, sehingga 1111 dan 2026 sejajar; angka proporsional punya kotak dengan lebar berbeda-beda.](diagram:metrics-figures)

Cara mengatur spasinya di FontEasy:

- **Tabular**: beri semua angka **Lebar** yang sama. Cara termudah adalah key lebar: beri `zero`
  lebar yang Anda suka, lalu ketik `=zero` di kolom **Lebar** milik `one` sampai `nine`. Letakkan
  setiap angka di tengah kotaknya dengan sidebearing kiri dan kanan yang sama.
- **Proporsional**: atur spasinya seperti huruf, dengan `HH?HH` dan `00?00` (Spasi Otomatis memakai
  `H` sebagai acuan untuk angka).

Banyak font punya keduanya: satu set sebagai glyph bawaan dan set lainnya sebagai glyph tambahan
yang diberi akhiran nama, seperti `one.tf` (tabular) atau `one.pf` (proporsional). FontEasy
mengubah nama-nama itu menjadi fitur OpenType `tnum` dan `pnum` secara otomatis, sehingga pengguna
bisa berganti di antara keduanya; lihat [Fitur OpenType](/opentype/features/).

## Font monospaced

Di font *[monospaced](/reference/glossary/#monospaced)* (berlebar tetap), seperti font untuk
pemrograman, *setiap* glyph punya advance width yang sama: `i` dan `m` memakai ruang yang persis
sama. Cara mengatur spasinya pun berbeda: lebarnya tidak boleh diubah, jadi yang diubah adalah
desainnya. Huruf `i` yang ramping diberi serif panjang untuk mengisi kotaknya, huruf `m` yang
lebar dipadatkan.

FontEasy tidak punya sakelar khusus untuk monospace, tetapi Anda bisa membuat font monospaced
dengan metric key:

1. Beri `n` lebar yang Anda inginkan untuk semua glyph, misalnya 600.
2. Di kolom **Lebar** setiap glyph lain, ketik `=n`.
3. Letakkan setiap glyph di tengah kotaknya dengan memberi **LSB** dan **RSB** nilai yang sama.
4. Bila nanti lebar `n` diubah, pilih **Metrics › Perbarui Metrics** dan semua glyph ikut
   menyesuaikan.

Untuk ratusan glyph, mengetik key satu per satu itu lambat; sebuah skrip pendek bisa memasang
semuanya (lihat [Scripting](/power/scripting/)).

## Tips dan kesalahan umum

- **Atur spasi sebelum kerning.** Kerning memperbaiki beberapa pasangan yang canggung. Kerning
  tidak bisa menyelamatkan font yang spasi dasarnya tidak rata. Dialog Kerning Otomatis di
  FontEasy juga mengatakannya: spasi menentukan ritme, kerning memperbaiki pasangan.
- **Nilai di ukuran baca yang sesungguhnya.** Lihat panel **Pratinjau** di ukuran teks, jangan
  hanya huruf raksasa di kanvas. Ketik satu kalimat panjang di sana.
- **Sipitkan mata.** Setengah pejamkan mata, atau mundur sedikit dari layar. Bintik gelap dan
  lubang di baris teks langsung terlihat saat detailnya kabur.
- **Pakai kata sungguhan.** Teks spasi untuk putaran pertama; kata seperti `minimum`,
  `Hamburgefonstiv`, dan kalimat dalam bahasa Anda sendiri menangkap hal yang luput dari teks uji.
- **Periksa kedua sisi.** Glyph yang tampak baik setelah `n` bisa tampak salah sebelum `o`.

:::caution[Jangan mengatur spasi hanya dari angka]
Dua glyph dengan angka sidebearing yang sama tidak akan tampak sama jaraknya bila yang satu bulat
dan yang lain lurus. Percayai baris teks di layar, bukan angka di bawahnya.
:::

:::caution[Menggeser outline tidak sama dengan menggeser kotak]
Menyeret outline itu sendiri dengan tool Pilih menggeser gambar di dalam kotaknya, sehingga
*kedua* sidebearing berubah sekaligus. Untuk mengubah satu sisi saja, pakai tool Metrics atau
kolom LSB dan RSB.
:::

## Bila ada yang tidak beres

- **Baris teks menampilkan glyph di tempat yang salah atau ruang kosong.** Kemungkinan Anda
  mengetik nama setelah `/` yang tidak ada di font. Periksa ejaan nama glyph-nya.
- **Metric key tidak diterima, atau Perbarui Metrics menampilkan error.** Key menyebut glyph yang
  tidak ada, atau glyph itu belum punya outline untuk diukur. Perbaiki namanya, atau gambar dulu
  glyph-nya.
- **Setelah Perbarui Metrics, huruf beraksen lebarnya salah.** Perbarui Metrics hanya menyalin
  lebar huruf dasar bila glyph komposit itu tidak punya key sendiri dan komponen pertamanya tidak
  digeser ke samping. Beri key seperti `=a`, atau hapus key-nya.
- **Spasi Otomatis membuat sebuah huruf terlalu rapat atau terlalu renggang.** Batalkan dengan
  <kbd>Ctrl</kbd>+<kbd>Z</kbd>, lalu atur huruf itu secara manual. Huruf dengan bentuk tidak biasa
  lebih baik diatur dengan mata.

## Ringkasan

- **Advance width** adalah lebar penuh kotak glyph; **sidebearing kiri dan kanan** adalah ruang
  kosong di tiap sisi outline.
- Spasi yang rata lebih penting untuk keterbacaan daripada bentuk yang sempurna: ruang putih di
  antara huruf harus tampak seperti ruang putih di dalamnya.
- Atur dulu `n`, `o`, `H`, dan `O` dengan teks spasi seperti `nnnn`, `nonon`, dan `HOHOH`, lalu
  beri huruf lain sisi dari keempatnya; sisi bulat butuh sidebearing lebih kecil daripada sisi
  lurus.
- **Baris teks** menampilkan teks apa pun di sekitar glyph yang diedit; **Metrics › Jendela
  Metrics** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>1</kbd>) menyiapkan teks spasi dan tool
  **Metrics** (<kbd>Y</kbd>).
- **Metric key** seperti `=n`, `=o+5`, dan `=|H` mengaitkan sisi ke glyph lain;
  **Metrics › Perbarui Metrics** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>U</kbd>) menyelaraskannya.
- **Metrics › Spasi Otomatis…** memberi setiap sisi ruang putih sebanyak acuan `n` atau `H`;
  periksa hasilnya dengan mata.
- Angka tabular sama lebar; angka proporsional punya lebar masing-masing; di font monospaced
  setiap glyph sama lebarnya.

## Coba sendiri

1. Buka font apa saja, pilih `n` di Ikhtisar, lalu pilih **Metrics › Jendela Metrics**. Seret
   sidebearing kanan `n` jauh ke luar dan lihat `nnnnn` tercerai-berai, lalu batalkan. Sekarang
   ketik `nonon` di baris teks dan atur hanya `o` sampai barisnya tampak rata.
2. Buka `m`, pilih tool **Pilih**, klik tempat kosong, lalu ketik `=n` di kolom **LSB** dan
   **RSB**. Setelah itu ubah sidebearing kiri `n`, pilih **Metrics › Perbarui Metrics**, dan
   periksa apakah `m` ikut berubah.
