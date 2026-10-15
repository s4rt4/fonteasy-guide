---
title: Editor Glyph
description: Tur keliling editor glyph, tempat Anda menggambar dan mengedit satu glyph demi satu di antara tetangganya.
---

Editor glyph adalah tempat Anda paling banyak menghabiskan waktu di FontEasy. Editor ini
menampilkan satu glyph dalam ukuran besar, lengkap dengan garis-garis yang dipakai bersama oleh
setiap huruf dalam font, dan menyediakan alat untuk menggambar serta membentuk ulang outline-nya.
Bayangkan sebuah meja gambar dengan penggaris, dan kertasnya sudah tercetak garis-garis bantu.

Namun huruf tidak pernah hidup sendirian. Huruf "n" baru tampak benar bila terlihat di samping
huruf lain, jadi editor bisa menampilkan sebaris teks di sekitar glyph yang sedang Anda kerjakan.
Anda menggambar dalam konteks, seperti huruf itu nantinya dibaca.

Bab ini membahas setiap bagian editor: cara membuka glyph, arti garis-garis di kanvas, cara
berpindah-pindah, cara memilih, dan panel-panel yang membantu Anda. Alat-alat gambarnya sendiri
dibahas di bab tersendiri, [Alat gambar](/drawing/drawing-tools/).

Dalam bab ini Anda akan mempelajari:

- cara membuka glyph dan berpindah ke glyph berikutnya atau sebelumnya;
- arti garis metrics dan garis *sidebearing* di kanvas;
- cara memperbesar, menggeser tampilan, dan memakai penggaris;
- cara mengedit glyph di dalam sebaris teks;
- cara memilih titik, kontur, dan komponen;
- isi bilah opsi, bilah status, serta panel Info Glyph, Transformasi, Layer, dan Riwayat;
- cara memakai garis bantu (*guide*), layer latar, dan gambar referensi;
- cara kerja *snapping* dan pembatalan (*undo*).

## Membuka glyph

Semuanya dimulai di **Ikhtisar**, yaitu kisi berisi semua glyph dalam font Anda. Untuk membuka
glyph di editor:

1. Temukan glyph di Ikhtisar (bab [set glyph](/drawing/glyph-set/) menjelaskan cara mencari dan
   menyaring).
2. Klik dua kali glyph itu. Atau klik sekali lalu tekan <kbd>Enter</kbd> (**Glyph › Edit Glyph**).

![Ikhtisar Source Serif 4: huruf "a" terpilih, dan panel Info Glyph di kanan menampilkan nama, Unicode, dan ukurannya.](screen:g-overview)

Glyph terbuka di tab baru di bawah tab font. Deretan tab kini berisi **Ikhtisar**, diikuti satu tab
untuk setiap glyph yang terbuka. Klik **Ikhtisar** untuk kembali ke kisi; klik tab glyph untuk
kembali ke glyph itu. Tutup tab glyph dengan tanda × kecil di atasnya, atau dengan klik tombol
tengah tetikus.

