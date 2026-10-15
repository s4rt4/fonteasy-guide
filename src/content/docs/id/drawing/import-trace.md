---
title: Memasukkan Karya Gambar
description: Buka font yang sudah ada, impor glyph yang digambar di Illustrator atau Inkscape sebagai file SVG, sinkronkan folder SVG, dan trace gambar huruf menjadi outline.
---

Anda tidak harus menggambar setiap huruf di dalam FontEasy. Banyak desainer membuat sketsa di
kertas, menggambar di Adobe Illustrator, Inkscape, atau Figma, atau mulai dari font yang sudah ada.
FontEasy bisa memasukkan semua itu dan mengubahnya menjadi glyph yang bisa Anda edit.

Bab ini membahas empat jalan masuk ke font Anda. Anda bisa **membuka file font** yang sudah ada.
Anda bisa **mengimpor file SVG**, satu per huruf, langsung dari aplikasi gambar, bahkan
**menyinkronkan** satu folder SVG sehingga menyimpan di Illustrator langsung memperbarui glyph di
FontEasy. Anda bisa **menyalin dan menempel** bentuk antar-aplikasi. Dan Anda bisa **men-trace
gambar**: hasil scan, foto, atau goresan kuas menjadi outline yang rapi. *Trace* (menjiplak)
artinya mengubah gambar piksel menjadi garis tepi vektor.