Jika Anda memilih beberapa glyph di Ikhtisar lalu menekan <kbd>Enter</kbd>, FontEasy membukanya
bersama sebagai sebaris teks, dengan glyph yang terakhir Anda klik sebagai glyph yang diedit.
Penjelasannya ada di [Mengedit di dalam sebaris teks](#mengedit-di-dalam-sebaris-teks).

:::tip
Klik dua kali sebuah *[component](/reference/glossary/#component)* (komponen) di editor untuk
membuka glyph asalnya. Pada "é", klik dua kali aksennya untuk mengedit aksen itu sendiri. Lihat
[Komponen dan aksen](/drawing/components/).
:::

### Pindah ke glyph berikutnya

Anda tidak perlu kembali ke Ikhtisar untuk mengedit huruf berikutnya:

- **Glyph › Glyph Berikutnya** (<kbd>PageDown</kbd>) menampilkan glyph berikutnya menurut urutan
  font.
- **Glyph › Glyph Sebelumnya** (<kbd>PageUp</kbd>) menampilkan glyph sebelumnya.

Di akhir font, Glyph Berikutnya kembali ke glyph pertama. Pilihan di Ikhtisar ikut berpindah,
sehingga saat Anda kembali ke kisi, glyph yang terakhir Anda edit sudah terpilih.

## Tur keliling editor

Berikut editor dengan huruf "a" Source Serif terbuka dan tool Node terpilih:

![Editor glyph: kotak alat di kiri, bilah opsi di atas, bilah Teks dan penggaris di atas kanvas, huruf "a" dengan titik-titiknya di tengah, dan panel di kanan serta bawah.](screen:g-edit)

Dari atas ke bawah dan dari kiri ke kanan:

- **Bilah judul** dengan menu-menu.
- **Bilah opsi**: tool yang aktif, pengaturannya, dan petunjuk satu baris cara memakainya.
- **Kotak alat** di sepanjang tepi kiri. Setiap tool punya bagian sendiri di
  [Alat gambar](/drawing/drawing-tools/).
- **Deretan tab**: **Ikhtisar** dan glyph-glyph yang terbuka.
- Bilah **Teks**: sebaris teks di sekitar glyph yang Anda edit.
- **Penggaris** di sepanjang tepi atas dan kiri kanvas.
- **Kanvas** itu sendiri, berisi glyph, titik-titiknya, dan garis metrics.
- **Panel** di kanan dan di bawah: Info Glyph, Layer, Transformasi, Validasi, Riwayat, Pratinjau,
  dan lainnya. Tampilkan atau sembunyikan masing-masing dari **Jendela › Panel**, dan sembunyikan
  atau tampilkan semua panel sekaligus dengan <kbd>Tab</kbd>.
- **Bilah status** di paling bawah.

Glyph yang masih kosong menampilkan pengingat singkat di tengah kanvas tentang cara mengisinya:
gambar dengan Pena (<kbd>P</kbd>) atau Pensil (<kbd>N</kbd>), tempel bentuk dari Illustrator atau
Inkscape, atau pakai **Alat › Jiplak Gambar Otomatis…**.

![Mode Sederhana, mengedit glyph kosong "R": kanvas menampilkan petunjuk cara memulai, dan panel Perjalanan Font mendaftar langkah berikutnya.](screen:emptyglyph)

## Garis metrics

Di kanvas terbentang garis-garis horizontal tipis, masing-masing berlabel nama dan tingginya dalam
satuan font ("Tinggi-x 475"). Garis-garis itu adalah *[metrics](/reference/glossary/#metrics)*
(ukuran-ukuran tinggi) font Anda: tinggi bersama yang membuat semua huruf tampak satu keluarga.

![Lima garis metrics pada "Hdxp": ascender di puncak "d", tinggi kapital di puncak "H", tinggi-x di puncak "x", baseline tempat huruf berdiri, dan descender di dasar "p".](diagram:glyph-editor-vertical-metrics)

| Garis | Yang ditandai |
|---|---|
| *[Ascender](/reference/glossary/#ascender)* | Seberapa tinggi huruf kecil yang menjulang: puncak b, d, h, k, l. |
| [Tinggi kapital](/reference/glossary/#cap-height) | Puncak huruf kapital yang datar seperti H, E, T. |
| [Tinggi-x](/reference/glossary/#x-height) | Puncak huruf kecil yang datar seperti x, v, z; tinggi "badan" a, n, o. |
| *[Baseline](/reference/glossary/#baseline)* (garis dasar) | Garis tempat huruf berdiri. Tingginya 0. |
| *[Descender](/reference/glossary/#descender)* | Seberapa rendah ekor huruf turun: dasar g, j, p, q, y. Di bawah 0, jadi nilainya negatif. |

Bila dua garis berada di ketinggian yang sama, keduanya berbagi satu label, misalnya
"ascender / tinggi kapital 800". Baseline digambar sedikit lebih tegas daripada yang lain. Nilai-nilai
ini Anda atur di **Font › Info Font…**; bab [Info Font](/production/font-info/) menjelaskan cara
memilihnya.

:::note[Overshoot]
Huruf bulat seperti "o" dan "c" sedikit menyembul di atas tinggi-x dan di bawah baseline. Ini
disebut *[overshoot](/reference/glossary/#overshoot)* (lebihan lengkung), dan memang disengaja:
lingkaran yang hanya menyentuh garis tampak lebih kecil daripada persegi setinggi itu.
:::

## Sidebearing dan lebar advance

Di kanvas juga berdiri dua garis vertikal. Yang kiri berada di x = 0, titik asal glyph. Yang kanan
adalah *[advance width](/reference/glossary/#advance-width)* (lebar advance) glyph: seberapa jauh
posisi ketik bergeser setelah glyph ini. Area di antara keduanya diberi warna samar, dan lebarnya
tertulis dengan angka kecil di kanan bawah garis kanan.

Ruang antara outline dan kedua garis itu disebut
*[sidebearing](/reference/glossary/#sidebearing)* (ruang samping): sidebearing kiri (LSB) dan
sidebearing kanan (RSB). Sidebearing menentukan seberapa banyak ruang di antara huruf, jadi
merupakan bagian besar dari *[spacing](/reference/glossary/#spacing)* (pengaturan jarak huruf).

![Huruf "n" Source Serif di antara dua garis vertikalnya: sidebearing kiri (LSB) dan kanan (RSB) adalah celah antara outline dan garis, dan lebar advance adalah jarak antara kedua garis.](diagram:glyph-editor-sidebearings)

Anda bisa mengubah lebar langsung di kanvas: dengan tool Pilih atau Node, seret garis vertikal
kanan. Tool [Metrics](/drawing/drawing-tools/#metrics) memungkinkan Anda menyeret kedua
sidebearing. Dan saat tidak ada yang dipilih, bilah opsi menampilkan angka yang bisa Anda ketik,
seperti dijelaskan di bawah. Spasi punya bab sendiri: [Spasi dan metrics](/spacing/metrics/).

## Berpindah di kanvas

### Memperbesar dan memperkecil

- **Ctrl + roda tetikus** (atau cubitan di touchpad) memperbesar dan memperkecil di sekitar
  penunjuk.
- **Tampilan › Perbesar** (<kbd>Ctrl</kbd>+<kbd>=</kbd>) dan **Tampilan › Perkecil**
  (<kbd>Ctrl</kbd>+<kbd>-</kbd>) mengubah zoom bertahap.
- **Tampilan › Muat di Jendela** (<kbd>Ctrl</kbd>+<kbd>0</kbd>) memuat kembali glyph, dari
  descender sampai ascender, ke dalam jendela.
- Tool **Zoom** (<kbd>Z</kbd>): klik untuk memperbesar, <kbd>Alt</kbd>+klik untuk memperkecil, atau
  seret sebuah persegi di sekitar bagian yang ingin Anda penuhkan ke jendela.

### Menggeser tampilan

- **Roda tetikus** menggulir tampilan ke atas dan ke bawah (dan ke samping di touchpad).
- Tahan <kbd>Space</kbd> lalu seret, dengan tool apa pun, untuk menggeser tampilan. Lepaskan
  <kbd>Space</kbd> dan Anda kembali ke tool semula.
- Seret dengan **tombol tengah tetikus**.
- Tool **Tangan** (<kbd>H</kbd>) menggeser tampilan dengan seretan biasa.

### Penggaris

Penggaris terbentang di sepanjang tepi atas dan kiri kanvas. Angkanya dalam satuan font, sama
dengan garis metrics, dan garis skalanya makin rapat saat Anda memperbesar. Penggaris juga tempat
asal garis bantu; lihat [Garis bantu](#garis-bantu).

## Mengedit di dalam sebaris teks

Di atas kanvas terdapat bilah **Teks**. Apa pun yang Anda ketik di sana ditampilkan di kanvas di
sekitar glyph yang Anda edit, disusun dengan lebar advance dan
*[kerning](/reference/glossary/#kerning)* (pengaturan jarak antar pasangan huruf) font Anda yang
sebenarnya. Glyph yang Anda edit tetap bisa diedit, lengkap dengan titik-titiknya; yang lain
digambar padat dengan warna yang lebih lembut, sehingga Anda bisa menilai bentuk dan jarak dalam
konteks.

![Teks "nnonn": huruf "o" di tengah adalah glyph yang sedang diedit, dengan titik-titiknya; huruf "n" di kedua sisinya adalah tetangganya.](diagram:glyph-editor-text-line)

Anda bisa mengetik:

- **karakter**, seperti `nnonn` atau `Hamburgefonstiv`;
- **nama glyph** setelah garis miring, untuk glyph yang tidak punya karakter sendiri: `/a.sc`,
  atau `/A/V` untuk dua glyph. Sebuah nama berakhir di spasi atau di garis miring berikutnya.

Daftar **Teks spasi** di ujung kanan bilah Teks mengisi baris siap pakai dengan glyph yang Anda
edit di tengahnya: `nn◦nn`, `oo◦oo`, `HH◦HH`, `OO◦OO`, `Hamburgefonstiv`, atau glyph itu saja.
Tanda ◦ mewakili glyph Anda. Baris-baris klasik ini dipakai desainer huruf untuk menguji spasi.

Untuk mengedit **glyph lain di baris itu**, klik dua kali glyph tersebut dengan tool Pilih atau
Node, atau klik dengan tool Teks, Metrics, atau Kerning. Barisnya tetap di tempat di layar; hanya
glyph yang diedit yang berganti.

:::tip
Pilih **Metrics › Jendela Metrics** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>1</kbd>) untuk beralih ke
tool Metrics dengan baris spasi yang sudah disiapkan: `HH◦HH` untuk huruf kapital dan angka,
`nn◦nn` untuk yang lainnya.
:::

## Memilih

Sebelum memindahkan, menghapus, atau mentransformasi sesuatu, Anda memilihnya terlebih dahulu.
Dengan tool **Pilih** (<kbd>V</kbd>) atau tool **Node** (<kbd>A</kbd>):

| Untuk memilih | Lakukan ini |
|---|---|
| Satu titik | Klik titik itu. |
| Beberapa titik | <kbd>Shift</kbd>+klik masing-masing. <kbd>Shift</kbd>+klik titik yang terpilih untuk membatalkan pilihannya. |
| Titik dalam satu area | Seret persegi di sekitarnya, mulai dari bagian kanvas yang kosong. Tahan <kbd>Shift</kbd> untuk menambah pilihan. |
| Seluruh kontur | Klik outline-nya dengan tool Pilih. |
| Satu segmen | Klik outline dengan tool Node: dua node di ujung segmen itu terpilih. |
| Komponen atau anchor | Klik benda itu. |
| Semuanya | **Edit › Pilih Semua** (<kbd>Ctrl</kbd>+<kbd>A</kbd>). |
| Tidak ada | **Edit › Batal Pilih** (<kbd>Ctrl</kbd>+<kbd>D</kbd>), <kbd>Esc</kbd>, atau klik tempat kosong. |

Titik yang terpilih berubah ke warna aksen. Lalu:

- **Seret** untuk memindahkannya. Memindahkan node ikut membawa handle-nya.
- **Geser sedikit** dengan tombol panah: satu satuan per tekan, sepuluh dengan <kbd>Shift</kbd>.
- **Hapus** dengan <kbd>Delete</kbd> (atau <kbd>Backspace</kbd>). Menghapus node menyambung
  tetangganya, dan kurva dipertahankan bila masih ada handle.
- **Potong, salin, dan tempel** dengan <kbd>Ctrl</kbd>+<kbd>X</kbd>, <kbd>Ctrl</kbd>+<kbd>C</kbd>,
  dan <kbd>Ctrl</kbd>+<kbd>V</kbd>. FontEasy menyalin kontur yang terpilih sebagai SVG, jadi Anda
  bisa menempelkannya ke Illustrator, Inkscape, atau Figma, dan menempelkan bentuk yang disalin dari
  sana ke dalam glyph.

Menyeret satu handle saja hanya memindahkan handle itu (dan, pada titik halus, memutar handle di
seberangnya agar tetap segaris). Klik dua kali sebuah node mengubahnya antara titik sudut dan titik
halus; klik dua kali outline di antara node menambahkan node baru di situ.

## Bilah opsi

Bilah opsi di bawah menu selalu menyebut tool yang aktif dan memberi petunjuk satu baris. Saat
sebuah glyph terbuka, bilah ini juga menampilkan kolom yang bisa Anda isi. Isinya bergantung pada
tool dan pilihan.

**Dengan tool Pilih, Node, Putar, atau Skala dan ada yang terpilih**, Anda melihat kotak batas
pilihan: **X** dan **Y** (sudut kiri bawahnya), **W** (lebar) dan **H** (tinggi), diikuti tombol
**Balik Horizontal** dan **Balik Vertikal**. Ketik angka baru lalu tekan <kbd>Enter</kbd>: X dan Y
memindahkan pilihan, W dan H mengubah skalanya.

![Mengedit "R" Mutator Sans dengan beberapa titik terpilih: bilah opsi menampilkan X 800, Y 0, W 431, dan H 210 untuk pilihan itu.](screen:edit)

**Saat tidak ada yang terpilih**, tool yang sama menampilkan **Lebar**, **LSB**, dan **RSB** glyph.
Ketik angka untuk mengubahnya. Kolom ini juga menerima
*[metrics key](/reference/glossary/#metrics-key)* (rumus metrics), seperti `=n` (sama dengan "n")
atau `=|H+10`; kolom yang mengikuti rumus menampilkannya dengan warna aksen. Bab
[Spasi dan metrics](/spacing/metrics/) menjelaskan rumus ini.

![Tool Pilih tanpa pilihan: bilah opsi menampilkan Lebar 707, LSB 47, dan RSB 47 untuk huruf "O".](screen:g-tool-select)

Tool lain punya opsi sendiri: Pena punya **Kurva Hobby**, Poligon punya **Sisi**. Bab
[Alat gambar](/drawing/drawing-tools/) membahasnya. Bilah opsi bisa disembunyikan dengan
**Tampilan › Bilah Opsi**.

## Bilah status

Bilah status di bagian bawah menampilkan, dari kanan: versi FontEasy, mode (Sederhana atau Pro),
jumlah glyph dalam font dan *[units per em](/reference/glossary/#units-per-em)*-nya, posisi penunjuk
dalam satuan font (`x 250  y -10`) saat berada di atas kanvas, serta nama dan Unicode glyph saat ini
(`a · U+0061`). Di kiri, bilah status menampilkan pesan, seperti "3 titik ditambahkan" setelah
sebuah perintah. Sembunyikan dengan **Tampilan › Bilah Status**.

## Panel-panel

### Info Glyph

Panel **Info Glyph** menerangkan glyph: **Nama**, **Unicode**, **Karakter**, nama Unicode
karakternya, **Aksara**, **Lebar advance**, serta jumlah **Kontur** dan **Titik**-nya. Bagian
**Font** di bawahnya menampilkan keluarga, gaya, units per em, dan jumlah glyph.

Saat sebuah glyph terbuka di editor, Info Glyph juga mendaftar **Komponen** dan **Anchor**-nya,
dengan kolom x dan y yang bisa diseret untuk menempatkannya dengan tepat. **Tambah Anchor Umum**
menambahkan "top", "bottom", dan sejenisnya, yang diletakkan berdasarkan outline. Anchor dan
komponen dijelaskan di [Komponen dan aksen](/drawing/components/).

### Transformasi

Panel **Transformasi** memindahkan, mengubah skala, memutar, memiringkan, dan membalik pilihan,
atau seluruh glyph bila tidak ada yang dipilih, di sekitar titik tengahnya:

1. Ketik nilainya: **Geser X** dan **Geser Y** dalam satuan, **Skala X** dan **Skala Y** dalam
   persen, **Putar** dan **Miring** dalam derajat.
2. Klik **Terapkan**.

**Atur Ulang** mengembalikan kolom ke 0 dan 100%. Dua tombol balik langsung mencerminkan pilihan.
Operasi yang sama ada di menu **Glyph › Transformasi** sebagai **Skala…**, **Putar…**, dan
**Miringkan…** (dialog kecil) serta **Balik Horizontal** dan **Balik Vertikal**.

### Layer

*[Layer](/reference/glossary/#layer)* (lapisan) adalah gambar lain dari glyph yang sama, disimpan di
belakang atau di sampingnya. Panel **Layer** mendaftar layer-layer glyph. Klik salah satunya untuk
mengeditnya:

- **Latar depan** adalah glyph yang sebenarnya, yang masuk ke dalam font.
- **Latar** adalah layer untuk menjiplak. Apa pun yang Anda letakkan di sana tampil samar di
  belakang latar depan dan tidak pernah diekspor. Tombol mata di sampingnya menampilkan atau
  menyembunyikannya di belakang latar depan (sama dengan **Tampilan › Tampilkan Layer Latar**).
- Layer lain dalam font, jika ada, juga didaftar. Layer yang belum punya gambar untuk glyph ini
  ditampilkan abu-abu.

**Salin Latar Depan ke Latar** (juga **Glyph › Salin ke Latar**) menyalin outline saat ini ke
latar. Ini berguna sebelum perubahan besar: bentuk lama tetap terlihat di belakang bentuk baru
untuk dibandingkan. Di Mode Pro, untuk font variabel, panel ini juga mengelola layer antara dan
layer alternatif; lihat [Font variabel](/advanced/variable/).

### Riwayat

Panel **Riwayat** mendaftar perubahan Anda, yang terbaru di bawah: "Geser", "Pena", "Hapus",
"Tambah Titik", dan seterusnya. Setiap seretan dihitung satu langkah, selama apa pun seretannya.
Klik langkah yang lebih awal untuk kembali ke sana; langkah sesudahnya menjadi abu-abu, dan Anda
bisa mengekliknya lagi untuk maju. Membuat perubahan baru dari situ membuang langkah yang abu-abu.

Riwayat yang sama dipakai oleh **Edit › Batalkan** (<kbd>Ctrl</kbd>+<kbd>Z</kbd>) dan
**Edit › Ulangi** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>Z</kbd>). Riwayat ini milik font, jadi juga
mencatat perubahan yang dibuat di Ikhtisar dan di dialog.

### Validasi

Panel **Validasi** mendaftar masalah pada glyph yang terbuka, seperti kontur terbuka atau arah yang
salah, dengan tombol **Perbaiki** untuk masing-masing; masalah itu juga ditandai di kanvas. Bila
semuanya beres, panel menulis "Glyph ini tidak bermasalah." Lihat
[masalah outline](/drawing/problems/).

## Garis bantu

*[Guide](/reference/glossary/#guide)* (garis bantu) adalah garis di kanvas yang membantu Anda
menempatkan sesuatu: tebal batang, tinggi palang, atau titik tengah huruf bulat. Garis bantu tidak
pernah menjadi bagian outline font.

Cara bekerja dengan garis bantu:

1. **Tambah** garis bantu: seret dari penggaris atas ke bawah untuk garis horizontal, atau dari
   penggaris kiri ke kanan untuk garis vertikal. Lepaskan di tempat yang Anda inginkan.
2. **Pindahkan** garis bantu: seret dengan tool Pilih atau Node.
3. **Hapus** garis bantu: seret kembali ke penggaris.

Garis bantu yang ditambahkan dengan cara ini milik glyph tersebut. Garis bantu milik seluruh font,
jika font memilikinya, digambar dengan warna lebih muda di setiap glyph. Titik menjepret ke garis
bantu saat diseret, sehingga garis bantu menjadi cara cepat menjaga batang tetap sama lebar.

## Latar dan gambar referensi

Selain layer latar, Anda bisa meletakkan gambar di belakang glyph, misalnya hasil pindaian huruf
yang Anda gambar di kertas:

1. Pilih **Glyph › Tempatkan Gambar…** lalu pilih file gambar.
2. Gambar muncul di belakang glyph, dibuat samar, dan diskalakan agar tingginya mengisi ruang dari
   descender sampai ascender.
3. Gambar di atasnya dengan Pena atau Pensil.
4. Setelah selesai, pilih **Glyph › Hapus Gambar**.

Gambar itu disimpan bersama font, jadi masih ada saat Anda membukanya lagi. Untuk mengubah gambar
menjadi outline secara otomatis alih-alih menggambar di atasnya, lihat
[Impor dan jiplak](/drawing/import-trace/).

## Snapping

FontEasy menjepretkan (*snap*) titik saat Anda menyeret titik, menggambar bentuk, atau memakai
Pena:

- setiap titik jatuh tepat di **satuan font bulat**, tidak pernah di antaranya;
- dalam jarak beberapa piksel layar, titik menjepret ke **garis metrics** (baseline, tinggi-x,
  tinggi kapital, ascender, descender), ke **titik asal** dan **lebar advance** glyph, serta ke
  **garis bantu**.

*Snapping* selalu aktif; tidak ada yang perlu dinyalakan. Jika titik melompat ke garis yang tidak
Anda inginkan, perbesar tampilan: jarak jepret diukur dalam piksel layar, jadi pada zoom yang lebih
besar Anda bisa meletakkan titik lebih dekat ke garis tanpa ikut menjepret.

## Opsi tampilan

Menu **Tampilan** punya beberapa sakelar untuk editor:

| Perintah | Fungsinya |
|---|---|
| **Tampilkan Isian** | Mengisi outline dengan warna samar, atau hanya menampilkan garis tepinya. |
| **Tampilkan Layer Latar** | Menampilkan atau menyembunyikan layer latar di belakang latar depan. |
| **Tampilkan Master Lain** | Pada font variabel, menampilkan master lain glyph sebagai outline samar. |
| **Tampilkan Masalah** | Menandai masalah validasi di kanvas dan di Ikhtisar. |

## Kesalahan umum

:::caution[Shortcut satu tombol malah mengetik huruf, bukan berganti tool]
Kursor sedang berada di bilah Teks (atau kolom teks lain). Klik dulu di kanvas; shortcut tool satu
tombol hanya bekerja bila tidak ada kolom teks yang aktif.
:::

:::caution[Glyph saya tidak terlihat di kanvas]
Mungkin tampilan sudah terlalu besar atau tergeser. Tekan <kbd>Ctrl</kbd>+<kbd>0</kbd>
(**Tampilan › Muat di Jendela**).
:::

:::caution[Sebuah titik terus melompat ke garis]
Itulah *snapping*. Perbesar tampilan lalu seret lagi, atau geser titik dengan tombol panah.
:::

## Ringkasan

- Buka glyph dengan klik dua kali di Ikhtisar, atau pilih lalu tekan <kbd>Enter</kbd>.
  <kbd>PageDown</kbd> dan <kbd>PageUp</kbd> berpindah ke glyph berikutnya dan sebelumnya.
- Garis metrics menunjukkan ascender, tinggi kapital, tinggi-x, baseline, dan descender; dua garis
  vertikal menunjukkan titik asal dan lebar advance, dengan sidebearing di antaranya.
- Perbesar dengan <kbd>Ctrl</kbd>+roda, geser dengan roda atau <kbd>Space</kbd>+seret;
  <kbd>Ctrl</kbd>+<kbd>0</kbd> memuat glyph ke jendela.
- Bilah Teks menampilkan glyph di antara huruf lain; ketik karakter atau `/nama`, atau pilih teks
  spasi.
- Pilih dengan klik, <kbd>Shift</kbd>+klik, dan seret persegi; geser sedikit dengan tombol panah.
- Bilah opsi menampilkan X, Y, W, H untuk pilihan, atau Lebar, LSB, dan RSB untuk glyph.
- Info Glyph, Transformasi, Layer, Riwayat, dan Validasi adalah panel-panel editor.
- Seret garis bantu dari penggaris; titik menjepret ke satuan bulat, garis metrics, dan garis
  bantu.
- Setiap perubahan bisa dibatalkan dengan <kbd>Ctrl</kbd>+<kbd>Z</kbd> atau dari panel Riwayat.

## Coba sendiri

1. Buka huruf "n" dari font apa saja. Ketik `nnonn` di bilah Teks, lalu klik dua kali huruf "o"
   untuk mengeditnya. Tekan <kbd>PageDown</kbd> tiga kali dan perhatikan glyph mana yang muncul.
   Tekan <kbd>Ctrl</kbd>+<kbd>0</kbd>.
2. Di glyph kosong, seret garis bantu horizontal dari penggaris atas ke tinggi-x. Gambar persegi
   panjang dengan tool Persegi Panjang (<kbd>M</kbd>) dan lihat sisi atasnya menjepret ke garis
   bantu. Pilih bentuk itu, ketik **W** baru di bilah opsi, lalu tekan <kbd>Enter</kbd>. Kemudian
   buka panel Riwayat dan klik langkah pertama untuk kembali.