Jalan mana pun yang Anda ambil, hasilnya sama:
*[outline](/reference/glossary/#outline)* (garis tepi huruf) biasa yang terdiri atas
*[node](/reference/glossary/#node)* (titik) dan kurva, yang lalu bisa Anda perhalus dengan alat-alat
di [Alat gambar](/drawing/drawing-tools/).

Dalam bab ini Anda akan mempelajari:

- file font apa saja yang bisa dibuka FontEasy, dan apa yang ikut masuk;
- cara menyiapkan artboard di aplikasi gambar supaya huruf jatuh di tempat yang benar;
- bagaimana nama file menentukan glyph tujuan setiap SVG;
- cara menyinkronkan satu folder file SVG dengan font Anda;
- cara menempel bentuk dari aplikasi lain;
- cara menempatkan gambar di glyph dan men-trace-nya dengan **Jiplak Gambar Otomatis**;
- cara merapikan outline hasil trace.

## Membuka font yang sudah ada

Awal yang paling cepat sering kali adalah font yang sudah Anda punya: karya Anda sebelumnya, font
*open source* yang boleh diubah, atau file dari rekan kerja.

1. Pilih **Berkas › Buka…** (<kbd>Ctrl</kbd>+<kbd>O</kbd>), atau klik **Buka…** di layar Home.
2. Pilih file-nya lalu klik **Open**.

Anda juga bisa menyeret file font dari Windows Explorer ke jendela FontEasy.

FontEasy membuka format berikut:

| File | Isinya | Cara dibuka |
|---|---|---|
| `.ufo` | Sumber font [UFO](/reference/glossary/#ufo) (berupa folder) | Langsung dibuka; menyimpan menulis kembali ke situ |
| `.designspace` | [Designspace](/reference/glossary/#designspace) dengan beberapa master UFO | Langsung dibuka, dengan semua master |
| `.glyphs`, `.glyphspackage` | File aplikasi Glyphs (Glyphs 2 atau 3) | Diimpor sebagai designspace baru yang belum disimpan |
| `.ttf`, `.otf` | Font jadi [TTF](/reference/glossary/#ttf) atau [OTF](/reference/glossary/#otf) | Diimpor sebagai font baru yang belum disimpan |

UFO sebenarnya adalah folder berisi banyak file kecil. Untuk membukanya, pilih
**Berkas › Buka Folder UFO…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>O</kbd>) lalu pilih foldernya,
atau pilih file apa saja di dalamnya (misalnya `fontinfo.plist`) lewat **Berkas › Buka…**. File
Glyphs juga bisa dibuka lewat **Berkas › Impor › Berkas Glyphs App (.glyphs)…** di Mode Pro.

![Designspace Mutator Sans terbuka di Ikhtisar: 49 glyph, menu master di kanan atas, dan panel Validasi yang mendaftar masalah di beberapa glyph.](screen:open)

:::caution[Font web]
FontEasy tidak bisa membuka font web WOFF atau WOFF2. Kalau Anda hanya punya font web, mintalah file
TTF atau OTF aslinya, atau file sumbernya. FontEasy bisa *mengekspor* WOFF dan WOFF2 (lihat
[Mengekspor font](/production/export/)).
:::

### Apa yang ikut masuk dari TTF atau OTF

File TTF atau OTF adalah font jadi yang sudah dikompilasi, ibarat buku cetak dibandingkan naskahnya.
FontEasy membaca kembali sebanyak mungkin:

- outline glyph (kurva TrueType dibalik ke arah yang benar, dan titik tambahan yang disisipkan
  TrueType di antara kurva dibuang lagi, sehingga outline-nya bersih dan mudah diedit);
- peta karakter (glyph mana untuk nilai [Unicode](/reference/glossary/#unicode) mana), advance
  width, nama font, dan metrics vertikal;
- *[kerning](/reference/glossary/#kerning)* (pengaturan jarak antar pasangan huruf) dari tabel
  penempatan font;
- substitusi glyph ([GSUB](/reference/glossary/#gsub)) sebagai
  *[feature code](/reference/glossary/#feature-code)* (kode fitur) yang bisa diedit: small caps,
  ligature, alternatif, dan gaya angka kembali sebagai lookup single, multiple, alternate, dan
  ligature. Lookup kontekstual tidak bisa otomatis diubah kembali menjadi kode; lookup itu didaftar
  dalam komentar di bagian atas kode fitur, supaya bisa Anda tulis ulang di editor Fitur;
- glyph berwarna (lihat [Font berwarna](/advanced/color/)).

Variable font diimpor pada gaya bawaannya.

![Source Code Pro dibuka dari file OTF: 1568 glyph di Ikhtisar dengan Adieresis terpilih, sementara panel Validasi masih memeriksa.](screen:import)

Ada dua hal yang perlu diketahui:

- **Komposit menjadi outline.** Huruf beraksen masuk sebagai kontur biasa, bukan komponen yang
  tertaut. Lihat [Komponen dan komposit](/drawing/components/) untuk cara menyusunnya ulang.
- **Yang dibuka adalah salinan.** File TTF, OTF, atau Glyphs yang diimpor tidak pernah diubah.
  Pertama kali Anda menekan <kbd>Ctrl</kbd>+<kbd>S</kbd>, FontEasy menanyakan tempat menyimpan; ia
  menyimpan UFO (atau designspace dengan satu UFO per master). Sejak itu, file kerja Anda adalah
  file-file tersebut.

:::danger[Hormati lisensi font]
Bisa membuka sebuah font tidak berarti Anda boleh mengubah atau menerbitkannya. Banyak font
komersial melarang modifikasi. Font open source berlisensi SIL Open Font License boleh diubah,
tetapi versi yang diubah tidak boleh memakai nama yang dicadangkan oleh font aslinya. Baca lebih
lanjut di [Menguji dan menerbitkan](/production/testing-publishing/) dan entri glosarium
[Font license](/reference/glossary/#font-license).
:::

## Mengimpor file SVG dari aplikasi gambar

Banyak orang lebih suka menggambar huruf di Illustrator, Inkscape, atau Figma, karena sudah hafal
alat-alatnya. FontEasy memahami SVG, format vektor yang bisa disimpan semua aplikasi tersebut.

Prinsipnya sederhana: **satu file SVG untuk satu glyph**. Di Illustrator, artinya satu artboard per
karakter, disimpan lewat **Export As… › SVG** dengan "Use Artboards" sehingga setiap artboard
menjadi file tersendiri.

### Menyiapkan artboard

Saat mengimpor SVG, FontEasy memperlakukan seluruh artboard sebagai kotak
*[em](/reference/glossary/#em)* glyph:

- tepi **atas** artboard adalah *[ascender](/reference/glossary/#ascender)* font (batas atas huruf
  seperti b, d, h);
- tepi **bawah** adalah *[descender](/reference/glossary/#descender)* (batas bawah huruf seperti g,
  p, y);
- [baseline](/reference/glossary/#baseline) (garis dasar) terletak sejauh nilai *ascender* di bawah
  tepi atas;
- **lebar** artboard menjadi *[advance width](/reference/glossary/#advance-width)* (lebar langkah)
  glyph (bisa dimatikan).

Untuk font FontEasy baru dengan 1000 unit per em, ascender 750, dan descender −250, artinya artboard
setinggi 1000 unit dengan baseline 750 unit di bawah tepi atasnya. Dialog impor menampilkan angka
tepat untuk font Anda. Ukuran artboard bebas: FontEasy menskalakannya menurut tinggi, jadi artboard
500 × 1000 px maupun 50 × 100 mm sama-sama bisa.

![Artboard selebar 500 membentang dari ascender sampai descender dengan baseline 750 di bawah tepi atas; huruf g jatuh di tempat yang sama di FontEasy, dan lebar artboard menjadi advance width 500.](diagram:import-trace-artboard)

:::tip[Biarkan FontEasy membuat artboard-nya]
Pilih **Berkas › Ekspor › Glyph sebagai SVG…** lalu pilih folder. FontEasy menulis satu SVG untuk
setiap glyph yang dipilih (atau glyph yang sedang diedit) dengan artboard yang tepat dan garis-garis
metrics di layer tersendiri. Glyph kosong menghasilkan template siap gambar. Buka file-file itu di
aplikasi gambar, gambar di atasnya, simpan, lalu impor kembali. Garis metrics dilewati saat impor.
:::

### Cara bentuk dibaca

- **Bentuk dan stroke hitam mengisi.** *Stroke* (garis yang punya tebal) diubah menjadi outline,
  lengkap dengan ujung, sambungan, dan putus-putusnya.
- **Bentuk putih melubangi.** Begitulah kebanyakan orang menggambar *counter* (ruang dalam huruf) di
  aplikasi gambar: oval putih di atas oval hitam. FontEasy mengubahnya menjadi satu outline
  berlubang.
- **Compound path** dan aturan isi even-odd dari Illustrator dipahami.
- Grup, transformasi, dan style CSS ditangani; teks dan gambar tertanam dilewati dan dilaporkan
  dalam pemberitahuan ("Sebagian file SVG tidak terimpor sepenuhnya").
- Gambar dengan **dua warna atau lebih** (selain putih) juga masuk sebagai layer warna, siap untuk
  [font berwarna](/advanced/color/). Glyph-nya sendiri tetap punya outline satu warna.

Setelah itu, bentuk yang bertumpuk digabung,
*[arah kontur](/reference/glossary/#contour-direction)* dirapikan, titik dibulatkan ke unit utuh,
dan titik ekstrem ditambahkan, sehingga glyph langsung bersih.

![Di kiri, lingkaran hitam dengan lingkaran putih di atasnya dan kurva stroke tebal di aplikasi gambar; di kanan, hasilnya di FontEasy: satu outline berlubang dan outline yang bisa diedit.](diagram:import-trace-holes)

### Nama file menentukan glyph

FontEasy menebak glyph tujuan setiap file dari namanya. Semua ini bisa:

| Nama file | Menjadi glyph | Alasannya |
|---|---|---|
| `A.svg` atau `A_.svg` | **A** | garis bawah setelah huruf kapital adalah cara UFO menulis kapital |
| `a.svg` | **a** | nama glyph |
| `eacute.svg` | **é** | nama glyph |
| `é.svg` | **é** | karakternya sendiri |
| `U+00E9.svg` | **é** | nilai Unicode |
| `a.sc.svg` | **a.sc** (baru) | nama glyph yang dikenal dengan akhiran |
| `MyFont_A.svg` | **A** | awalan sebelum `_`, `-`, atau spasi diabaikan |
| `Artboard 1.svg` | tidak ada | angka saja setelah awalan tidak dianggap sebagai angka 1 |

Mengapa `A_.svg`? Windows tidak membedakan `A.svg` dan `a.svg`: keduanya dianggap file yang sama.
Dengan menamai kapital `A_.svg`, `B_.svg`, huruf kecil dan kapital bisa tinggal di satu folder.
Saat ekspor, Illustrator menaruh nama dokumen di depan nama artboard (`MyFont_A.svg`); awalan itu
tidak masalah.

![Nama file dan glyph hasilnya: A_.svg menjadi A, a.svg menjadi a, eacute.svg menjadi eacute, MyFont_g.svg menjadi g, dan Artboard 1.svg dilewati sampai Anda mengisi nama glyph-nya.](diagram:import-trace-filenames)

:::tip
Namai artboard Anda sesuai nama glyph (`a`, `A_`, `eacute`, `zero`, `period`) sebelum mengekspor.
Nama glyph setiap karakter ada di [glosarium](/reference/glossary/#glyph-name) dan di panel
**Info Glyph** masing-masing glyph.
:::

### Mengimpor file

1. Pilih **Berkas › Impor › Glyph dari SVG…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>I</kbd>).
   Dialog **Impor Glyph dari SVG** terbuka.
2. Klik **Pilih Folder…** untuk mengambil semua SVG dalam satu folder, atau **Pilih File…** untuk
   memilih beberapa file.
3. Periksa daftarnya. Setiap file menampilkan glyph tebakan FontEasy dan apa yang akan terjadi:
   **mengganti outline** (glyph sudah ada), **glyph baru** (akan dibuat), atau
   **dilewati: isi nama glyph** (FontEasy tidak bisa menebak). Ketik nama glyph untuk membetulkan
   tebakan atau memberi nama file yang dilewati.
4. Pilih cara meletakkan gambar:
   - **Letakkan sesuai artboard (disarankan)**: memakai artboard seperti dijelaskan di atas.
     Biarkan **Lebar artboard menjadi advance width** tercentang bila lebar artboard Anda sudah
     benar.
   - **Skalakan tiap gambar ke cap height (artboard belum diatur)**: untuk SVG yang digambar tanpa
     artboard yang disiapkan. Setiap gambar diskalakan setinggi cap height dan berdiri di baseline
     dengan ruang yang sama di kiri dan kanan.
5. Biarkan **Gabungkan bentuk yang bertumpuk** dan **Tambah titik ekstrem** tercentang, kecuali ada
   alasan khusus.
6. Klik **Impor**.

![Dialog Impor Glyph dari SVG dengan folder terpilih: A_.svg, MyFont_g.svg, a.svg, dan eacute.svg mengganti outline, a.sc.svg menjadi glyph baru, Artboard 1.svg dilewati, dan Tetap sinkron tercentang.](screen:svgimport)

Status bar mengatakan, misalnya, "6 glyph diimpor dari SVG". Seluruh impor adalah satu langkah di
riwayat undo, jadi <kbd>Ctrl</kbd>+<kbd>Z</kbd> membatalkan semuanya.

:::caution[Impor mengganti outline]
Bila glyph sudah ada, outline-nya diganti dengan gambar dari SVG. Editan yang Anda buat di FontEasy
untuk glyph itu hilang (bisa di-undo). Kalau Anda ingin melanjutkan penyempurnaan di FontEasy,
berhentilah mengimpor glyph itu, atau selalu perbarui SVG-nya.
:::

## Menyinkronkan satu folder

Kalau Anda terus menggambar di Illustrator, mengimpor ulang secara manual setiap kali ada perubahan
lama-lama melelahkan. **Sinkron SVG** melakukannya untuk Anda: FontEasy mengawasi folder, dan setiap
kali Anda menyimpan SVG di sana, glyph yang cocok ikut diperbarui.

1. Di **Impor Glyph dari SVG**, pilih file lewat **Pilih Folder…** (sinkron butuh folder).
2. Centang **Tetap sinkron: perbarui glyph setiap kali file SVG ini disimpan**.
3. Klik **Impor**.

Pemberitahuan "Sinkron SVG aktif" muncul, dan status bar menampilkan folder yang disinkronkan.
Sekarang:

- Simpan sebuah artboard di aplikasi gambar. Dalam satu-dua detik glyph-nya berubah di FontEasy, dan
  status bar mengatakan "Disinkronkan dari SVG: …" dengan nama glyph-nya.
- File baru dibaca setelah berhenti berubah, jadi file yang setengah tertulis tidak pernah diimpor.
- Setiap sinkron adalah satu langkah undo.
- File SVG baru yang disimpan ke folder itu juga ikut diimpor.
- Pengaturan sinkron disimpan bersama font. Saat font dibuka lagi, sinkron aktif kembali, dan SVG
  yang berubah selama font tertutup langsung dimasukkan.

Untuk berhenti, pilih **Berkas › Impor › Hentikan Sinkron SVG**.

:::caution[Sinkron berjalan satu arah]
Sinkron berjalan dari file SVG ke font, tidak pernah sebaliknya. Bila Anda mengedit glyph yang
disinkronkan di FontEasy, lalu menyimpan SVG-nya lagi di Illustrator, SVG yang menang dan editan di
FontEasy tergantikan. Tentukan di mana setiap glyph "tinggal": di aplikasi gambar (dan disinkronkan),
atau di FontEasy (dan sinkronnya dihentikan). Sinkron selalu bisa di-undo.
:::

### Alur kerja lengkap dengan Illustrator

1. Di FontEasy, buat font Anda, pilih glyph yang diinginkan, lalu pilih
   **Berkas › Ekspor › Glyph sebagai SVG…**. Pilih folder baru yang kosong.
2. Di Illustrator, buka file hasil ekspor (atau buat satu dokumen dengan satu artboard per glyph,
   dengan tinggi artboard dan baseline yang sama).
3. Namai setiap artboard sesuai glyph-nya: `A_`, `B_`, `a`, `b`, `eacute`, …
4. Gambar setiap huruf dengan warna hitam. Gambar counter sebagai bentuk putih di atasnya, atau
   sebagai compound path.
5. Pilih **File › Export › Export As…**, format **SVG**, centang **Use Artboards**, lalu ekspor ke
   folder tadi.
6. Di FontEasy, pilih **Berkas › Impor › Glyph dari SVG…**, **Pilih Folder…**, centang
   **Tetap sinkron…**, lalu klik **Impor**.
7. Lanjutkan bekerja di Illustrator. Setiap kali Anda mengekspor lagi, FontEasy memperbarui glyph-nya.
8. Periksa hasilnya di panel **Pratinjau**, lalu lanjutkan ke [spasi](/spacing/metrics/).

## Menyalin dan menempel bentuk

Untuk satu bentuk saja, clipboard lebih cepat daripada file.

**Dari aplikasi gambar ke FontEasy:**

1. Di Illustrator, Inkscape, atau Figma, pilih bentuknya lalu salin (di Figma, pakai
   **Copy as SVG**).
2. Buka glyph di editor glyph FontEasy.
3. Pilih **Edit › Tempel** (<kbd>Ctrl</kbd>+<kbd>V</kbd>).

Bentuknya masuk dengan ukuran seperti di aplikasi gambar, sudut kiri bawahnya di titik asal, dan
dalam keadaan terpilih, jadi bisa langsung Anda geser dan skalakan (lihat
[Alat gambar](/drawing/drawing-tools/)). Bila clipboard tidak berisi bentuk vektor, FontEasy
mengatakan "Clipboard tidak berisi outline (salin bentuk sebagai SVG)."

**Dari FontEasy ke aplikasi gambar:** pilih kontur di editor glyph lalu tekan
<kbd>Ctrl</kbd>+<kbd>C</kbd>. FontEasy menaruhnya di clipboard sebagai SVG, yang bisa Anda tempel di
Illustrator atau Inkscape.

:::note
Di **Ikhtisar**, <kbd>Ctrl</kbd>+<kbd>C</kbd> menyalin *nama* glyph yang dipilih (sebagai
`/A/B/C`), bukan outline-nya.
:::

## Men-trace gambar: Jiplak Gambar Otomatis

Kadang huruf Anda hanya ada sebagai gambar: gambar tinta, *lettering* kuas, foto papan nama buatan
Anda, atau scan dari buku sketsa. **Jiplak Gambar Otomatis** mengubah gambar seperti itu menjadi
outline.

### Cara kerja trace

Gambar tersusun dari kotak-kotak kecil yang disebut piksel, masing-masing dengan tingkat abu-abu
tertentu. Untuk men-trace-nya, FontEasy:

1. memutuskan untuk setiap piksel apakah ia **tinta** atau **kertas**, memakai *threshold*
   (ambang batas): piksel yang lebih gelap dari threshold dianggap tinta. Secara bawaan threshold
   dipilih otomatis, di tengah-tengah antara rata-rata tinta dan rata-rata kertas;
2. menelusuri tepi tinta dengan sangat teliti, di antara piksel;
3. mencari sudut-sudutnya, lalu memasang garis lurus dan kurva halus pada bagian lainnya;
4. membuang bintik debu, lalu merapikan hasilnya seperti glyph yang digambar: arah kontur, titik
   ekstrem, tanpa titik berlebih, koordinat bulat.

![Huruf a sebagai piksel abu-abu hasil scan, sebagai piksel hitam-putih setelah threshold, dan sebagai outline dari kurva dan titik.](diagram:import-trace-pipeline)

Tracer FontEasy dibuat khusus untuk huruf: ia memperhitungkan tepi lembut hasil scan, sehingga
goresan keluar dengan ketebalan yang tepat dan titik yang sedikit.

### Men-trace file gambar

1. Pilih glyph di **Ikhtisar**, atau buka di editor.
2. Pilih **Alat › Jiplak Gambar Otomatis…**. Dialog **Jiplak Gambar Otomatis** terbuka.
3. Klik **Pilih Gambar…** lalu pilih file PNG atau JPG.
4. Di **Ukuran**, pilih seberapa besar hurufnya:
   - **Tinggi huruf kapital**: tinta diskalakan setinggi cap height (untuk kapital dan angka);
   - **Tinggi huruf kecil**: tinta diskalakan setinggi x-height (untuk **a c e m n o** dan
     sejenisnya);
   - **Gambar adalah em (descender sampai ascender)**: tinggi gambar adalah seluruh em, seperti
     artboard yang disiapkan; tinta tetap di tempatnya dalam gambar.
5. Lihat pratinjaunya: outline hasil trace digambar berwarna di atas gambar. Sesuaikan bila perlu:
   - **Threshold otomatis**: hapus centangnya untuk mengatur **Threshold** sendiri. Nilai lebih
     rendah membuat lebih sedikit bagian gambar dianggap tinta (goresan lebih tipis); nilai lebih
     tinggi membuat lebih banyak bagian dianggap tinta (goresan lebih tebal, bintik bisa muncul).
   - **Kehalusan**: nilai tinggi memberi kurva lebih halus dengan titik lebih sedikit; nilai rendah
     mengikuti gambar lebih dekat.
6. Klik **Trace**.

![Dialog Jiplak Gambar Otomatis untuk glyph O: gambar O yang digores kuas, Ukuran diatur ke Tinggi huruf kapital, Threshold otomatis di 131, Kehalusan 0,500, dan outline hasil trace berwarna di atas gambar.](screen:autotrace)

Outline glyph diganti dengan hasil trace (satu langkah undo), dan status bar mengatakan, misalnya,
"Hasil trace: 2 kontur". Dengan **Tinggi huruf kapital** atau **Tinggi huruf kecil**, huruf
diletakkan dengan *[sidebearing](/reference/glossary/#sidebearing)* (ruang kosong di sisi huruf)
kecil sebesar 5% em di kiri dan kanan.

### Menempatkan gambar di glyph lebih dulu

Anda juga bisa memasukkan gambar ke dalam glyph, sehingga gambar itu tampak di belakang pekerjaan
Anda saat menggambar, lalu men-trace-nya di sana.

1. Buka glyph di editor.
2. Pilih **Glyph › Tempatkan Gambar…** lalu pilih file PNG atau JPG.

Gambar diskalakan sehingga tingginya membentang dari descender sampai ascender, dan berada di
belakang outline. Anda bisa menggambar di atasnya dengan Pena, seperti kertas kalkir. Untuk
men-trace-nya otomatis:

1. Pilih **Alat › Jiplak Gambar Otomatis…**.
2. Pilih **Gambar yang ditempatkan** (sudah terpilih bila glyph punya gambar).
3. Atur **Threshold** dan **Kehalusan**, lalu klik **Trace**.

Outline hasil trace jatuh tepat di tempat gambarnya. Setelah selesai dengan gambar itu, pilih
**Glyph › Hapus Gambar**.

![Mode Sederhana dengan glyph R yang kosong: petunjuk di kanvas menyarankan menggambar dengan Pena atau Pensil, menempel bentuk dari Illustrator atau Inkscape, atau memakai Alat › Jiplak Gambar Otomatis.](screen:emptyglyph)

:::tip[Gambar yang bagus untuk di-trace]
- Tinta gelap di kertas terang dan polos. Hindari kertas bergaris atau berkotak.
- Biarkan huruf memenuhi sebagian besar gambar; potong sisanya.
- Scan dengan 300 dpi atau lebih, atau foto di siang hari tegak lurus dari atas, tanpa bayangan.
- Satu huruf per gambar. Untuk satu abjad lengkap, pakai
  [wizard Tulisan Tangan](/drawing/handwriting/): wizard itu membaca satu halaman penuh sekaligus.
:::

## Merapikan outline hasil trace

Tracer menyalin semuanya, termasuk goyangan tangan yang gemetar atau tonjolan di kertas. Beberapa
menit merapikan membuat huruf hasil trace tampak profesional.

1. **Perhatikan titik-titiknya.** Pilih tool **Node**. Outline yang baik punya titik terutama di
   sudut dan di *[titik ekstrem](/reference/glossary/#extreme-point)* kurva (bagian paling atas,
   bawah, kiri, dan kanan setiap lengkung).
2. **Buang titik berlebih.** Pilih satu titik pada kontur yang terlalu banyak titiknya (atau jangan
   pilih apa pun untuk seluruh glyph) lalu pilih **Glyph › Kontur › Sederhanakan**: titik dikurangi
   tanpa menghilangkan sudut dan ekstrem. Di Mode Pro, **Glyph › Kontur › Bersihkan Titik** membuang
   titik ganda dan titik yang berada di tengah garis lurus.
3. **Perbaiki masalahnya.** Buka panel **Validasi** dan pakai **Perbaiki** atau **Perbaiki Semua**,
   atau tekan <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>X</kbd> (**Glyph › Perbaiki Masalah**). Lihat
   [Memperbaiki masalah outline](/drawing/problems/).
4. **Luruskan yang seharusnya lurus.** Tiang huruf **l**, **i**, dan **H** sering sedikit miring
   setelah di-trace. Pilih dua titik tiang itu dan sejajarkan, atau gambar ulang tiangnya dengan tool
   **Persegi Panjang**.
5. **Samakan huruf yang bersaudara.** Bandingkan **n**, **h**, **m**, dan **u**: tiangnya semestinya
   sama tebal dan sama tinggi. Salin tiang yang bagus dari satu huruf ke huruf lainnya.
6. **Trace ulang bila perlu.** Bila huruf terlalu tebal atau terputus, batalkan
   (<kbd>Ctrl</kbd>+<kbd>Z</kbd>) dan trace lagi dengan **Threshold** yang lain.

:::caution[Trace adalah awal, bukan akhir]
Trace yang sempurna pun hanya menyalin gambar, bukan maksud Anda. Bila beberapa huruf seharusnya
punya tebal tiang atau kurva yang sama, sering kali lebih cepat merapikan satu huruf dengan teliti
lalu membuat huruf lain darinya, daripada membetulkan setiap hasil trace satu per satu.
:::

## Bila ada yang tidak beres

- **"bukan font UFO, designspace, TTF, atau OTF."** Jenis file-nya tidak bisa dibuka FontEasy. Untuk
  font web, pakai TTF atau OTF aslinya.
- **Sebuah SVG dilewati.** Namanya tidak cocok dengan glyph mana pun. Ketik nama glyph di daftar
  impor, atau ganti nama file-nya.
- **Huruf terlalu besar, terlalu kecil, atau terlalu tinggi.** Artboard belum diatur sebagai em.
  Pakai **Berkas › Ekspor › Glyph sebagai SVG…** untuk mendapatkan artboard yang benar, atau impor
  dengan **Skalakan tiap gambar ke cap height (artboard belum diatur)**.
- **Counter ikut terisi.** Di aplikasi gambar, bentuk dalamnya tidak putih, atau tidak berada di
  atas. Jadikan putih, atau buat compound path.
- **"Sebagian file SVG tidak terimpor sepenuhnya".** File berisi teks atau gambar tertanam. Ubah teks
  menjadi outline (Illustrator: **Type › Create Outlines**) sebelum mengekspor.
- **Jiplak Gambar Otomatis tidak menemukan tinta.** Gambarnya terlalu terang. Hapus centang
  **Threshold otomatis** lalu naikkan **Threshold**, atau scan dengan kontras lebih tinggi.
- **"Pilih atau buka dulu glyph tujuan trace."** Jiplak Gambar Otomatis butuh glyph tujuan: pilih
  satu di Ikhtisar atau buka di editor.

## Ringkasan

- **Berkas › Buka…** membuka UFO, designspace, .glyphs, TTF, dan OTF; file TTF, OTF, dan Glyphs
  diimpor sebagai salinan baru yang belum disimpan. WOFF tidak bisa dibuka.
- TTF dan OTF membawa outline, peta karakter, lebar, nama, metrics, kerning, substitusi GSUB sebagai
  kode fitur, dan glyph berwarna; komposit masuk sebagai outline biasa.
- **Berkas › Impor › Glyph dari SVG…** mengimpor satu SVG per glyph. Artboard membentang dari
  descender sampai ascender; hitam mengisi, putih melubangi; nama file seperti `A_.svg`,
  `eacute.svg`, atau `MyFont_g.svg` menentukan glyph-nya.
- **Tetap sinkron** mengawasi satu folder dan memperbarui glyph saat Anda menyimpan;
  **Berkas › Impor › Hentikan Sinkron SVG** mematikannya. Sinkron berjalan satu arah, dari SVG ke
  font.
- **Edit › Tempel** memasukkan bentuk SVG yang disalin dari aplikasi gambar.
- **Alat › Jiplak Gambar Otomatis…** men-trace gambar atau gambar yang ditempatkan
  (**Glyph › Tempatkan Gambar…**) menjadi outline; atur **Threshold** dan **Kehalusan**.
- Rapikan hasil trace dengan **Sederhanakan**, panel Validasi, dan mata yang teliti.

## Coba sendiri

1. Pilih **a** dan **b** di Ikhtisar lalu pilih **Berkas › Ekspor › Glyph sebagai SVG…**. Buka
   file-nya di Inkscape atau Illustrator, gambar hurufnya, simpan, lalu impor kembali dengan
   **Tetap sinkron** tercentang. Ubah satu gambar, simpan, dan lihat FontEasy memperbaruinya.
2. Tulis huruf **O** besar dengan spidol di kertas putih lalu foto dari atas. Pilih **O**, pilih
   **Alat › Jiplak Gambar Otomatis…**, pilih fotonya, pilih **Tinggi huruf kapital**, lalu coba tiga
   nilai **Kehalusan** yang berbeda sebelum mengklik **Trace**.
