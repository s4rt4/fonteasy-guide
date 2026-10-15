---
title: Glosarium
description: Penjelasan sederhana untuk istilah-istilah font yang dipakai di FontEasy dan di panduan ini, dari advance width sampai x-height.
---

Desain huruf punya kosakatanya sendiri, dan di awal semua istilah itu bisa terasa seperti tembok kata-kata asing. Glosarium ini menjelaskan setiap istilah yang dipakai di panduan dengan bahasa sederhana, untuk Anda yang belum pernah membuat font. Setiap entri menjelaskan arti istilahnya, memberi perbandingan sehari-hari, menyebutkan mengapa hal itu penting, dan menunjukkan di mana Anda menjumpainya di FontEasy.

Judul setiap istilah sengaja tetap dalam bahasa Inggris, karena begitulah istilah itu muncul di dunia desain huruf dan di banyak aplikasi. Padanan atau penjelasan bahasa Indonesianya ada di kalimat pertama. Istilah disusun menurut abjad dan dikelompokkan per huruf awal. Tautan di setiap bab langsung membawa Anda ke entri yang tepat, dan tautan di dalam entri membawa Anda ke istilah terkait atau ke bab yang membahasnya lengkap. Nama menu ditulis persis seperti yang tampil di FontEasy berbahasa Indonesia, misalnya **Font › Info Font…**.

:::tip[Mencari istilah dengan cepat]
Di situs web, tekan <kbd>Ctrl</kbd>+<kbd>F</kbd> di browser lalu ketik istilahnya. Di PDF, pakai fitur pencarian pembaca PDF Anda. Kalau ada istilah lain yang belum Anda kenal di dalam sebuah entri, ikuti tautannya: sebagian besar entri bisa dibaca dalam waktu kurang dari satu menit.
:::

## A

### Advance width

**Advance width** adalah lebar langkah sebuah glyph, yaitu seberapa jauh kursor teks bergeser ke kanan setelah glyph itu diketik. Bayangkan setiap huruf sebagai stempel karet di atas balok kayu: *advance width* adalah lebar seluruh baloknya, bukan hanya lebar tintanya. Lebar ini mencakup bentuk huruf ditambah ruang kosong di kedua sisinya, yang disebut [sidebearing](/reference/glossary/#sidebearing). Kalau terlalu kecil, huruf saling bertabrakan; kalau terlalu besar, kata-kata tampak tercerai-berai. Di FontEasy, lebar ini tampil sebagai garis metrics kanan di editor glyph, dan bisa Anda ketik di kolom **Lebar** pada bilah opsi saat tidak ada yang dipilih. Bab [Metrics](/spacing/metrics/) membahasnya lebih dalam.

Lihat juga: [Spacing](/reference/glossary/#spacing), [Metrics key](/reference/glossary/#metrics-key).

### Alternate

**Alternate** (bentuk alternatif) adalah desain kedua atau ketiga untuk karakter yang sama, yang bisa dipilih pengguna, misalnya `g` bertingkat satu di samping `g` bertingkat dua yang biasa, atau huruf kapital berhias. Ibaratnya Anda menyimpan dua versi stempel untuk huruf yang sama. Versi normal yang terketik secara bawaan; versi alternatif menunggu sampai pengguna memintanya di aplikasi yang mendukung [fitur OpenType](/reference/glossary/#opentype-feature). Di FontEasy, buat alternatif dengan menambahkan glyph bersuffix, misalnya `g.alt`: FontEasy lalu membuat fitur **Alternatif gaya** untuk Anda. Glyph bernama `a.ss01` masuk ke [stylistic set](/reference/glossary/#stylistic-set). Lihat [Fitur](/opentype/features/).

Jangan tertukar dengan **Layer Alternatif** di panel **Layer**, yang merupakan [bracket layer](/reference/glossary/#bracket-layer).

### Anchor

**Anchor** (titik kait) adalah penanda kecil bernama di dalam glyph yang berarti "tempelkan sesuatu di sini". Huruf `a` biasanya punya anchor bernama `top`, dan aksen seperti `acutecomb` punya pasangannya, `_top`. Saat keduanya digabung, kedua anchor bertemu seperti kancing jepret yang menutup. Berkat anchor, FontEasy bisa menempatkan aksen tepat di atas setiap huruf tanpa Anda ukur satu per satu. Anchor juga dipakai untuk penempatan [mark](/reference/glossary/#mark) otomatis di font jadi. Tambahkan anchor dengan alat **Anchor** (<kbd>Shift</kbd>+<kbd>A</kbd>), dengan **Glyph › Tambah Anchor**, atau dengan **Tambah Anchor Umum** di panel **Info Glyph**. Bab [Komponen](/drawing/components/) menunjukkan prosesnya.

Lihat juga: [Composite glyph](/reference/glossary/#composite-glyph), [Diacritic](/reference/glossary/#diacritic).

### Aperture

**Aperture** (bukaan) adalah celah pada huruf yang setengah tertutup, seperti celah pada `c`, `e`, `a`, atau `s`, tempat ruang di dalam huruf bertemu dengan ruang di luarnya. Bayangkan pintu yang bisa terbuka lebar atau hanya sedikit. *Aperture* yang lebar membuat huruf tetap jelas di ukuran kecil dan di layar yang kurang bagus, karena ruang dalamnya tetap tersambung dengan ruang putih di sekitarnya. *Aperture* yang sempit terlihat lebih rapat dan formal, tetapi `e` dan `c` bisa mirip `o` saat teksnya sangat kecil. Ini pilihan desain, bukan pengaturan: Anda mengaturnya lewat seberapa jauh goresan melingkar digambar. Gambar di bawah [Bowl](/reference/glossary/#bowl) menunjukkan *aperture* huruf `e`. Lihat [Dasar-dasar huruf](/start/type-basics/).

Lihat juga: [Counter](/reference/glossary/#counter), [Terminal](/reference/glossary/#terminal).

### Ascender

**Ascender** (bagian naik) adalah bagian huruf kecil yang menjulang di atas [x-height](/reference/glossary/#x-height), seperti batang tinggi pada `b`, `d`, `h`, `k`, dan `l`. Bayangkan x-height sebagai langit-langit rendah: *ascender* menembus ke atasnya. Kata ini juga menamai ukuran untuk seluruh font, yaitu garis ascender, yang memberi tahu aplikasi seberapa tinggi huruf tertinggi biasanya. Nilai ini ikut menentukan [jarak baris](/reference/glossary/#vertical-metrics), supaya huruf di satu baris tidak menyentuh baris di atasnya. Di FontEasy, atur nilainya di **Font › Info Font…** bagian **Dimensi** (**Ascender**), dan editor menggambarnya sebagai garis metrics mendatar. Pelajari lebih lanjut di [Dasar-dasar huruf](/start/type-basics/) dan [Info font](/production/font-info/).

Lihat juga: [Descender](/reference/glossary/#descender), [Cap height](/reference/glossary/#cap-height).

### Autosave

**Autosave** (simpan otomatis) berarti FontEasy diam-diam menyimpan salinan pemulihan dari font yang sedang terbuka setiap beberapa menit, tanpa Anda menekan apa pun. Ibarat kunci cadangan yang Anda sembunyikan untuk keadaan darurat: semoga tidak pernah dipakai, tetapi lega rasanya karena ada. *Autosave* tidak menimpa file asli Anda; ia menulis salinan terpisah. Kalau FontEasy atau komputer Anda berhenti tiba-tiba, saat dibuka lagi muncul **Pulihkan Font yang Belum Disimpan** sehingga pekerjaan Anda bisa diselamatkan. Atur seberapa sering di **Edit › Preferensi…** (<kbd>Ctrl</kbd>+<kbd>K</kbd>) lewat **Simpan otomatis tiap** … menit; nilai 0 mematikannya. Tetaplah menyimpan seperti biasa dengan **Berkas › Simpan** (<kbd>Ctrl</kbd>+<kbd>S</kbd>). Lihat [Preferensi](/power/preferences/) dan [FAQ](/reference/faq/).

### Auto-kerning

**Auto-kerning** (kerning otomatis) membuat FontEasy memeriksa outline huruf Anda dan mengusulkan [kerning](/reference/glossary/#kerning) untuk pasangan yang menyisakan ruang putih terlalu banyak atau terlalu sedikit, seperti `AV`, `To`, atau `LT`. Ibaratnya Anda meminta asisten melakukan putaran kasar pertama atas setumpuk pasangan huruf, sehingga Anda tinggal menyempurnakannya. Pilih **Kerning › Kerning Otomatis…**, atur **Kekuatan**, tambahkan angka dan tanda baca bila perlu, lalu tekan **Kerning Pasangan Ini**. Seluruh hasilnya menjadi satu langkah undo. Atur spasi font lebih dulu: kerning memperbaiki pasangan, sedangkan [spacing](/reference/glossary/#spacing) menentukan ritme setiap huruf. Baca [Kerning](/spacing/kerning/) untuk tahu kapan hasilnya bisa dipercaya.

Lihat juga: [Kerning pair](/reference/glossary/#kerning-pair), [Kerning group](/reference/glossary/#kerning-group).

### Axis

**Axis** (sumbu) adalah satu arah perubahan dalam [variable font](/reference/glossary/#variable-font), misalnya ketebalan (tipis sampai sangat tebal) atau lebar (sempit sampai lebar). Bayangkan tombol geser peredup lampu: satu tombol geser, satu sumbu. Setiap sumbu punya tag empat huruf, nilai minimum, nilai bawaan, dan nilai maksimum, misalnya `wght` dari 100 sampai 900. Satu font bisa punya beberapa sumbu sekaligus, masing-masing dengan slider sendiri. Di FontEasy, tambahkan sumbu di **Font › Master & Sumbu…** pada tab **Sumbu**, atau biarkan **Font › Jadikan Variabel…** menyiapkannya untuk Anda. Panel **Variasi** menampilkan slider untuk setiap sumbu. Lihat [Font variabel](/advanced/variable/).

Lihat juga: [Master](/reference/glossary/#master), [Designspace](/reference/glossary/#designspace), [Weight](/reference/glossary/#weight).

## B

### Baseline

**Baseline** (garis dasar) adalah garis tak terlihat tempat huruf-huruf berdiri, seperti garis pada buku tulis sekolah. Sebagian besar huruf duduk di atasnya, sedangkan [descender](/reference/glossary/#descender) seperti ekor `g`, `p`, dan `y` menggantung di bawahnya. Dalam satuan font, *baseline* berada di ketinggian 0: semua yang di atasnya bernilai positif dan yang di bawahnya negatif. Kalau sebuah huruf tidak duduk di *baseline*, huruf itu tampak melompat atau tenggelam dalam baris teks. Huruf bulat sengaja turun sedikit di bawahnya; itulah [overshoot](/reference/glossary/#overshoot). Di editor glyph FontEasy, *baseline* adalah salah satu garis metrics mendatar. Lihat [Dasar-dasar huruf](/start/type-basics/).

Lihat juga: [x-height](/reference/glossary/#x-height), [Vertical metrics](/reference/glossary/#vertical-metrics).

### Bezier curve

**Kurva Bézier** adalah jenis kurva halus yang dipakai untuk menggambar huruf di komputer. Kurva ini ditentukan oleh beberapa [titik](/reference/glossary/#point): dua ujung yang dilalui kurva, dan [handle](/reference/glossary/#handle) yang menarik kurva ke arahnya tanpa menyentuhnya, seperti magnet yang membengkokkan seutas kawat. Menggeser handle mengubah lengkungan kurva; menggeser titik ujung memindahkan kurvanya. Hampir semua font outline di dunia tersusun dari kurva Bézier dan garis lurus. Alat **Pena** (<kbd>P</kbd>) di FontEasy menggambar kontur Bézier titik demi titik, dan alat **Node** (<kbd>A</kbd>) menyuntingnya. Bab [Outline](/drawing/outlines/) mengajarkannya langkah demi langkah.

Lihat juga: [Cubic curve](/reference/glossary/#cubic-curve), [Quadratic curve](/reference/glossary/#quadratic-curve), [Hobby curve](/reference/glossary/#hobby-curve).

### Bitmap font

**Bitmap font** (font bitmap) menyimpan setiap huruf sebagai kisi kotak-kotak kecil (piksel), seperti pola kristik, bukan sebagai [outline](/reference/glossary/#outline). Font bitmap tampak tajam tepat di ukuran tempat ia dibuat, tetapi menjadi kotak-kotak saat diperbesar, karena kotaknya ikut membesar. Komputer lama dan sebagian gim *pixel art* memakainya. FontEasy membuat font outline, yang tetap halus di ukuran berapa pun. Anda tetap bisa mulai dari gambar: **Glyph › Tempatkan Gambar…** meletakkan hasil scan atau gambar di belakang glyph untuk dijiplak manual, dan **Alat › Jiplak Gambar Otomatis…** mengubah gambar huruf menjadi outline secara otomatis. Lihat [Impor dan jiplak](/drawing/import-trace/).

Lihat juga: [Outline](/reference/glossary/#outline), [Font format](/reference/glossary/#font-format).

### Bold

**Bold** (tebal) adalah gaya yang lebih berat dari sebuah *typeface*, dengan goresan lebih tebal, dipakai untuk menonjolkan kata. Bayangkan menulis kata yang sama dengan spidol besar alih-alih pena halus. Dalam keluarga font yang baik, bold bukan sekadar "huruf Regular dengan garis tepi lebih tebal": bentuknya digambar ulang supaya ruang dalamnya tetap terbuka dan proporsinya terjaga. Aplikasi menautkan gaya Bold dengan Regular-nya lewat nama gaya dan *weight class* (700 untuk Bold). Di FontEasy, **Alat › Ubah Glyph…** dengan **Tebal / Tipis** memberi titik awal, dan font variabel bisa mencakup bold lewat [master](/reference/glossary/#master) kedua. Lihat [Font variabel](/advanced/variable/) dan [Otomasi](/advanced/automation/).

Lihat juga: [Weight](/reference/glossary/#weight), [Style](/reference/glossary/#style), [Family](/reference/glossary/#family).

### Bowl

**Bowl** (lengkung) adalah bagian huruf yang membulat dan melingkupi (atau hampir melingkupi) sebuah ruang, seperti badan bulat `b`, `d`, `p`, `q`, atau `o`. Bayangkan cekungan sendok yang menempel pada gagangnya: pada `b`, [stem](/reference/glossary/#stem) adalah gagangnya. Bentuk *bowl* sangat menentukan karakter sebuah *typeface*, dari yang bulat sempurna dan geometris sampai yang sempit, miring, atau agak kotak. *Bowl* yang konsisten antarhuruf membuat font terlihat sebagai satu keluarga. Anda menggambar *bowl* dengan kurva di editor glyph, biasanya dengan alat **Pena** atau **Elips**. Ruang di dalam *bowl* disebut [counter](/reference/glossary/#counter). Lihat [Dasar-dasar huruf](/start/type-basics/).

![Huruf b, e, dan c: stem dan bowl pada b, counter pada b dan e, aperture pada e, serta terminal pada c.](diagram:glossary-anatomy)

Lihat juga: [Aperture](/reference/glossary/#aperture), [Terminal](/reference/glossary/#terminal).

### Brace layer

**Brace layer** (di FontEasy disebut **layer antara**) adalah gambar tambahan untuk satu glyph di sebuah titik di antara [master-master](/reference/glossary/#master) Anda dalam [variable font](/reference/glossary/#variable-font). Biasanya gaya-gaya di antaranya dihitung otomatis lewat [interpolasi](/reference/glossary/#interpolation). Kadang satu glyph tampak janggal di tengah jalan, misalnya sambungan yang terlalu gelap di ketebalan semibold. *Brace layer* ibarat penjahit yang melakukan fitting di tengah proses: Anda membetulkan satu titik itu dan sisanya mengikuti. Di FontEasy, geser slider di panel **Variasi** ke titik tersebut, lalu pakai **Tambah Layer di …** di bagian **Layer Antara** pada panel **Layer**. Lihat [Font variabel](/advanced/variable/).

Lihat juga: [Bracket layer](/reference/glossary/#bracket-layer), [Layer](/reference/glossary/#layer).

### Bracket layer

**Bracket layer** (di FontEasy disebut **layer alternatif**) menukar sebuah glyph dengan desain lain mulai dari nilai tertentu pada sebuah [sumbu](/reference/glossary/#axis). Contoh klasiknya tanda dolar: di ketebalan tipis ada garis yang menembus huruf S, tetapi di ketebalan sangat tebal tidak ada ruang untuknya, sehingga mulai ketebalan tertentu versi tanpa garis mengambil alih. Ibaratnya mengganti ban mobil ke ban musim dingin saat suhu turun di bawah angka tertentu. Di FontEasy, buka glyph-nya, geser slider **Variasi**, lalu pakai **Tambah Alternatif** di bagian **Layer Alternatif** pada panel **Layer**, dan gambar alternatifnya di setiap master. Lihat [Font variabel](/advanced/variable/).

Lihat juga: [Brace layer](/reference/glossary/#brace-layer), [Alternate](/reference/glossary/#alternate).

## C

### Cap height

**Cap height** (tinggi huruf kapital) adalah tinggi huruf kapital yang datar seperti `H`, `E`, atau `T`, diukur dari [baseline](/reference/glossary/#baseline). Anggap saja sebagai langit-langit untuk huruf kapital. Huruf kapital yang bulat dan runcing seperti `O` dan `A` sedikit lebih tinggi supaya tampak sama besar; itulah [overshoot](/reference/glossary/#overshoot). *Cap height* membantu aplikasi meratakan teks, membantu [hinting](/reference/glossary/#hinting), dan dipakai FontEasy saat menskalakan gambar yang diimpor. Atur di **Font › Info Font…** bagian **Dimensi** (**Tinggi huruf kapital**); editor glyph menampilkannya sebagai garis metrics. **Font › Periksa Font…** memberi peringatan bila nilainya tidak cocok dengan ujung atas `H` yang sebenarnya. Lihat [Dasar-dasar huruf](/start/type-basics/).

Lihat juga: [x-height](/reference/glossary/#x-height), [Vertical metrics](/reference/glossary/#vertical-metrics).

### CFF

**CFF** (*Compact Font Format*) adalah salah satu dari dua cara menyimpan outline di dalam font [OpenType](/reference/glossary/#opentype). Font CFF memakai [kurva kubik](/reference/glossary/#cubic-curve), jenis kurva yang juga dipakai sebagian besar aplikasi gambar, dan biasanya berekstensi `.otf`. Cara lainnya adalah [TrueType](/reference/glossary/#truetype) dengan kurva kuadratik dan ekstensi `.ttf`. Bagi orang yang mengetik, keduanya tampak dan bekerja hampir sama; bedanya terutama teknis, mirip dua jenis file zip yang berisi foto yang sama. Di FontEasy, centang **OpenType CFF (.otf) — desktop, cetak** di **Berkas › Ekspor › Ekspor Font…**. Font variabel diekspor sebagai TrueType. Lihat [Ekspor](/production/export/).

Lihat juga: [OTF](/reference/glossary/#otf), [Font format](/reference/glossary/#font-format).

### Character

**Character** (karakter) adalah satu satuan teks tertulis sebagaimana dipahami komputer: huruf "A", angka "7", koma, spasi. Karakter adalah gagasan sebuah huruf, bukan rupanya. Huruf "a" tetap karakter yang sama, entah dicetak dengan font poster yang tebal maupun font tulisan tangan yang halus. Setiap karakter punya nomor di [Unicode](/reference/glossary/#unicode), yaitu [code point](/reference/glossary/#code-point)-nya. [Glyph](/reference/glossary/#glyph) adalah gambar yang menampilkan karakter itu. Biasanya satu karakter punya satu glyph, tetapi satu karakter bisa punya beberapa glyph (`a`, `a.sc`, `a.ss01`), dan satu glyph bisa mewakili beberapa karakter, seperti [ligatur](/reference/glossary/#ligature) `fi`. Lihat [Dasar-dasar huruf](/start/type-basics/).

Lihat juga: [Character set](/reference/glossary/#character-set).

### Character set

**Character set** (himpunan karakter) adalah daftar [karakter](/reference/glossary/#character) yang didukung sebuah font, misalnya "A–Z, a–z, angka, dan tanda baca" atau "semua yang dibutuhkan sebagian besar bahasa Eropa". Ibarat daftar menu di restoran: kalau hidangan tidak tercantum, dapur tidak bisa menyajikannya, dan kalau karakter tidak ada, aplikasi menampilkan kotak kosong atau meminjamnya dari font lain. Menentukan himpunan karakter sejak awal memberi gambaran seberapa banyak pekerjaan yang menanti. Di FontEasy, dialog **Font Baru** menawarkan pilihan awal di bagian **Mulai dengan**, dan **Font › Tambah Glyph…** menambahkan seluruh [set glyph](/reference/glossary/#glyph-set) sekaligus. Lihat [Set glyph](/drawing/glyph-set/).

Lihat juga: [Unicode](/reference/glossary/#unicode), [Subsetting](/reference/glossary/#subsetting).

### Code point

**Code point** (titik kode) adalah nomor yang diberikan [Unicode](/reference/glossary/#unicode) kepada setiap [karakter](/reference/glossary/#character), ditulis seperti `U+0041` untuk huruf kapital A atau `U+20AC` untuk tanda euro. Cara kerjanya seperti kode pos: semua orang di dunia sepakat karakter mana yang tinggal di nomor mana, sehingga teks yang diketik di satu komputer menampilkan huruf yang sama di komputer lain. Glyph membutuhkan *code point* agar bisa diketik langsung dari keyboard; glyph tanpa *code point* (seperti `a.sc`) dijangkau lewat [fitur OpenType](/reference/glossary/#opentype-feature). Di FontEasy, panel **Info Glyph** menampilkan **Unicode** sebuah glyph, dan kotak pencarian di Ikhtisar menerima kode U+. Panel **Validasi** memperingatkan bila ada **Code point dipakai dua kali**. Lihat [Set glyph](/drawing/glyph-set/).

### Color font

**Color font** (font warna) berisi glyph dengan lebih dari satu warna, seperti emoji, huruf warna-warni, atau huruf bergradasi. Font biasa tidak punya warna sendiri: aplikasi mewarnai setiap huruf dengan warna teks. Font warna ibarat satu set stiker cetak, bukan stempel karet. FontEasy membuat font warna dari layer-layer yang ditumpuk, masing-masing diisi warna dari sebuah [palet](/reference/glossary/#palette), lalu disimpan di tabel [COLR dan CPAL](/reference/glossary/#colr-and-cpal), dengan salinan [OpenType-SVG](/reference/glossary/#opentype-svg) bila Anda mau. Mulailah dengan **Jadikan Glyph Warna** di panel **Warna** (**Jendela › Panel › Warna**) dan atur warnanya di **Font › Palet Warna…**. Baca [Font warna](/advanced/color/).

Lihat juga: [Layer](/reference/glossary/#layer).

### COLR and CPAL

**COLR** dan **CPAL** adalah dua tabel di dalam file font yang membuat [font warna](/reference/glossary/#color-font) bekerja. COLR (*color*) menentukan bentuk mana yang ditumpuk untuk setiap glyph berwarna, dan apakah bentuk itu memakai warna rata atau gradasi. CPAL (*color palette*) menyimpan daftar warnanya. Bayangkan gambar mewarnai bernomor: COLR adalah gambarnya, lengkap dengan nomor di setiap bidang, dan CPAL adalah kotak catnya. Karena warnanya bernomor, palet kedua bisa mewarnai ulang seluruh font, misalnya untuk mode gelap. FontEasy menulis tabel-tabel ini saat ekspor; Anda cukup bekerja di panel **Warna** dan **Font › Palet Warna…**. Lihat [Font warna](/advanced/color/).

Lihat juga: [Palette](/reference/glossary/#palette), [OpenType-SVG](/reference/glossary/#opentype-svg).

### Component

**Component** (komponen) adalah rujukan ke glyph lain yang ditempatkan di dalam sebuah glyph, sebagai pengganti salinan outline-nya. Ibarat *shortcut* di desktop yang menunjuk ke file aslinya: kalau aslinya diubah, semua tempat yang memakainya ikut berubah. Misalnya, `é` bisa disusun dari `e` dan aksen akut sebagai dua komponen. Kalau kemudian Anda memperbaiki `e`, huruf `é` ikut berubah tanpa kerja tambahan. Di FontEasy, tambahkan komponen dengan **Glyph › Tambah Komponen…**, geser dengan alat **Pilih**, dan ubah menjadi outline biasa dengan **Glyph › Urai**. Panel **Info Glyph** mencantumkan komponen sebuah glyph. Lihat [Komponen](/drawing/components/).

Lihat juga: [Composite glyph](/reference/glossary/#composite-glyph), [Smart component](/reference/glossary/#smart-component).

### Composite glyph

**Composite glyph** (glyph komposit) adalah glyph yang seluruhnya atau sebagian disusun dari [komponen](/reference/glossary/#component), seperti `aacute` (á) yang terdiri dari `a` ditambah aksen akut gabung. Menyusun huruf beraksen dengan cara ini menghemat banyak sekali pekerjaan menggambar: satu aksen bisa melayani puluhan huruf, ditempatkan lewat [anchor](/reference/glossary/#anchor)-nya. Ibarat merakit mebel dari suku cadang standar, bukan memahat setiap kursi dari satu balok kayu. Di FontEasy, **Glyph › Buat Komposit…** atau **Alat › Wizard › Wizard Komposit Otomatis…** membuat semua huruf beraksen yang dibutuhkan sebuah set glyph, dan **Glyph › Perbarui Komposit** menyegarkannya setelah anchor dipindah. Lihat [Komponen](/drawing/components/).

![Huruf a ditambah aksen akut menghasilkan glyph komposit aacute, yang tersusun dari dua komponen.](diagram:glossary-composite)

Lihat juga: [Diacritic](/reference/glossary/#diacritic).

### Contour

**Contour** (kontur) adalah satu bentuk tertutup di dalam glyph: rangkaian kurva dan garis lurus yang berakhir di titik awalnya. Huruf `o` punya dua kontur, tepi luar dan lubang di dalamnya; `i` punya dua kontur terpisah, batang dan titiknya; `B` punya tiga. Bayangkan Anda menelusuri tepi cetakan kue: setiap lingkaran tertutup yang Anda telusuri adalah satu kontur. Bersama-sama, kontur membentuk [outline](/reference/glossary/#outline) glyph, dan apakah sebuah bidang terisi atau kosong bergantung pada [arahnya](/reference/glossary/#contour-direction). Di FontEasy, alat **Pilih** (<kbd>V</kbd>) memindahkan kontur utuh, dan menu **Glyph › Kontur** berisi perintah untuk menggabung, memotong, dan merapikannya. Lihat [Outline](/drawing/outlines/).

Lihat juga: [Open contour](/reference/glossary/#open-contour), [Path](/reference/glossary/#path).

### Contour direction

**Contour direction** (arah kontur) adalah arah jalannya sebuah [kontur](/reference/glossary/#contour) bila titik-titiknya diikuti berurutan: searah atau berlawanan arah jarum jam. Kedengarannya sepele, tetapi arah inilah yang memberi tahu komputer bagian mana yang diisi: menurut kesepakatan, bentuk luar berjalan berlawanan arah jarum jam dan lubang searah jarum jam (untuk outline kubik yang dipakai FontEasy). Mirip aturan lajur kiri di jalan raya: baru berfungsi kalau semua orang mengikuti kesepakatan yang sama. Dengan arah yang salah, sebagian aplikasi mengisi lubang atau mengosongkan bentuk. Di FontEasy, **Glyph › Kontur › Perbaiki Arah** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd>) membetulkannya, dan panel **Validasi** melaporkan **Arah kontur salah**. Lihat [Masalah](/drawing/problems/).

### Contrast

**Contrast** (kontras) adalah perbedaan antara bagian tertebal dan tertipis pada goresan huruf. Pada *typeface* berkontras tinggi, seperti font judul majalah mode, goresan tegak tebal sekali dan goresan mendatar setipis rambut. Pada *typeface* berkontras rendah, setiap goresan kira-kira sama tebal, seperti huruf yang ditulis dengan spidol. Kontras berasal dari sejarah menulis dengan pena bermata lebar yang dipegang miring, dan sangat memengaruhi suasana huruf serta keterbacaannya di ukuran kecil. Anda mengaturnya saat menggambar. Di FontEasy, **Stroke** di panel **Gambar** dengan **Mata pena datar** menghasilkan kontras otomatis dari pengaturan **Sudut mata pena** dan **Goresan tipis**. Lihat [Efek gambar](/advanced/drawing-effects/).

Lihat juga: [Nib](/reference/glossary/#nib), [Monoline](/reference/glossary/#monoline).

### Corner point

**Corner point** (titik sudut) adalah [titik](/reference/glossary/#point) pada outline tempat arah garis berubah tajam sehingga membentuk sudut yang terlihat, seperti ujung `V` atau sudut-sudut `E`. Garis atau kurva di kedua sisinya boleh mengarah ke mana saja, seperti engsel pada penggaris lipat. Lawannya adalah [smooth point](/reference/glossary/#smooth-point), tempat kurva mengalir tanpa tekukan. Di editor FontEasy, titik sudut digambar sebagai kotak kecil. Pilih titiknya dengan alat **Node** (<kbd>A</kbd>) lalu pakai **Glyph › Ubah Smooth** (<kbd>Alt</kbd>+<kbd>S</kbd>) untuk mengubahnya antara sudut dan halus. **Glyph › Kontur › Bulatkan Sudut…** membulatkan sudut yang dipilih. Lihat [Outline](/drawing/outlines/).

### Counter

**Counter** (ruang dalam) adalah ruang putih yang tertutup atau setengah tertutup di dalam huruf: lubang pada `o`, bagian dalam [bowl](/reference/glossary/#bowl) huruf `b`, "mata" kecil di bagian atas `e`, ruang di dalam `n`. *Counter* sama pentingnya dengan goresan hitam: pembaca mengenali huruf sebagian dari bentuk ruang putihnya, seperti mengenali donat dari lubangnya. *Counter* yang terlalu kecil akan tertutup di ukuran kecil atau cetakan yang buruk; *counter* yang terlalu berbeda antarhuruf membuat teks tampak tidak rata. Anda membentuk *counter* dengan menggambar [kontur](/reference/glossary/#contour) bagian dalam. [Spacing](/reference/glossary/#spacing) juga berusaha menyeimbangkan ruang putih antarhuruf dengan ruang putih di dalamnya. Lihat [Dasar-dasar huruf](/start/type-basics/).

Lihat juga: [Aperture](/reference/glossary/#aperture).

### Cubic curve

**Cubic curve** (kurva kubik) adalah [kurva Bézier](/reference/glossary/#bezier-curve) dengan dua [handle](/reference/glossary/#handle) di antara kedua titik ujungnya, satu handle untuk setiap ujung. Dua handle membuat kurva kubik luwes: satu ruas kurva bisa melengkung seperti huruf S dan meniru banyak bentuk dengan sedikit titik. Inilah kurva yang Anda kenal dari Illustrator, Inkscape, dan Figma, dan yang dipakai di font [CFF](/reference/glossary/#cff) (`.otf`). FontEasy menggambar dengan kurva kubik; saat Anda mengekspor font [TrueType](/reference/glossary/#truetype), kurvanya otomatis diubah menjadi [kurva kuadratik](/reference/glossary/#quadratic-curve). Mode Pro punya **Glyph › Kontur › Ubah ke Kubik** dan **Ubah ke Kuadratik**. Lihat [Outline](/drawing/outlines/).

## D

### Descender

**Descender** (bagian turun) adalah bagian huruf yang menggantung di bawah [baseline](/reference/glossary/#baseline), seperti ekor `g`, `j`, `p`, `q`, dan `y`. Kalau *baseline* adalah lantai, *descender* adalah kaki yang menjulur ke ruang bawah tanah. Kata ini juga menamai ukuran untuk seluruh font, yaitu garis descender, yang menyatakan seberapa dalam bagian-bagian itu biasanya turun. Nilainya ditulis negatif, karena letaknya di bawah *baseline* yang bernilai 0. Bersama [ascender](/reference/glossary/#ascender), nilai ini membantu aplikasi menghitung jarak baris. Di FontEasy, atur di **Font › Info Font…** bagian **Dimensi** (**Descender**); editor menampilkannya sebagai garis metrics. Lihat [Dasar-dasar huruf](/start/type-basics/).

Lihat juga: [Vertical metrics](/reference/glossary/#vertical-metrics).

### Designspace

**Designspace** (ruang desain) adalah file (`.designspace`) yang mengikat beberapa [master](/reference/glossary/#master) sebuah keluarga font dan menyatakan letak masing-masing pada [sumbu](/reference/glossary/#axis). Bayangkan peta dengan paku penanda: setiap paku adalah satu master, misalnya Light di ketebalan 300 dan Bold di ketebalan 700, dan peta itu juga menamai [instance](/reference/glossary/#instance) di antaranya. Master-masternya sendiri berupa folder [UFO](/reference/glossary/#ufo) terpisah di sebelah file *designspace*. Di FontEasy, buka dengan **Berkas › Buka…**. Menambah sumbu pertama di **Font › Master & Sumbu…** menjadikan font tunggal sebuah *designspace*, lalu **Simpan** menulis file `.designspace` di sebelah UFO. Lihat [Font variabel](/advanced/variable/).

Lihat juga: [Variable font](/reference/glossary/#variable-font), [Interpolation](/reference/glossary/#interpolation).

### Diacritic

**Diacritic** (diakritik, tanda baca tambahan pada huruf) adalah tanda kecil yang ditambahkan pada huruf untuk mengubah bunyi atau maknanya, seperti aksen pada `é`, tilde pada `ñ`, dua titik pada `ü`, atau sedila pada `ç`. Ibarat label kecil "awas pecah" yang ditempel di kardus: kardusnya sama, labelnya mengubah cara Anda memperlakukannya. Banyak bahasa, termasuk Vietnam, Prancis, Turki, dan Polandia, tidak bisa ditulis tanpanya. Di font, diakritik biasanya digambar sekali sebagai glyph [mark](/reference/glossary/#mark) (misalnya `acutecomb`) lalu digabung dengan huruf sebagai [komponen](/reference/glossary/#component). Di FontEasy, pakai **Glyph › Buat Komposit…**. Lihat [Komponen](/drawing/components/).

Lihat juga: [Anchor](/reference/glossary/#anchor), [Composite glyph](/reference/glossary/#composite-glyph).

### Display font

**Display font** (font judul) adalah *typeface* yang dibuat untuk ukuran besar: judul, poster, logo, sampul buku, dan papan nama. Karena dibaca sekilas dan dalam ukuran besar, font ini boleh berkarakter kuat, dengan [kontras](/reference/glossary/#contrast) dramatis, [spasi](/reference/glossary/#spacing) rapat, bentuk tak lazim, atau hiasan. Sebaliknya, font teks dibuat untuk bacaan panjang di ukuran kecil dan tetap tenang. Bandingkan papan nama toko dengan tulisan kecil di struk belanja. Mengetahui jenis font yang Anda buat membantu banyak keputusan, seperti [x-height](/reference/glossary/#x-height) dan seberapa terbuka hurufnya. Di **Wizard Font Baru…** (**Alat › Wizard**), pertanyaan **Untuk apa font ini?** menawarkan **Judul dan logo**. Lihat [Font pertama Anda](/start/first-font/).

### Em

**Em** adalah kotak persegi khayalan tempat setiap glyph sebuah font dirancang. Tingginya sama dengan ukuran font: pada teks 12 poin, *em* setinggi 12 poin. Dulu *em* adalah ukuran balok logam tempat huruf dicetak, kira-kira selebar huruf kapital M, dari situlah namanya. Di dalam font, *em* dibagi menjadi kisi langkah-langkah kecil yang disebut [units per em](/reference/glossary/#units-per-em), sering kali 1000. Semua ukuran, seperti [advance width](/reference/glossary/#advance-width), [cap height](/reference/glossary/#cap-height), dan [kerning](/reference/glossary/#kerning), dihitung dalam satuan itu. Huruf boleh menjulur ke luar *em*; *em* adalah acuan, bukan kurungan. Lihat [Dasar-dasar huruf](/start/type-basics/).

### Export

**Export** (ekspor) berarti mengubah file kerja yang masih bisa disunting menjadi file font jadi yang bisa dipakai aplikasi lain, seperti `.ttf`, `.otf`, `.woff`, atau `.woff2`. Ibarat membuat roti: source [UFO](/reference/glossary/#ufo) Anda adalah adonan yang masih bisa dibentuk, dan font hasil ekspor adalah roti yang bisa dibagikan tetapi tidak bisa diuleni lagi. Simpan selalu source-nya, karena di sanalah Anda menyunting lalu mengekspor ulang. Di FontEasy, pakai **Berkas › Ekspor › Ekspor Font…** (<kbd>Ctrl</kbd>+<kbd>E</kbd>), **Ekspor Font Web…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>E</kbd>), atau di mode Pro **Profil Ekspor…** untuk mengekspor beberapa set format sekaligus. Baca [Ekspor](/production/export/).

Lihat juga: [Font format](/reference/glossary/#font-format), [Font file](/reference/glossary/#font-file).

### Extreme point

**Extreme point** (titik ekstrem) adalah [titik](/reference/glossary/#point) yang diletakkan di tempat kurva mencapai posisi tertinggi, terendah, paling kiri, atau paling kanan, yaitu tempat kurva berjalan tepat mendatar atau tegak. Bayangkan puncak bukit: titik ekstrem duduk tepat di puncaknya, bukan di tengah lereng. Meletakkan titik di sana adalah aturan lama menggambar yang baik: outline jadi lebih mudah disunting, [hinting](/reference/glossary/#hinting) dan rendering terbantu, dan ukuran font yang terukur tetap tepat. Di FontEasy, panel **Validasi** melaporkan **Titik ekstrem hilang**, dan mode Pro punya **Glyph › Kontur › Tambah Titik Ekstrem**. Impor SVG juga bisa menambahkannya. Lihat [Outline](/drawing/outlines/) dan [Masalah](/drawing/problems/).

## F

### Family

**Family** (keluarga font) adalah sekelompok font yang saling berkaitan, berbagi nama dan desain, seperti Regular, Italic, Bold, dan Bold Italic dari *typeface* yang sama. Bayangkan kakak-beradik: kepribadiannya berbeda, nama keluarganya sama. Aplikasi mengelompokkan anggotanya di bawah satu nama di menu font, dan tombol **B** dan **I** di pengolah kata berpindah di antara mereka bila gaya-gayanya ditautkan dengan benar. Di FontEasy, nama keluarga dan nama [gaya](/reference/glossary/#style) diatur di **Font › Info Font…** bagian **Nama**. Buat nama keluarga kurang dari 31 karakter, karena Windows memotong nama yang lebih panjang di beberapa menu. **Font › Periksa Font…** memeriksa nama-nama ini. Lihat [Info font](/production/font-info/).

Lihat juga: [Typeface](/reference/glossary/#typeface), [Font](/reference/glossary/#font).

### Feature code

**Feature code** (kode fitur) adalah teks pendek mirip bahasa pemrograman yang menjelaskan [fitur OpenType](/reference/glossary/#opentype-feature) sebuah font: glyph mana menggantikan glyph mana, dan pasangan mana yang digeser. Kode ini ditulis dalam bahasa yang disebut sintaks fitur AFDKO dan disimpan di file `features.fea` di dalam [UFO](/reference/glossary/#ufo). Bentuknya seperti ini: `sub f i by f_i;`. Anda jarang perlu menulisnya sendiri, karena FontEasy menulis sebagian besar kode secara otomatis dari nama glyph Anda. Di FontEasy, buka **Fitur › Fitur** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>F</kbd>) dan pilih tampilan **Kode** untuk membaca atau menyuntingnya. Error ditampilkan lengkap dengan nomor barisnya. Lihat [Fitur](/opentype/features/).

Lihat juga: [Lookup](/reference/glossary/#lookup), [GSUB](/reference/glossary/#gsub).

### Font

**Font** adalah satu gaya tertentu dari sebuah [typeface](/reference/glossary/#typeface), dalam bentuk file yang bisa dipakai komputer untuk menampilkan teks: misalnya "Nusantara Sans Bold". Dalam percakapan sehari-hari, "font" dan "typeface" dipakai untuk hal yang sama, dan itu tidak masalah. Secara tepat, *typeface* adalah desainnya, sedangkan font adalah satu anggota konkretnya, seperti beda antara sebuah lagu dan satu rekaman tertentu dari lagu itu. Font berisi [glyph](/reference/glossary/#glyph), [metrics](/reference/glossary/#metrics), [kerning](/reference/glossary/#kerning), [fitur](/reference/glossary/#opentype-feature), dan nama-namanya. Di FontEasy, **Berkas › Font Baru…** (<kbd>Ctrl</kbd>+<kbd>N</kbd>) memulai sebuah font. Lihat [Selamat datang](/start/welcome/) dan [Dasar-dasar huruf](/start/type-basics/).

Lihat juga: [Font file](/reference/glossary/#font-file), [Family](/reference/glossary/#family).

### Font file

**Font file** (file font) adalah file jadi yang Anda pasang di komputer atau taruh di situs web supaya aplikasi bisa memakai [font](/reference/glossary/#font) Anda: biasanya `.ttf`, `.otf`, `.woff`, atau `.woff2`. File ini adalah hasil akhir yang padat dan hanya untuk dibaca, seperti buku cetak dibandingkan naskahnya. Pekerjaan Anda yang masih bisa disunting tersimpan di jenis file lain, yaitu source [UFO](/reference/glossary/#ufo), yang Anda buka dan simpan di FontEasy. File font dibuat dengan **Berkas › Ekspor › Ekspor Font…**. Untuk mencoba font tanpa mengekspor manual, pakai **Berkas › Uji Font di Browser** (<kbd>F5</kbd>) atau **Berkas › Pasang Font untuk Uji** (<kbd>Ctrl</kbd>+<kbd>F5</kbd>). Lihat [Ekspor](/production/export/) dan [Uji dan terbitkan](/production/testing-publishing/).

Lihat juga: [Font format](/reference/glossary/#font-format).

### Font format

**Font format** (format font) adalah jenis [file font](/reference/glossary/#font-file), yang menentukan di mana file itu bisa dipakai. [TTF](/reference/glossary/#ttf) dan [OTF](/reference/glossary/#otf) untuk dipasang di komputer; [WOFF](/reference/glossary/#woff) dan WOFF2 adalah versi terkompresi untuk situs web. Semuanya berisi font [OpenType](/reference/glossary/#opentype) di dalamnya, mirip foto yang sama disimpan sebagai JPEG atau PNG. Format source, seperti [UFO](/reference/glossary/#ufo), designspace, dan file Glyphs, untuk disunting, bukan untuk dipakai di aplikasi. Di FontEasy, centang format yang Anda butuhkan di bagian **Format** pada **Berkas › Ekspor › Ekspor Font…**, yang juga menjelaskan kegunaan masing-masing (desktop, cetak, web). Kalau ragu, TrueType bisa dipakai di semua aplikasi. Lihat [Ekspor](/production/export/).

Lihat juga: [CFF](/reference/glossary/#cff), [TrueType](/reference/glossary/#truetype).

### Font license

**Font license** (lisensi font) adalah teks hukum yang menyatakan apa yang boleh dilakukan orang lain dengan font Anda: memasangnya, memakainya di logo, menyematkannya di aplikasi, mengubahnya, menjualnya. Font adalah perangkat lunak, jadi font dilisensikan, bukan sekadar dijual, seperti lagu yang boleh Anda dengarkan tetapi tidak boleh dijual lagi. Banyak font gratis memakai SIL Open Font License (OFL); font komersial punya ketentuannya sendiri. Di FontEasy, tulis lisensi dan alamat webnya di **Font › Info Font…** bagian **Legal dan kredit** (**Lisensi**, **URL lisensi**). **Font › Periksa Font…** memberi peringatan bila belum ada teks atau URL lisensi. Lisensi FontEasy sendiri berlaku untuk aplikasinya, bukan untuk font Anda. Lihat [Info font](/production/font-info/).

## G

### Glyph

**Glyph** adalah satu bentuk yang digambar di dalam font: gambar nyata yang tampil untuk sebuah huruf, angka, simbol, atau spasi. Kalau [karakter](/reference/glossary/#character) adalah gagasan "a", glyph adalah satu gambar tertentu dari huruf itu. Sebuah font bisa menyimpan beberapa glyph untuk satu karakter, seperti `a` biasa, small caps `a.sc`, dan [alternatif](/reference/glossary/#alternate) `a.ss01`, dan satu glyph bisa mewakili beberapa karakter, seperti pada [ligatur](/reference/glossary/#ligature). Setiap glyph punya [nama glyph](/reference/glossary/#glyph-name), outline, dan [advance width](/reference/glossary/#advance-width). Di FontEasy, setiap kotak di Ikhtisar adalah glyph: klik dua kali untuk menggambarnya. Lihat [Dasar-dasar huruf](/start/type-basics/).

Lihat juga: [Glyph set](/reference/glossary/#glyph-set).

### Glyph name

**Glyph name** (nama glyph) adalah nama internal yang pendek untuk sebuah [glyph](/reference/glossary/#glyph), seperti `a`, `A`, `eacute`, `one`, atau `f_i`. Pengguna tidak pernah melihatnya, tetapi font dan FontEasy memakainya untuk menemukan glyph, seperti label pada laci di bengkel. Aturannya sederhana: hanya `A–Z`, `a–z`, `0–9`, `_`, dan `.`, tidak diawali angka atau titik, dan kurang dari 64 karakter. Suffix punya arti: `a.sc` adalah small caps, `f_i` ligatur, `a.ss01` anggota stylistic set, dan FontEasy membuat [fitur](/reference/glossary/#opentype-feature) dari nama-nama itu. Ganti nama glyph dengan **Glyph › Ganti Nama Glyph…** (<kbd>F2</kbd>); mode Pro menambahkan **Font › Perbarui Nama Glyph**. Lihat [Set glyph](/drawing/glyph-set/) dan [Fitur](/opentype/features/).

### Glyph set

**Glyph set** (set glyph) adalah daftar glyph siap pakai untuk suatu keperluan, seperti **Latin Dasar (ASCII)**, **Latin-1 Suplemen**, atau **Latin Lanjutan-A**. Alih-alih menambah huruf satu per satu, Anda menambah seluruh set sekaligus, seperti membeli paket pemula alih-alih membeli suku cadang satu-satu. Set glyph adalah sisi praktis dari [himpunan karakter](/reference/glossary/#character-set) Anda. Di FontEasy, **Font › Tambah Glyph…** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>G</kbd>) berisi daftar set di bawah **Atau tambahkan satu set glyph sekaligus:**. Bilah samping Ikhtisar punya bagian **SET GLYPH** yang menyaring kisi ke satu set dan menawarkan **Tambah {n} yang belum ada**. Lihat [Set glyph](/drawing/glyph-set/).

Lihat juga: [Unicode](/reference/glossary/#unicode).

### GPOS

**GPOS** (*glyph positioning*, penempatan glyph) adalah tabel di dalam font [OpenType](/reference/glossary/#opentype) yang menggeser glyph dari posisi normalnya. Tabel ini menyimpan [kerning](/reference/glossary/#kerning), meletakkan aksen di atas huruf lewat penempatan [mark](/reference/glossary/#mark), dan menyambung huruf bersambung. Anggap saja sutradara panggung yang menyuruh setiap aktor bergeser sedikit ke kiri atau kanan; ia tidak pernah mengganti siapa yang tampil, hanya posisi berdirinya (mengganti adalah tugas [GSUB](/reference/glossary/#gsub)). Anda jarang menyentuh GPOS langsung: FontEasy membuatnya saat font dikompilasi, dari kerning dan anchor Anda. Di **Fitur › Fitur**, tampilan **Lookup** dan **Inspektor** memperlihatkan [lookup](/reference/glossary/#lookup) penempatan. Lihat [Lookup](/opentype/lookups/).

### GSUB

**GSUB** (*glyph substitution*, penggantian glyph) adalah tabel di dalam font [OpenType](/reference/glossary/#opentype) yang menukar glyph dengan glyph lain. Lewat tabel inilah `f` + `i` menjadi [ligatur](/reference/glossary/#ligature) `fi`, `a` menjadi small caps, dan sebuah stylistic set mengubah bentuk huruf. Bayangkan manajer panggung yang mengganti seorang aktor dengan pemeran pengganti; sebaliknya, tabel [GPOS](/reference/glossary/#gpos) hanya memindahkan posisi aktor. GSUB dibuat dari [kode fitur](/reference/glossary/#feature-code) Anda, yang sebagian besar ditulis FontEasy secara otomatis dari [nama glyph](/reference/glossary/#glyph-name). Di **Fitur › Fitur**, tampilan **Lookup** menampilkan [lookup](/reference/glossary/#lookup) substitusi seperti **Substitusi Tunggal** dan **Substitusi Ligatur**. Lihat [Lookup](/opentype/lookups/).

### Guide

**Guide** (garis bantu) adalah garis pembantu di editor glyph yang Anda pasang sendiri untuk meluruskan sesuatu, seperti tinggi palang atau tebal batang. *Guide* bukan bagian dari huruf dan tidak pernah ikut ke font hasil ekspor, seperti garis pensil pada gambar yang dihapus setelah selesai. Titik akan menempel ke *guide* saat Anda menyeretnya mendekat, sehingga palang `E`, `F`, dan `H` mudah dibuat setinggi sama. Di FontEasy, seret dari penggaris di bagian atas editor untuk membuat *guide* mendatar, atau dari penggaris di sebelah kiri untuk *guide* tegak. Garis-garis metrics bekerja dengan cara serupa. Lihat [Editor glyph](/drawing/glyph-editor/).

## H

### Handle

**Handle** (tuas kurva) adalah garis yang berujung pada [off-curve point](/reference/glossary/#off-curve-point) dan mencuat dari sebuah titik pada kurva. Menyeretnya mengubah lengkungan kurva, seperti menarik busur untuk mengubah bentuknya, sementara kurvanya sendiri tidak pernah menyentuh ujung handle. Handle yang panjang menghasilkan kurva yang lebih penuh dan bulat; handle pendek menghasilkan tikungan yang lebih tajam. Pada [smooth point](/reference/glossary/#smooth-point), kedua handle tetap segaris sehingga kurva mengalir; pada [corner point](/reference/glossary/#corner-point) keduanya bebas mengarah ke mana saja. Di FontEasy, pilih dan seret handle dengan alat **Node** (<kbd>A</kbd>); handle tampil sebagai garis tipis dengan titik bulat kecil. Lihat [Outline](/drawing/outlines/).

Lihat juga: [Bezier curve](/reference/glossary/#bezier-curve).

### Hinting

**Hinting** adalah informasi tambahan di dalam font yang membantu layar menggambar teks kecil dengan tajam. Di ukuran kecil, sebuah huruf hanya menempati sedikit piksel, dan tanpa bantuan batangnya bisa tampak kabur atau tidak rata, seperti menggambar lingkaran di kertas berpetak yang sangat kasar. *Hint* memberi tahu perender cara menempelkan outline ke kisi piksel. Layar modern beresolusi tinggi tidak terlalu membutuhkannya, tetapi Windows masih diuntungkan. FontEasy memberi *hinting* otomatis pada font [TrueType](/reference/glossary/#truetype) dengan ttfautohint: centang **Beri hinting pada outline TrueType (ttfautohint)** di **Berkas › Ekspor › Ekspor Font…**. *Hinting* membuat file lebih besar, dan file `.otf` tidak diberi *hinting*. Lihat [Ekspor](/production/export/).

Lihat juga: [Extreme point](/reference/glossary/#extreme-point).

### Hobby curve

**Hobby curve** (kurva Hobby) adalah kurva halus yang melewati titik-titik yang Anda klik, dengan [handle](/reference/glossary/#handle) yang dihitung otomatis. Namanya diambil dari John Hobby, yang menciptakan metodenya untuk bahasa gambar MetaPost. Alih-alih mengatur handle sendiri, Anda cukup meletakkan [titik on-curve](/reference/glossary/#on-curve-point), seperti menancapkan paku di papan lalu membiarkan sebilah plastik lentur menemukan lengkungan terindah di antaranya. Ini cara cepat untuk mendapat kurva yang rapi dan rata. Di FontEasy, nyalakan **Kurva Hobby** di bilah opsi alat **Pena**, pakai **Kurva Hobby** di panel **Gambar**, atau (di mode Pro) **Glyph › Kontur › Kurva Hobby**. Lihat [Alat gambar](/drawing/drawing-tools/).

## I

### Ink trap

**Ink trap** (perangkap tinta) adalah takik kecil yang dipotong pada huruf di tempat goresan bertemu membentuk sudut dalam yang tajam. Saat dicetak, tinta menyebar ke sudut seperti itu dan mengisinya, sehingga huruf tampak menggumpal; takik memberi tinta ruang untuk mengalir, sehingga sudutnya tampak bersih di ukuran akhirnya. Mirip celah di antara ubin lantai yang memberi ruang untuk memuai saat panas. *Ink trap* juga dipakai sebagai detail gaya yang sengaja diperlihatkan di font judul modern. Di FontEasy, pilih node sudut, buka panel **Gambar**, lalu tekan **Ink Trap** di bagian **Sudut**; **Kedalaman** menentukan seberapa dalam potongannya. Lihat [Efek gambar](/advanced/drawing-effects/).

Lihat juga: [Display font](/reference/glossary/#display-font).

### Instance

**Instance** adalah gaya bernama yang dihitung dari [master-master](/reference/glossary/#master) sebuah keluarga, seperti "SemiBold" di antara master Light dan Bold. Anda tidak menggambar *instance*; *instance* dihasilkan lewat [interpolasi](/reference/glossary/#interpolation), seperti mencampur dua cat untuk mendapat warna di antaranya. Dalam [variable font](/reference/glossary/#variable-font), *instance* muncul sebagai gaya bernama di menu font. *Instance* juga bisa diekspor sebagai font statis biasa untuk aplikasi yang belum mendukung font variabel. Di FontEasy, tentukan *instance* di **Font › Instance…** (mode Pro), tempat **Instance Umum** mengisi Thin sampai Black, lalu ekspor dengan **Berkas › Ekspor › Instance Statis…**. Lihat [Font variabel](/advanced/variable/).

Lihat juga: [Designspace](/reference/glossary/#designspace).

### Interpolation

**Interpolation** (interpolasi) adalah menghitung bentuk di antara dua gambar atau lebih. Kalau huruf `n` Light dan `n` Bold punya titik yang persis sama dalam urutan yang sama, komputer bisa membuat `n` di ketebalan berapa pun di antaranya dengan menggeser setiap titik sebagian jalan. Mirip animasi *morphing* antara dua wajah. Interpolasi adalah mesin di balik [variable font](/reference/glossary/#variable-font) dan [instance](/reference/glossary/#instance). Cara ini hanya berhasil bila gambarnya kompatibel: [kontur](/reference/glossary/#contour) sama, titik sama, urutan sama. Di FontEasy, panel **Variasi** menunjukkan apakah sebuah glyph bisa diinterpolasi, dan **Font › Samakan Struktur** membetulkan urutan, arah, dan titik awal kontur. Lihat [Font variabel](/advanced/variable/).

Lihat juga: [Master](/reference/glossary/#master).

### Italic

**Italic** (huruf miring) adalah gaya pendamping yang miring dari sebuah *typeface*, sering dengan bentuk huruf yang digambar berbeda dan lebih dekat ke tulisan tangan: `a` bertingkat satu, `f` berekor, sambungan yang lebih melengkung. Gaya ini dipakai untuk penekanan, judul karya, dan kata asing. *Italic* sejati digambar ulang; [oblique](/reference/glossary/#oblique) hanya huruf tegak yang dimiringkan. Bayangkan beda antara menulis cepat dengan tangan dan memiringkan kata cetak ke samping. Di FontEasy, **Sudut miring** di **Font › Info Font…** (**Dimensi**) mencatat kemiringannya, dengan angka negatif untuk huruf yang miring ke kanan. **Font › Jadikan Variabel…** bisa menambahkan *italic* sebagai master kedua. Lihat [Font variabel](/advanced/variable/) dan [Info font](/production/font-info/).

Lihat juga: [Style](/reference/glossary/#style), [Family](/reference/glossary/#family).

## K

### Kerning

**Kerning** adalah pengaturan jarak khusus antara pasangan huruf tertentu, dipakai di tempat [spasi](/reference/glossary/#spacing) normal tidak terlihat pas. Pada `AV`, misalnya, sisi-sisi yang miring menyisakan celah besar, sehingga `V` digeser mendekati `A`. Ibarat menggeser dua huruf potongan kertas dengan tangan sampai celahnya terlihat rata. Nilai kerning dihitung dalam satuan font: negatif merapatkan huruf, positif menjauhkannya. Atur spasi dulu, baru kerning. Di FontEasy, pakai alat **Kerning** (<kbd>J</kbd>) dan seret sebuah glyph terhadap glyph sebelumnya, atau buka **Kerning › Jendela Kerning** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>2</kbd>). Baca [Kerning](/spacing/kerning/).

![Huruf A dan V tanpa kerning menyisakan celah besar; dengan kerning minus 80 unit kotaknya saling tumpang dan celahnya tampak rata.](diagram:glossary-kerning)

Lihat juga: [Kerning pair](/reference/glossary/#kerning-pair), [Kerning group](/reference/glossary/#kerning-group), [Auto-kerning](/reference/glossary/#auto-kerning).

### Kerning group

**Kerning group** (grup kerning, disebut juga kelas kerning) adalah sekumpulan glyph yang berbagi kerning yang sama karena sisinya mirip. `A`, `À`, `Á`, dan `Ä` punya sisi kanan yang sama, jadi Anda cukup mengatur kerning grup `@A` terhadap `V` sekali, dan semua anggotanya ikut. Ibarat satu kelas sekolah yang pergi karyawisata: Anda membeli satu tiket rombongan, bukan tiket untuk setiap anak. Grup untuk sisi kiri dan sisi kanan sebuah glyph dipisahkan. Di FontEasy, sunting grup di **Kerning › Grup Kerning…**, dan biarkan **Kerning › Grup Otomatis dari Komposit** memasukkan huruf beraksen ke grup huruf dasarnya. Lihat [Kerning](/spacing/kerning/).

Lihat juga: [Kerning pair](/reference/glossary/#kerning-pair).

### Kerning pair

**Kerning pair** (pasangan kerning) adalah satu entri di daftar kerning font: glyph kiri (atau [grup](/reference/glossary/#kerning-group)), glyph kanan (atau grup), dan angka yang menyatakan seberapa jauh keduanya dirapatkan atau direnggangkan. `A V −80` adalah sebuah pasangan kerning. Bayangkan daftar aturan tempat duduk di jamuan makan: "dua orang ini duduk sedikit lebih dekat". Pasangan antara dua glyph tunggal yang menimpa nilai grup disebut pengecualian. Di FontEasy, panel **Kerning** mencantumkan semua pasangan dan bisa menyaringnya; dengan alat **Kerning**, tahan <kbd>Alt</kbd> sambil menyeret untuk membuat pengecualian. **Kerning › Audit Kerning** (mode Pro) menemukan pasangan yang tidak berpengaruh atau membuat glyph bertabrakan. Lihat [Kerning](/spacing/kerning/).

Lihat juga: [Kerning](/reference/glossary/#kerning).

## L

### Language system

**Language system** (sistem bahasa) adalah pasangan [aksara](/reference/glossary/#script) dan bahasa yang menjadi sasaran fitur-fitur font, seperti aksara Latin dengan bahasa Turki. Dengan mendeklarasikannya, font bisa berperilaku berbeda per bahasa, misalnya memakai `i` khusus untuk bahasa Turki atau bentuk huruf lain untuk bahasa Rumania. Ibarat restoran yang menyajikan menu yang sama dengan sedikit penyesuaian untuk selera setempat. Di kode fitur, sistem bahasa muncul sebagai baris seperti `languagesystem latn TRK;`. Di FontEasy, blok **Sistem Bahasa** ditulis otomatis bersama fitur Anda. Untuk menguji bentuk khusus bahasa, pilih bahasa di menu bahasa panel **Pratinjau** (**Bahasa bawaan**). Lihat [Fitur](/opentype/features/).

### Layer

**Layer** (lapisan) adalah salah satu dari beberapa gambar bertumpuk milik glyph yang sama, seperti lembaran plastik transparan yang ditumpuk. Di FontEasy setiap glyph punya **Latar depan**, yaitu huruf yang sesungguhnya, dan **Latar**, untuk sketsa acuan yang tidak pernah ikut diekspor. **Glyph › Salin ke Latar** menyalin outline ke sana sebelum Anda mencoba perubahan. Font variabel menambahkan [brace layer](/reference/glossary/#brace-layer) dan [bracket layer](/reference/glossary/#bracket-layer), dan [font warna](/reference/glossary/#color-font) memakai layer warna, masing-masing dengan warna berbeda. Temukan semuanya di panel **Layer** (**Jendela › Panel › Layer**), dan tampilkan latar dengan **Tampilan › Tampilkan Layer Latar**. Lihat [Editor glyph](/drawing/glyph-editor/).

### Leading

**Leading** (jarak baris, dibaca "leding") adalah jarak dari satu baris teks ke baris berikutnya. Namanya berasal dari bilah timah (*lead*) yang diselipkan pencetak di antara baris huruf logam. *Leading* yang lebih besar membuat teks lega dan mudah diikuti; terlalu kecil membuat baris berdesakan dan *descender* menyentuh *ascender*. *Leading* umumnya dipilih oleh orang yang menata teks, lewat pengaturan jarak baris di aplikasinya. Font hanya menyarankan nilai bawaan lewat [vertical metrics](/reference/glossary/#vertical-metrics) dan [line gap](/reference/glossary/#line-gap). Di FontEasy, nilai-nilai itu diatur di **Font › Info Font…**, dan **Font › Periksa Font…** memeriksa apakah jarak barisnya sama di Windows dan macOS. Lihat [Info font](/production/font-info/).

### Ligature

**Ligature** (ligatur) adalah satu glyph yang menggantikan dua huruf atau lebih yang kalau dibiarkan akan bertabrakan atau tampak janggal, seperti `fi`, `fl`, atau `ffi`. Di banyak *typeface*, kait huruf `f` menabrak titik huruf `i`; ligatur menggambar ulang pasangan itu sebagai satu bentuk. Bayangkan dua orang yang bergandengan tangan supaya siku mereka tidak saling bentur. Ligatur standar memperbaiki tabrakan dan aktif secara bawaan; ligatur diskresioner, seperti `ct`, bersifat hiasan dan opsional. Di FontEasy, beri nama glyph sesuai bagian-bagiannya, seperti `f_i`, maka FontEasy membuat fitur ligaturnya otomatis (bagian-bagiannya harus ada). Nama seperti `c_t.dlig` menghasilkan ligatur diskresioner. Lihat [Fitur](/opentype/features/).

![Di kiri, f dan i sebagai dua glyph, kait f berdesakan dengan titik i; di kanan, ligatur fi yang digambar sebagai satu glyph.](diagram:glossary-ligature)

### Line gap

**Line gap** (celah baris) adalah ruang tambahan yang diminta font agar disisipkan aplikasi di antara baris teks, di luar [ascender](/reference/glossary/#ascender) dan [descender](/reference/glossary/#descender). Anggap saja pengganjal di antara rak. Masalahnya, hanya sebagian aplikasi yang memakainya, sehingga font yang sama bisa punya jarak baris berbeda di program yang berbeda. Karena itu kebanyakan font memakai *line gap* 0 dan memasukkan ruang yang diinginkan ke nilai *ascender* dan *descender*. Di FontEasy, kolom **Line gap typo** dan **Line gap hhea** ada di **Font › Info Font…** bagian **OpenType (kosong = otomatis)**. **Font › Periksa Font…** mencatat bila *line gap* bukan nol. Lihat [Info font](/production/font-info/).

Lihat juga: [Leading](/reference/glossary/#leading), [Vertical metrics](/reference/glossary/#vertical-metrics).

### Lookup

**Lookup** adalah daftar aturan di dalam fitur [OpenType](/reference/glossary/#opentype) sebuah font, seperti "ganti `f i` dengan `f_i`" atau "geser `V` 80 unit ke kiri setelah `A`". [Fitur](/reference/glossary/#opentype-feature) menjalankan *lookup* secara berurutan, seperti resep yang memanggil serangkaian langkah. *Lookup* substitusi ada di [GSUB](/reference/glossary/#gsub) dan *lookup* penempatan di [GPOS](/reference/glossary/#gpos). Setiap *lookup* punya jenis, seperti **Substitusi Tunggal**, **Substitusi Ligatur**, atau **Penyesuaian Pasangan**. Di FontEasy, **Fitur › Fitur** punya tampilan **Lookup** untuk menyusun *lookup* dari aturan tanpa menulis kode, dan tampilan **Inspektor** yang melakukan *shaping* teks satu *lookup* demi satu. Lihat [Lookup](/opentype/lookups/).

Lihat juga: [Feature code](/reference/glossary/#feature-code), [Shaping](/reference/glossary/#shaping).

## M

### Mark

**Mark** (tanda diakritik) adalah glyph yang dirancang untuk menempel pada glyph lain, bukan berdiri sendiri, seperti aksen gabung (`acutecomb`, `dieresiscomb`) atau tanda vokal di banyak aksara. *Mark* biasanya punya [advance width](/reference/glossary/#advance-width) nol, sehingga tidak mendorong huruf berikutnya, mirip topi yang bertengger di kepala tanpa memakan kursi. Lewat [anchor](/reference/glossary/#anchor), penempatan *mark* di font meletakkannya tepat di atas atau di bawah setiap huruf. FontEasy membuat fitur **Posisi Tanda** dan **Posisi Tanda ke Tanda** otomatis dari anchor Anda. Jangan tertukar dengan **Glyph › Warna Tanda**, yang hanya mewarnai kotak glyph di Ikhtisar. Lihat [Komponen](/drawing/components/).

Lihat juga: [Diacritic](/reference/glossary/#diacritic).

### Master

**Master** adalah satu versi font yang lengkap dan digambar tangan, yang menjadi titik ujung (atau sudut) untuk [interpolasi](/reference/glossary/#interpolation), seperti master Light dan master Bold. Setiap gaya di antaranya dihitung dari master-master itu, seperti dua warna ujung pada sebuah gradasi. Semua master harus berisi glyph yang sama dengan outline yang kompatibel: kontur dan titik yang sama, hanya posisinya berbeda. Di FontEasy, kelola master di **Font › Master & Sumbu…** (mode Pro) atau buat master kedua dengan **Font › Jadikan Variabel…**. Berpindah master dengan **Font › Master Berikutnya** (<kbd>Ctrl</kbd>+<kbd>]</kbd>) dan **Master Sebelumnya** (<kbd>Ctrl</kbd>+<kbd>[</kbd>). Lihat [Font variabel](/advanced/variable/).

Lihat juga: [Designspace](/reference/glossary/#designspace), [Axis](/reference/glossary/#axis).

### Metrics

**Metrics** (ukuran-ukuran font) adalah ukuran yang mengatur cara glyph duduk dan saling bersanding dalam teks. *Metrics* horizontal adalah [advance width](/reference/glossary/#advance-width) dan [sidebearing](/reference/glossary/#sidebearing) setiap glyph; *metrics* vertikal adalah tinggi-tinggi untuk seluruh font seperti [baseline](/reference/glossary/#baseline), [x-height](/reference/glossary/#x-height), [cap height](/reference/glossary/#cap-height), [ascender](/reference/glossary/#ascender), dan [descender](/reference/glossary/#descender). Anggap saja ukuran sebuah rak buku: lebar setiap sekat dan tinggi setiap rak. Kalau ukurannya pas, buku-buku (huruf) tersusun rapi dan nyaman dilihat. FontEasy punya menu **Metrics** tersendiri: **Jendela Metrics** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>1</kbd>), **Spasi Otomatis…**, dan **Perbarui Metrics**, ditambah alat **Metrics** (<kbd>Y</kbd>) di editor. Lihat [Metrics](/spacing/metrics/).

Lihat juga: [Vertical metrics](/reference/glossary/#vertical-metrics), [Spacing](/reference/glossary/#spacing).

### Metrics key

**Metrics key** (kunci metrics) adalah rumus kecil yang menautkan lebar atau [sidebearing](/reference/glossary/#sidebearing) sebuah glyph ke glyph lain, sehingga Anda tidak perlu menyalin angka secara manual. Misalnya, memberi `m` sidebearing kiri `=n` membuatnya selalu sama dengan `n`, sedangkan `=|H+10` di sidebearing kiri mengambil sidebearing kanan `H` ditambah 10 unit. Mirip sel di lembar kerja yang berisi "sama dengan sel B2". Saat glyph sumbernya berubah, glyph yang ditautkan ikut berubah. Di FontEasy, ketik kunci yang diawali `=` di kolom **Lebar**, **LSB**, atau **RSB** pada bilah opsi (saat tidak ada yang dipilih), lalu pakai **Metrics › Perbarui Metrics** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>U</kbd>) untuk menerapkan semua kunci. Lihat [Metrics](/spacing/metrics/).

### Monoline

**Monoline** (garis tunggal rata) adalah desain dengan goresan yang tebalnya sama di mana-mana, seperti huruf yang ditulis dengan pulpen, lampu neon, atau mesin plotter. Tidak ada [kontras](/reference/glossary/#contrast) antara bagian tebal dan tipis. Huruf *monoline* terasa ramah, teknis, atau retro, dan banyak dipakai di papan petunjuk, grafir, dan font garis tunggal untuk mesin. Menggambarnya manual cukup melelahkan, karena kedua tepi setiap goresan harus tetap sejajar. Di FontEasy, Anda bisa menggambar garis tengahnya saja dan membiarkan **Stroke** di panel **Gambar** dengan **Pena bulat** memberinya ketebalan rata; **Pakai untuk Semua Glyph** menerapkannya ke seluruh font. Lihat [Efek gambar](/advanced/drawing-effects/).

Lihat juga: [Stroke](/reference/glossary/#stroke), [Nib](/reference/glossary/#nib).

### Monospaced

**Monospaced** (lebar tetap) berarti setiap glyph dalam font punya [advance width](/reference/glossary/#advance-width) yang persis sama, sehingga `i` memakan ruang sebanyak `m`, seperti huruf mesin tik zaman dulu. Kolom teks berjajar sempurna, itulah sebabnya programmer memakai font *monospaced* untuk kode, dan font ini cocok untuk tabel dan terminal. Huruf sempit diberi sidebearing lebih lebar atau serif tambahan, sedangkan huruf lebar dipadatkan. Kebanyakan font justru proporsional, dengan lebar yang mengikuti bentuk tiap huruf. Font proporsional pun sering menyertakan angka berlebar tetap, yang disebut [tabular figures](/reference/glossary/#tabular-figures). Di FontEasy, samakan lebar glyph lewat kolom **Lebar**, atau tautkan dengan [metrics key](/reference/glossary/#metrics-key). Lihat [Metrics](/spacing/metrics/).

## N

### Nib

**Nib** (mata pena) adalah ujung pena yang menyentuh kertas. Mata pena bulat menghasilkan goresan yang tebalnya rata; mata pena datar (lebar) menghasilkan goresan tebal saat digerakkan ke satu arah dan tipis saat digerakkan menyamping, dan dari situlah [kontras](/reference/glossary/#contrast) pada huruf klasik berasal. Kaligrafer memegang mata pena datar pada sudut tetap, misalnya 30 derajat. Di FontEasy, bagian **Stroke** di panel **Gambar** memungkinkan Anda memilih **Pena bulat** atau **Mata pena datar**, dan untuk mata pena datar mengatur **Sudut mata pena** serta **Goresan tipis**. [Path](/reference/glossary/#path) Anda lalu menjadi outline seolah ditulis dengan pena itu. Lihat [Efek gambar](/advanced/drawing-effects/).

Lihat juga: [Stroke](/reference/glossary/#stroke), [Monoline](/reference/glossary/#monoline).

### Node

**Node** (simpul) adalah sebutan lain untuk [on-curve point](/reference/glossary/#on-curve-point): titik yang benar-benar dilalui outline, tempat satu ruas berakhir dan ruas berikutnya dimulai. Bayangkan simpul-simpul pada untaian manik-manik: talinya melewati setiap simpul. *Node* bisa berupa [corner point](/reference/glossary/#corner-point) atau [smooth point](/reference/glossary/#smooth-point), dan ruas melengkung punya [handle](/reference/glossary/#handle) yang menempel padanya. Alat **Node** (<kbd>A</kbd>) di FontEasy dinamai menurut istilah ini: alat itu memilih dan menyunting titik serta handle satu per satu. Alat lain juga bekerja pada *node*, seperti **Tambah Titik** (<kbd>=</kbd>) dan **Hapus Titik** (<kbd>-</kbd>). Lihat [Alat gambar](/drawing/drawing-tools/) dan [Outline](/drawing/outlines/).

Lihat juga: [Point](/reference/glossary/#point).

## O

### Oblique

**Oblique** (miring tanpa digambar ulang) adalah versi miring dari huruf tegak, dibuat dengan memiringkannya tanpa mengubah bentuknya. Sebaliknya, [italic](/reference/glossary/#italic) sejati mengubah bentuk huruf, misalnya membuat `a` bertingkat satu. *Oblique* umum di keluarga [sans serif](/reference/glossary/#sans-serif), yang bentuknya tetap tampak baik saat dimiringkan. Bayangkan rak buku yang dimiringkan: bukunya sama, hanya condong. Kemiringan sederhana bisa tampak sedikit janggal (kurva jadi terdistorsi), jadi desainer sering membetulkannya manual setelahnya. Di FontEasy, **Alat › Ubah Glyph…** dengan **Kemiringan** membuat *oblique* dan mengatur sudut miring font bila semua glyph dimiringkan. Lihat [Otomasi](/advanced/automation/).

Lihat juga: [Style](/reference/glossary/#style).

### Off-curve point

**Off-curve point** (titik kendali di luar kurva) adalah titik yang mengendalikan bentuk kurva tanpa terletak di atasnya: ujung sebuah [handle](/reference/glossary/#handle). Kurva tertarik ke arahnya, seperti layang-layang yang tertarik angin tetapi tak pernah sampai. Pada [kurva kubik](/reference/glossary/#cubic-curve), setiap ruas melengkung punya dua *off-curve point*; pada [kurva kuadratik](/reference/glossary/#quadratic-curve), bisa satu atau lebih. Lawannya adalah [on-curve point](/reference/glossary/#on-curve-point). Di editor FontEasy, *off-curve point* digambar sebagai titik bulat kecil di ujung garis handle yang tipis; seret dengan alat **Node** (<kbd>A</kbd>). Lihat [Outline](/drawing/outlines/).

Lihat juga: [Point](/reference/glossary/#point).

### On-curve point

**On-curve point** (titik pada kurva) adalah titik yang dilalui outline, di ujung setiap ruas garis atau kurva. Titik ini juga disebut [node](/reference/glossary/#node). Bayangkan tiang pagar: pagarnya (outline) melewati setiap tiang, sedangkan [off-curve point](/reference/glossary/#off-curve-point) seperti tali yang menarik pagar menjadi melengkung di antara tiang-tiang itu. *On-curve point* bisa berupa [corner point](/reference/glossary/#corner-point) atau [smooth point](/reference/glossary/#smooth-point). Outline yang baik memakai sesedikit mungkin *on-curve point*, diletakkan di titik [ekstrem](/reference/glossary/#extreme-point) kurva. Di FontEasy, titik sudut tampil sebagai kotak dan titik halus sebagai lingkaran. **Glyph › Kontur › Sederhanakan** mengurangi titik yang tidak perlu. Lihat [Outline](/drawing/outlines/).

### Open contour

**Open contour** (kontur terbuka) adalah [kontur](/reference/glossary/#contour) yang ujung-ujungnya tidak bertemu, seperti seutas tali, bukan karet gelang. Font hanya bisa mengisi bentuk tertutup, jadi kontur terbuka di glyph biasa tidak akan tampil sama sekali, atau tampil sebagai huruf yang rusak, di font hasil ekspor. Kontur terbuka sering terjadi tanpa sengaja, misalnya saat Anda berhenti menggambar dengan alat **Pena** sebelum mengklik titik pertama lagi. Kontur terbuka disengaja saat Anda menggambar garis tengah untuk [stroke](/reference/glossary/#stroke) atau menggambar dengan pensil di **Papan Sketsa**. Di FontEasy, panel **Validasi** melaporkan **Kontur terbuka**, dan **Perbaiki** menutupnya dengan garis lurus. Lihat [Masalah](/drawing/problems/).

Lihat juga: [Path](/reference/glossary/#path).

### OpenType

**OpenType** adalah standar modern untuk file font, dibuat oleh Microsoft dan Adobe, dan dipakai di semua komputer, ponsel, dan browser masa kini. Font OpenType menyimpan outline (sebagai [TrueType](/reference/glossary/#truetype) atau [CFF](/reference/glossary/#cff)), [metrics](/reference/glossary/#metrics), nama, dan yang penting, fitur tipografi pintar seperti [ligatur](/reference/glossary/#ligature), [small caps](/reference/glossary/#small-caps), [kerning](/reference/glossary/#kerning), dan bentuk khusus bahasa. Anggap saja standar peti kemas: apa pun isinya, setiap pelabuhan tahu cara menanganinya. File `.ttf` maupun `.otf` adalah font OpenType, begitu pula font web. Semua yang diekspor FontEasy adalah OpenType. Lihat [Ekspor](/production/export/) dan [Fitur](/opentype/features/).

Lihat juga: [OpenType feature](/reference/glossary/#opentype-feature), [GSUB](/reference/glossary/#gsub), [GPOS](/reference/glossary/#gpos).

### OpenType feature

**OpenType feature** (fitur OpenType) adalah perilaku tipografi bernama yang bisa dinyalakan atau dimatikan aplikasi, dikenali dari tag empat huruf: `liga` untuk ligatur standar, `smcp` untuk small caps, `kern` untuk kerning, `ss01` untuk stylistic set 1, `tnum` untuk angka tabular. Mirip mode pada kamera: lensanya sama, modenya berbeda. Sebagian fitur aktif secara bawaan, sebagian lagi menunggu pengguna. Setiap fitur menjalankan satu [lookup](/reference/glossary/#lookup) atau lebih. FontEasy membuat sebagian besar fitur otomatis dari [nama glyph](/reference/glossary/#glyph-name) Anda; lihat di **Fitur › Fitur** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>F</kbd>), segarkan dengan **Fitur › Perbarui Fitur Otomatis**, dan uji dengan sakelar di panel **Pratinjau**. Lihat [Fitur](/opentype/features/).

Lihat juga: [Feature code](/reference/glossary/#feature-code).

### OpenType-SVG

**OpenType-SVG** adalah cara menyimpan glyph [font warna](/reference/glossary/#color-font) sebagai gambar SVG kecil di dalam file font, di tabel bernama `SVG`. SVG adalah format gambar vektor yang sama dengan yang dipakai di web dan diekspor aplikasi gambar. Sebagian aplikasi mendukung font warna OpenType-SVG tetapi tidak mendukung cara [COLR dan CPAL](/reference/glossary/#colr-and-cpal), dan sebagian lagi sebaliknya, jadi menyertakan keduanya ibarat memasang papan petunjuk dalam dua bahasa agar lebih banyak orang bisa membacanya. Di FontEasy, bila font Anda punya glyph warna, dialog ekspor menampilkan **Font warna: tulis juga tabel SVG (untuk aplikasi tanpa dukungan COLR)**; centang untuk menyertakan versi SVG. Lihat [Font warna](/advanced/color/) dan [Ekspor](/production/export/).

### OTF

**OTF** adalah ekstensi file `.otf`, dipakai untuk font [OpenType](/reference/glossary/#opentype) yang outline-nya disimpan sebagai [CFF](/reference/glossary/#cff) dengan [kurva kubik](/reference/glossary/#cubic-curve). Namanya singkatan dari "OpenType font", yang agak membingungkan karena file `.ttf` juga font OpenType. Anggap OTF dan TTF sebagai dua jenis amplop untuk surat yang sama. OTF sering dipilih untuk keperluan cetak dan desain, sedangkan TTF punya [hinting](/reference/glossary/#hinting) untuk teks yang tajam di layar Windows. Di FontEasy, pilih **OpenType CFF (.otf) — desktop, cetak** di **Berkas › Ekspor › Ekspor Font…**. FontEasy juga bisa membuka file `.otf` dengan **Berkas › Buka…**. Lihat [Ekspor](/production/export/).

Lihat juga: [TTF](/reference/glossary/#ttf), [Font format](/reference/glossary/#font-format).

### Outline

**Outline** (garis bentuk) adalah bentuk glyph yang dijelaskan lewat tepi-tepinya: semua [konturnya](/reference/glossary/#contour), yang tersusun dari kurva dan garis lurus, lalu diisi komputer saat huruf ditampilkan. Ibarat bentuk yang Anda gunting dari kertas: Anda hanya menentukan tepinya, dan bagian dalamnya menjadi padat. Karena *outline* bersifat matematis, ia bisa diperbesar ke ukuran berapa pun dan tetap halus, tidak seperti [bitmap](/reference/glossary/#bitmap-font). Menggambar *outline* yang baik adalah inti desain huruf. Di FontEasy, Anda menggambar *outline* di editor glyph dengan alat seperti **Pena**, **Pensil**, **Persegi Panjang**, dan **Elips**, dan melihatnya terisi dengan **Tampilan › Tampilkan Isian**. Lihat [Outline](/drawing/outlines/).

Lihat juga: [Path](/reference/glossary/#path).

### Overlap

**Overlap** (tumpang tindih) adalah bagian tempat dua [kontur](/reference/glossary/#contour) dari glyph yang sama saling menumpuk, misalnya palang `t` yang digambar sebagai persegi panjang terpisah melintasi batangnya. Saat menggambar, *overlap* justru praktis: Anda bisa memindahkan bagian-bagian dengan bebas, seperti potongan kertas yang ditumpuk. Di font statis yang sudah jadi, *overlap* bisa menimbulkan gangguan kecil saat dirender, jadi biasanya digabung dengan [remove overlap](/reference/glossary/#remove-overlap). [Variable font](/reference/glossary/#variable-font) sengaja mempertahankannya. Di FontEasy, panel **Validasi** mencantumkan **Kontur bertumpuk** sebagai informasi, bukan error, dan ekspor menghapus *overlap* bila opsinya Anda centang. Lihat [Masalah](/drawing/problems/).

### Overshoot

**Overshoot** (kelebihan optis) adalah sedikit kelebihan ukuran pada huruf bulat dan runcing, seperti `O`, `o`, `S`, dan `A`, yang melewati [baseline](/reference/glossary/#baseline), [x-height](/reference/glossary/#x-height), atau [cap height](/reference/glossary/#cap-height). Lingkaran dan persegi yang tingginya persis sama terlihat berbeda: lingkaran tampak lebih kecil, karena hanya menyentuh garis di satu titik. Membuat huruf bulat sedikit lebih besar, biasanya 1–2% dari tingginya, mengoreksi ilusi optis ini. Mirip pelukis yang membuat roda sedikit lebih besar agar tampak pas. *Overshoot* digambar, bukan diatur: letakkan titik atas dan bawah huruf bulat beberapa unit melewati garis metrics di editor FontEasy. Lihat [Dasar-dasar huruf](/start/type-basics/).

![H dan O berdampingan: O sedikit melewati cap height dan turun di bawah baseline, diperlihatkan dengan pembesaran enam kali.](diagram:glossary-overshoot)

## P

### Palette

**Palette** (palet) adalah daftar warna bernomor yang dipakai sebuah [font warna](/reference/glossary/#color-font). Setiap layer warna pada glyph memilih warnanya berdasarkan nomor dari palet, seperti paket mewarnai bernomor. Karena layer merujuk ke nomor, bukan ke warna tetap, Anda bisa menambah palet lain: palet mode gelap atau palet musiman memberi gambar yang sama warna yang berbeda, dan aplikasi bisa berganti di antaranya. Semua palet harus berisi jumlah warna yang sama. Di FontEasy, sunting palet di **Font › Palet Warna…**: **Tambah Palet**, **Tambah Warna**, atau pilih dari **Palet siap pakai**. Setiap layer di panel **Warna** juga bisa memakai **Warna teks**. Lihat [Font warna](/advanced/color/).

Lihat juga: [COLR and CPAL](/reference/glossary/#colr-and-cpal).

### Path

**Path** (jalur) adalah garis yang tersusun dari ruas-ruas kurva dan garis lurus yang bersambung, ditentukan oleh [titik-titik](/reference/glossary/#point). Bila *path* menutup kembali ke awalnya, ia menjadi [kontur](/reference/glossary/#contour); bila tidak, ia menjadi [kontur terbuka](/reference/glossary/#open-contour). Istilah ini berasal dari perangkat lunak gambar, tempat "path" menjadi sebutan umum untuk garis vektor apa pun, mirip kata "jalan" yang mencakup jalan lingkar maupun jalan buntu. Di font, *path* biasanya tertutup dan diisi. Di FontEasy, *path* terbuka berguna bersama **Stroke** di panel **Gambar**, yang memperlakukan *path* sebagai garis tengah dan memberinya ketebalan pena. Goresan pensil di **Papan Sketsa** juga berupa *path* terbuka. Lihat [Outline](/drawing/outlines/) dan [Efek gambar](/advanced/drawing-effects/).

### Point

**Point** (titik) adalah salah satu noktah yang menentukan sebuah [outline](/reference/glossary/#outline). Ada dua golongan: [on-curve point](/reference/glossary/#on-curve-point) (disebut juga [node](/reference/glossary/#node)) yang dilalui outline, dan [off-curve point](/reference/glossary/#off-curve-point) di ujung [handle](/reference/glossary/#handle) yang membengkokkan kurva. *On-curve point* bisa berupa [corner point](/reference/glossary/#corner-point) atau [smooth point](/reference/glossary/#smooth-point). Bayangkan teka-teki menghubungkan titik, dengan sebagian titik ditarik tali tak terlihat. Posisi titik berupa bilangan bulat dalam satuan font, dan titik yang tidak bulat akan dibulatkan saat ekspor. Di FontEasy, sunting titik dengan alat **Node** (<kbd>A</kbd>), tambahkan dengan **Tambah Titik** (<kbd>=</kbd>), dan hapus dengan **Hapus Titik** (<kbd>-</kbd>). Lihat [Outline](/drawing/outlines/).

![Huruf D dengan titik-titiknya: kotak adalah titik sudut, lingkaran hijau titik halus, dan noktah kecil berongga di ujung garis tipis adalah titik off-curve dengan handle-nya.](diagram:glossary-points)

### PostScript name

**PostScript name** (nama PostScript) adalah nama teknis satu kata untuk setiap font, seperti `NusantaraSans-Bold`. Aplikasi dan printer memakainya di balik layar untuk mengenali font secara tepat, dan sebagian, seperti program desain dan file PDF, menampilkan atau menyimpannya. Anggap saja nomor paspor, sedangkan nama [keluarga](/reference/glossary/#family) dan [gaya](/reference/glossary/#style) adalah nama panggilan Anda. Aturannya ketat: hanya karakter ASCII cetak, tanpa spasi atau `()[]{}<>/%`, paling banyak 63 karakter. FontEasy menyusunnya dari nama keluarga dan nama gaya. Anda bisa mengisinya sendiri di **Font › Info Font…** bagian **OpenType (kosong = otomatis)** (**Nama PostScript**), dan itu bijak bila nama keluarga mengandung huruf beraksen. Lihat [Info font](/production/font-info/).

## Q

### Quadratic curve

**Quadratic curve** (kurva kuadratik) adalah [kurva Bézier](/reference/glossary/#bezier-curve) yang setiap potongan lengkungnya hanya dikendalikan oleh satu [off-curve point](/reference/glossary/#off-curve-point), bukan dua seperti pada [kurva kubik](/reference/glossary/#cubic-curve). Kurva kuadratik lebih sederhana untuk dihitung, dan inilah kurva yang dipakai font [TrueType](/reference/glossary/#truetype) (`.ttf`). Karena setiap potongan hanya bisa melengkung dalam satu busur sederhana, outline kuadratik biasanya butuh lebih banyak titik untuk bentuk yang sama, mirip menggambar lingkaran dengan lebih banyak goresan pendek. FontEasy menggambar dengan kurva kubik dan mengubahnya ke kuadratik otomatis saat Anda mengekspor `.ttf`. Mode Pro juga punya **Glyph › Kontur › Ubah ke Kuadratik** dan **Ubah ke Kubik**. Lihat [Outline](/drawing/outlines/).

## R

### Remove overlap

**Remove overlap** (hapus tumpang tindih) menggabungkan [kontur](/reference/glossary/#contour) yang saling menumpuk dalam sebuah glyph menjadi satu outline yang bersih, tanpa mengubah bentuk yang terlihat. Bayangkan dua bentuk kertas yang ditumpuk lalu digunting bersamaan menjadi satu potong. Biasanya ini dilakukan sebelum merilis font statis, karena [overlap](/reference/glossary/#overlap) bisa menimbulkan masalah kecil saat dirender, seperti bercak lebih gelap di sebagian aplikasi. Di FontEasy, pakai **Glyph › Kontur › Hapus Tumpang Tindih** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>O</kbd>) pada pilihan atau glyph. Anda tidak harus melakukannya manual: opsi ekspor **Hapus overlap (source Anda tetap utuh)** menggabungkannya hanya di file hasil ekspor. Font variabel mempertahankan *overlap*. Lihat [Masalah](/drawing/problems/) dan [Ekspor](/production/export/).

## S

### Sans serif

**Sans serif** (tanpa kaki) adalah *typeface* yang tidak punya [serif](/reference/glossary/#serif), goresan kecil di ujung huruf; "sans" adalah bahasa Prancis untuk "tanpa". Contoh umumnya adalah font di sebagian besar layar ponsel, rambu jalan, dan antarmuka aplikasi. Huruf *sans serif* cenderung tampak bersih, modern, dan sederhana, serta bekerja baik di layar dan di ukuran besar. Ragamnya tetap banyak: yang geometris dibangun dari lingkaran, yang humanis dekat dengan tulisan tangan, dan yang grotesk berkesan lebih industrial. Di FontEasy tidak ada pengaturan khusus untuk ini: apakah font Anda *sans serif* hanya bergantung pada cara Anda menggambar ujung-ujung goresan. Lihat [Dasar-dasar huruf](/start/type-basics/).

Lihat juga: [Serif](/reference/glossary/#serif), [Typeface](/reference/glossary/#typeface).

### Script

**Script** (aksara) adalah sistem tulisan, seperti Latin (dipakai untuk bahasa Inggris dan Indonesia), Yunani, Sirilik, Arab, atau Dewanagari. Satu aksara bisa melayani banyak bahasa: aksara Latin dipakai untuk ratusan bahasa, masing-masing butuh beberapa huruf atau aksen tambahan. Font menyatakan aksara mana yang didukungnya, dan fitur bisa berperilaku berbeda per aksara lewat [language system](/reference/glossary/#language-system). Di FontEasy, bilah samping Ikhtisar punya bagian **AKSARA** yang menyaring glyph per sistem tulisan. Perhatikan bahwa FontEasy juga memakai kata "script" dalam arti lain, yaitu program Python kecil, di **Alat › Scripting** (mode Pro); lihat [Scripting](/power/scripting/). Untuk sistem tulisan, lihat [Set glyph](/drawing/glyph-set/).

Lihat juga: [Unicode](/reference/glossary/#unicode).

### Serif

**Serif** (kaki huruf) adalah goresan atau kaki kecil di ujung goresan utama huruf, seperti kaki kecil di bagian bawah `n` atau ujung datar di bagian atas `T`. *Typeface* yang memiliki serif juga disebut *typeface* serif; Times New Roman dan Source Serif adalah contohnya. Serif berasal dari pahatan huruf di batu dan tulisan dengan pena, dan membantu menuntun mata sepanjang baris cetakan. Font serif sering terasa klasik, sastrawi, atau formal. Serif bisa tipis dan tajam, tebal dan kotak (*slab serif*), atau melengkung lembut ke batang lewat sebuah *bracket*. Di FontEasy, serif adalah bagian dari outline yang Anda gambar. Lihat [Dasar-dasar huruf](/start/type-basics/).

![Huruf R dan n pada typeface serif dengan serif yang dilingkari, di samping huruf yang sama pada typeface sans serif tanpa serif.](diagram:glossary-serif-sans)

Lihat juga: [Sans serif](/reference/glossary/#sans-serif).

### Shaping

**Shaping** (pembentukan teks) adalah langkah ketika aplikasi mengubah rangkaian [karakter](/reference/glossary/#character) menjadi [glyph](/reference/glossary/#glyph) yang tepat di posisi yang tepat, dengan menerapkan [fitur OpenType](/reference/glossary/#opentype-feature) font. *Shaping* menukar `f` + `i` dengan ligatur, memilih small caps, meletakkan aksen, dan menerapkan kerning. Bayangkan penerjemah yang membaca kata-kata Anda lalu memutuskan cara mengucapkan setiap kata sesuai konteksnya. Untuk sebagian aksara, seperti Arab atau Dewanagari, *shaping* mutlak diperlukan agar teks bisa dibaca. Panel **Pratinjau** FontEasy melakukan *shaping* dengan HarfRust (**Di-shape dengan HarfRust**), dan sakelar **Glyph**-nya menampilkan nama glyph hasilnya. **Fitur › Fitur › Inspektor** melakukan *shaping* satu [lookup](/reference/glossary/#lookup) demi satu. Lihat [Lookup](/opentype/lookups/).

### Sidebearing

**Sidebearing** (ruang samping) adalah ruang kosong antara outline glyph dan tepi [advance width](/reference/glossary/#advance-width)-nya. Setiap glyph punya dua: *sidebearing* kiri (LSB) dan *sidebearing* kanan (RSB). Saat dua huruf diketik bersebelahan, RSB huruf pertama ditambah LSB huruf kedua membentuk celah di antaranya. Bayangkan margin di kedua sisi halaman. Sisi lurus seperti pada `n` butuh *sidebearing* lebih besar daripada sisi bulat seperti pada `o`, supaya ruang putihnya tampak rata. Di FontEasy, seret *sidebearing* dengan alat **Metrics** (<kbd>Y</kbd>), atau ketik nilainya di kolom **LSB** dan **RSB** pada bilah opsi. Lihat [Metrics](/spacing/metrics/).

![Huruf n dan o di dalam kotak advance width-nya: pita berwarna di kedua sisi adalah sidebearing kiri dan kanan.](diagram:glossary-sidebearing)

Lihat juga: [Spacing](/reference/glossary/#spacing), [Metrics key](/reference/glossary/#metrics-key).

### Small caps

**Small caps** (kapital kecil) adalah huruf berbentuk kapital yang tingginya kira-kira setinggi huruf kecil, digambar dengan ketebalan huruf kecil supaya menyatu dengan teks. Small caps dipakai untuk singkatan seperti NASA atau UNESCO di tengah kalimat, untuk judul, dan untuk kata-kata pertama sebuah bab. Small caps bukan sekadar kapital yang diperkecil: memperkecil membuat goresannya terlalu tipis, sama seperti foto orang dewasa yang dicetak kecil tidak menjadi foto anak-anak. Di FontEasy, **Font › Buat Small Caps…** membuatnya dari huruf kapital Anda sebagai `a.sc`, `b.sc`, dan seterusnya, dan fitur **Small Caps** (`smcp`, `c2sc`) ikut dibuat otomatis. Anda juga bisa menggambar sendiri glyph bersuffix `.sc`. Lihat [Fitur](/opentype/features/) dan [Otomasi](/advanced/automation/).

### Smart component

**Smart component** (komponen pintar) adalah [komponen](/reference/glossary/#component) yang bisa direntangkan atau berubah bentuk saat ditempatkan, bukan salinan yang kaku. Anda memberi sebuah bagian, seperti palang atau serif, sumbunya sendiri (misalnya **Width** dan **Height**) dan menggambar versi ekstremnya; setiap glyph yang memakainya lalu bisa mengatur nilainya sendiri. Ibarat kunci inggris yang bisa disetel, bukan satu set kunci pas berukuran tetap: satu alat, banyak ukuran. Bagian yang berulang tetap konsisten sambil menyesuaikan diri dengan huruf yang lebarnya berbeda, misalnya palang pada `T`, `E`, dan `F`. Di FontEasy, buat komponen pintar di panel **Gambar** pada bagian **Komponen Pintar**. Lihat [Efek gambar](/advanced/drawing-effects/) dan [Komponen](/drawing/components/).

### Smooth point

**Smooth point** (titik halus) adalah [on-curve point](/reference/glossary/#on-curve-point) tempat outline mengalir tanpa sudut, karena [handle](/reference/glossary/#handle) di kedua sisinya terletak pada satu garis lurus. Mirip tikungan jalan yang landai, tempat Anda tidak perlu berhenti untuk berbelok. Titik halus membentuk bagian bulat pada huruf seperti `o`, `s`, dan `e`. Kalau handle titik halus tidak segaris, kurvanya mendapat tonjolan kecil yang terlihat. Di editor FontEasy, titik halus digambar sebagai lingkaran. Pakai **Glyph › Ubah Smooth** (<kbd>Alt</kbd>+<kbd>S</kbd>) untuk mengubah titik antara halus dan sudut. Panel **Validasi** melaporkan **Titik halus yang tertekuk**. Lihat [Outline](/drawing/outlines/).

Lihat juga: [Corner point](/reference/glossary/#corner-point).

### Spacing

**Spacing** (pengaturan spasi) adalah menentukan ruang di kedua sisi setiap glyph, yaitu [sidebearing](/reference/glossary/#sidebearing)-nya, supaya teks punya ritme hitam-putih yang rata. Spasi yang baik lebih penting daripada yang dikira kebanyakan pemula: huruf yang digambar indah tampak canggung bila spasinya buruk, dan huruf sederhana tampak profesional bila spasinya bagus. Ibarat menancapkan tiang pagar dengan jarak teratur supaya pagarnya tampak rapi. Spasi berlaku untuk semua pasangan sekaligus; [kerning](/reference/glossary/#kerning) hanya membetulkan pengecualiannya. Di FontEasy, pakai alat **Metrics** (<kbd>Y</kbd>), **Metrics › Jendela Metrics** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>1</kbd>), dan **Metrics › Spasi Otomatis…**, yang mengukur dari glyph acuan seperti `n` dan `H`. Lihat [Metrics](/spacing/metrics/).

Lihat juga: [Tracking](/reference/glossary/#tracking).

### Stem

**Stem** (batang) adalah goresan utama yang tegak (atau miring, pada *italic*) pada huruf, seperti tiang `l`, kedua kaki `n`, atau sisi kiri `b`. Batang adalah tulang punggung *typeface*: tebalnya sangat menentukan seberapa tipis atau [tebal](/reference/glossary/#bold) font itu terlihat. Lebar batang yang sama di semua huruf membuat teks tampak rata, seperti tiang-tiang pagar yang sama tebal. Desainer sering mengukur satu batang lalu memakai angka itu lagi dan lagi. Di FontEasy, ukur batang dengan alat **Ukur** (<kbd>U</kbd>). **Alat › Ubah Glyph…** dengan **Tebal / Tipis** mengubah tebal batang sambil mempertahankan titik-titiknya. Lihat [Dasar-dasar huruf](/start/type-basics/) dan [Otomasi](/advanced/automation/).

Lihat juga: [Contrast](/reference/glossary/#contrast), [Weight](/reference/glossary/#weight).

### Stroke

**Stroke** (goresan) punya dua arti dalam desain huruf. Dalam pengertian sehari-hari, *stroke* adalah satu gerakan pena atau kuas yang membentuk bagian huruf, seperti batang dan lengkungan pada `n`. Dalam perangkat lunak gambar, *stroke* adalah garis yang diberi ketebalan, kebalikan dari bentuk yang diisi. FontEasy memakai arti kedua di panel **Gambar**: dengan **Gambar path dengan pena**, [path](/reference/glossary/#path) Anda diperlakukan sebagai garis tengah dan mendapat outline selebar pena, dengan **Pena bulat** atau **Mata pena datar**, serta pilihan **Ujung** dan **Sudut**. Tekan **Bentangkan** untuk mengubah *stroke* menjadi outline biasa secara permanen. Lihat [Efek gambar](/advanced/drawing-effects/).

Lihat juga: [Nib](/reference/glossary/#nib), [Monoline](/reference/glossary/#monoline).

### Style

**Style** (gaya) adalah satu anggota [keluarga](/reference/glossary/#family) font, yang dijelaskan oleh nama gayanya: Regular, Italic, Bold, Light Condensed, dan seterusnya. Setiap gaya adalah font tersendiri (atau [instance](/reference/glossary/#instance) bernama di dalam font variabel). Bayangkan lini busana yang satu desainnya hadir dalam beberapa potongan dan warna. Empat gaya dasar, yaitu Regular, Italic, Bold, dan Bold Italic, ditautkan supaya tombol **B** dan **I** di aplikasi berfungsi. Di FontEasy, atur nama gaya di **Font › Info Font…** bagian **Nama**; **Weight class** di bagian **OpenType** sebaiknya cocok dengannya, dan **Font › Periksa Font…** memeriksanya. Lihat [Info font](/production/font-info/).

Lihat juga: [Weight](/reference/glossary/#weight), [Italic](/reference/glossary/#italic).

### Stylistic set

**Stylistic set** (set gaya) adalah sekelompok desain [alternatif](/reference/glossary/#alternate) yang bisa dinyalakan pengguna bersamaan, seperti satu set huruf yang lebih bulat atau satu set angka alternatif. Sebuah font bisa punya sampai 20 set, dengan tag `ss01` sampai `ss20`. Ibarat pergantian kostum untuk seluruh pemain sekaligus. Desainer memakainya untuk menawarkan variasi tanpa membuat font terpisah. Di FontEasy, beri glyph suffix seperti `a.ss01` atau `g.ss02`, dan FontEasy membuat fitur yang sesuai secara otomatis (tercantum sebagai **Stylistic set** di **Fitur › Fitur**). Uji dengan sakelar fitur di panel **Pratinjau**. Lihat [Fitur](/opentype/features/).

Lihat juga: [OpenType feature](/reference/glossary/#opentype-feature).

### Subsetting

**Subsetting** (pemangkasan font) berarti membuat salinan font yang lebih kecil, hanya berisi sebagian glyph-nya, misalnya hanya huruf Latin yang dibutuhkan sebuah situs web. File yang lebih kecil dimuat lebih cepat, dan itu sangat penting di web. Ibarat hanya mengemas pakaian yang dibutuhkan untuk perjalanan, bukan seisi lemari. Risikonya, ada karakter yang belakangan diketik orang tetapi tidak ikut, sehingga tampil dengan font cadangan. Di FontEasy, **Berkas › Ekspor › Profil Ekspor…** di mode Pro punya pilihan **Karakter** untuk setiap profil: **Semua glyph**, **Latin (ASCII, Eropa Barat)**, atau **Latin + Latin Extended**. Font source Anda tetap menyimpan semua glyph. Lihat [Ekspor](/production/export/).

Lihat juga: [Character set](/reference/glossary/#character-set), [WOFF](/reference/glossary/#woff).

## T

### Tabular figures

**Tabular figures** (angka tabular) adalah angka yang lebarnya persis sama sehingga berjajar rapi dalam kolom, seperti angka di rekening koran atau jadwal perjalanan. Angka biasa (proporsional) punya lebar yang menyesuaikan setiap digit, sehingga `1` lebih sempit daripada `8`; tampak lebih bagus di dalam teks, tetapi membuat kolom tidak rata. Angka tabular adalah keluarga kecil [monospaced](/reference/glossary/#monospaced) di dalam font Anda. Pengguna beralih ke angka ini lewat fitur `tnum`. Di FontEasy, beri nama versi tabularnya dengan suffix `.tf`, seperti `one.tf` dan `two.tf`, samakan lebarnya, maka FontEasy membuat fiturnya otomatis. Lihat [Fitur](/opentype/features/) dan [Metrics](/spacing/metrics/).

Lihat juga: [OpenType feature](/reference/glossary/#opentype-feature).

### Terminal

**Terminal** (ujung goresan) adalah ujung goresan yang tidak berakhir dengan [serif](/reference/glossary/#serif), seperti ujung atas `c`, ekor `a`, atau ujung kait `f`. Terminal bisa berbentuk bola (tetesan bulat kecil), datar, bersudut, meruncing, atau terpotong. Seperti ujung sapuan kuas, terminal memperlihatkan cara "pena" meninggalkan kertas, dan banyak bercerita tentang karakter sebuah *typeface*. Font yang ramah mungkin punya terminal bulat lembut; font modern yang tegas mungkin memotongnya miring. Anda membentuk terminal dengan menggambarnya, dan pengaturan **Ujung** pada stroke di panel **Gambar** mengendalikannya untuk *path* yang diberi stroke. Gambar di bawah [Bowl](/reference/glossary/#bowl) melingkari terminal huruf `c`. Lihat [Dasar-dasar huruf](/start/type-basics/).

### Tracking

**Tracking** (spasi huruf, disebut juga *letter-spacing*) adalah menambah atau mengurangi ruang yang sama besar di antara semua huruf dalam sepotong teks, misalnya untuk melonggarkan baris huruf kapital di sebuah judul. Berbeda dengan [kerning](/reference/glossary/#kerning) yang mengubah pasangan tertentu, *tracking* mengubah semuanya secara merata, seperti menggeser semua kursi dalam satu baris dengan jarak yang sama. *Tracking* diatur oleh orang yang memakai font, di aplikasinya atau di CSS lewat `letter-spacing`, bukan disimpan di dalam font. Tugas Anda sebagai desainer adalah [spasi](/reference/glossary/#spacing) bawaan yang baik, supaya pengguna jarang perlu mengubah *tracking*. Di FontEasy, nilai spasi Anda dalam teks nyata di panel **Pratinjau** dan **Jendela Metrics**. Lihat [Metrics](/spacing/metrics/).

### TrueType

**TrueType** adalah teknologi font yang dikembangkan Apple dan diadopsi Microsoft, dan kini menjadi salah satu dari dua jenis outline di dalam font [OpenType](/reference/glossary/#opentype). Outline TrueType memakai [kurva kuadratik](/reference/glossary/#quadratic-curve) dan mendukung [hinting](/reference/glossary/#hinting) yang rinci, yang membantu teks kecil di layar Windows. Jenis lainnya adalah [CFF](/reference/glossary/#cff). File dengan outline TrueType biasanya berakhiran `.ttf`, dan font web pun sering berisi TrueType. Inilah pilihan yang paling luas dukungannya, ibarat steker yang cocok di semua stopkontak. Di FontEasy, **TrueType (.ttf) — desktop** adalah salah satu pilihan di **Berkas › Ekspor › Ekspor Font…**, dan font variabel selalu diekspor sebagai TrueType. Lihat [Ekspor](/production/export/).

Lihat juga: [TTF](/reference/glossary/#ttf).

### TTF

**TTF** adalah ekstensi file `.ttf`, dipakai untuk font dengan outline [TrueType](/reference/glossary/#truetype). Singkatan dari "TrueType font", dan file `.ttf` modern adalah font [OpenType](/reference/glossary/#opentype) lengkap dengan semua fiturnya. File TTF bisa dipakai di Windows, macOS, Linux, ponsel, dan sebagian besar aplikasi, sehingga menjadi pilihan paling aman bila Anda ragu. File ini bisa membawa [hinting](/reference/glossary/#hinting) untuk teks kecil yang tajam. Di FontEasy, centang **TrueType (.ttf) — desktop** di **Berkas › Ekspor › Ekspor Font…**, bila perlu bersama **Beri hinting pada outline TrueType (ttfautohint)**. **Berkas › Buka…** juga bisa membuka file `.ttf` yang sudah ada. Lihat [Ekspor](/production/export/).

Lihat juga: [OTF](/reference/glossary/#otf), [Font file](/reference/glossary/#font-file).

### Typeface

**Typeface** (rupa huruf) adalah desain seperangkat huruf: bentuk, proporsi, dan gayanya, terlepas dari file atau ukuran apa pun. "Source Serif" adalah sebuah *typeface*; "Source Serif 4 Bold" dalam file `.ttf` adalah salah satu [font](/reference/glossary/#font)-nya. Bayangkan resep dan kue-kue yang dipanggang darinya: *typeface* adalah resepnya, font adalah kuenya. Sebuah *typeface* bisa punya banyak gaya, yang bersama-sama membentuk [keluarga](/reference/glossary/#family). Dalam percakapan sehari-hari orang menyebut keduanya "font", dan panduan ini pun begitu bila perbedaannya tidak penting. Dengan FontEasy Anda merancang *typeface* lalu mengekspornya sebagai satu font atau lebih. Lihat [Selamat datang](/start/welcome/) dan [Dasar-dasar huruf](/start/type-basics/).

## U

### UFO

**UFO** (*Unified Font Object*) adalah format terbuka untuk proyek font, sekaligus format kerja FontEasy sendiri. UFO berupa folder, bukan satu file: di dalamnya setiap glyph adalah file teks kecil, dengan file terpisah untuk kerning, grup, fitur, dan info font. Ibarat map bercincin yang setiap halamannya bisa dilepas dan dibaca, bukan buku yang tersegel. Banyak aplikasi font bisa membaca dan menulis UFO, jadi pekerjaan Anda tidak pernah terkunci di satu program. Di FontEasy, **Berkas › Simpan** menulis UFO, **Berkas › Buka Folder UFO…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>O</kbd>) membukanya, dan **Berkas › Ekspor** mengubahnya menjadi file font yang bisa dipasang. Lihat [Selamat datang](/start/welcome/) dan [Ekspor](/production/export/).

Lihat juga: [Designspace](/reference/glossary/#designspace).

### Unicode

**Unicode** adalah standar sedunia yang memberi setiap [karakter](/reference/glossary/#character) dari setiap sistem tulisan nomornya sendiri, yaitu [code point](/reference/glossary/#code-point). Berkat Unicode, huruf `é` atau huruf Arab yang diketik di satu perangkat tampil sebagai karakter yang sama di perangkat lain. Bayangkan buku telepon sedunia tempat setiap karakter punya nomor tetap. Unicode juga mengelompokkan karakter ke dalam blok seperti **Latin Dasar (ASCII)** dan **Latin Lanjutan-A**. Font menghubungkan glyph-nya dengan nomor Unicode lewat peta karakternya. Di FontEasy, urutkan Ikhtisar dengan **Font › Urutkan Glyph › Menurut Unicode**, dan temukan glyph tanpa Unicode di bagian **Tanpa Unicode**. Lihat [Set glyph](/drawing/glyph-set/).

Lihat juga: [Glyph set](/reference/glossary/#glyph-set).

### Units per em

**Units per em** (UPM, satuan per em) adalah jumlah langkah kecil yang membagi kotak [em](/reference/glossary/#em): kisi tempat setiap titik dan ukuran font diletakkan. Nilai yang umum adalah 1000 (lazim untuk font PostScript/CFF) dan 2048 (lazim untuk TrueType). Mirip memilih kertas milimeter atau kertas berpetak sentimeter: kisi yang lebih halus memungkinkan posisi yang lebih tepat. Dengan 1000 UPM, batang selebar 80 unit berarti 8% dari ukuran font. Tentukan sejak awal, karena mengubahnya belakangan akan menskalakan semuanya. Di FontEasy, atur di dialog **Font Baru** (mode Pro), sebagai nilai bawaan di **Edit › Preferensi…**, atau di **Font › Info Font…** bagian **Dimensi**. Lihat [Dasar-dasar huruf](/start/type-basics/).

## V

### Variable font

**Variable font** (font variabel) adalah satu file font yang berisi serangkaian gaya, misalnya semua ketebalan dari Thin sampai Black, yang bisa dipilih aplikasi dengan slider. Cara kerjanya lewat [interpolasi](/reference/glossary/#interpolation) di antara [master-master](/reference/glossary/#master) sepanjang satu [sumbu](/reference/glossary/#axis) atau lebih. Bayangkan peredup lampu, bukan sederet bola lampu terpisah. Satu file menggantikan banyak file dan memungkinkan gaya di antaranya, seperti ketebalan 450. Di FontEasy, **Font › Jadikan Variabel…** memandu Anda: Anda menggambar kedua ujungnya, dan semua di antaranya didapat otomatis. Mode Pro menambahkan **Font › Master & Sumbu…**. FontEasy mengekspor font variabel sebagai TrueType. Lihat [Font variabel](/advanced/variable/).

Lihat juga: [Instance](/reference/glossary/#instance), [Designspace](/reference/glossary/#designspace).

### Vertical metrics

**Vertical metrics** (metrics vertikal) adalah nilai-nilai ketinggian untuk seluruh font yang memberi tahu aplikasi seberapa tinggi font itu dan seberapa jauh jarak antarbaris: [ascender](/reference/glossary/#ascender), [descender](/reference/glossary/#descender), [line gap](/reference/glossary/#line-gap), serta ascent dan descent Windows. Karena alasan sejarah, nilai-nilai ini disimpan lebih dari sekali (nilai typo, hhea, dan Windows), itulah sebabnya desainer berpengalaman pun sering bingung. Kalau salah, baris saling menumpuk, atau huruf tinggi dan aksen terpotong di Windows. Di FontEasy, nilainya ada di **Font › Info Font…** bagian **Dimensi** dan **OpenType (kosong = otomatis)**; mengosongkan bagian kedua membuat FontEasy menghitungnya. **Font › Periksa Font…** memeriksanya. Lihat [Info font](/production/font-info/).

Lihat juga: [Leading](/reference/glossary/#leading), [Metrics](/reference/glossary/#metrics).

## W

### Waterfall

**Waterfall** (air terjun) adalah contoh huruf yang menampilkan teks yang sama dalam serangkaian ukuran yang makin besar, satu baris di bawah yang lain, seperti air yang mengalir menuruni anak tangga. Dengan sekali lihat, Anda bisa memeriksa perilaku huruf dari teks mungil sampai judul: ukuran kecil memperlihatkan masalah spasi dan ketebalan, ukuran besar memperlihatkan detail kurva. Spesimen huruf profesional hampir selalu menyertakannya. Di FontEasy, buka panel **Pratinjau** (**Jendela › Panel › Pratinjau**), ketik contoh teks, lalu centang **Waterfall**: teks tampil dalam tujuh ukuran, dari 12 sampai 96. Pratinjau ikut diperbarui saat Anda menyunting glyph. Lihat [Uji dan terbitkan](/production/testing-publishing/).

### Weight

**Weight** (ketebalan) adalah seberapa tebal atau berat goresan sebuah *typeface*, dari Thin dan Light, lewat Regular dan Medium, sampai Bold dan Black. Aplikasi menyatakan ketebalan dengan angka yang disebut *weight class*: 100 untuk Thin, 400 untuk Regular, 700 untuk Bold, 900 untuk Black. Bayangkan beda antara pensil, pulpen, dan spidol. Dalam [variable font](/reference/glossary/#variable-font), ketebalan biasanya menjadi [sumbu](/reference/glossary/#axis) `wght`. Di FontEasy, atur **Weight class** di **Font › Info Font…** bagian **OpenType (kosong = otomatis)**, buat versi lebih tebal atau tipis dengan **Alat › Ubah Glyph…** (**Tebal / Tipis**), atau tambahkan sumbu ketebalan dengan **Font › Jadikan Variabel…**. Lihat [Font variabel](/advanced/variable/).

Lihat juga: [Bold](/reference/glossary/#bold), [Stem](/reference/glossary/#stem).

### Width

**Width** (lebar) punya dua arti dalam dunia font. Sebagai gaya, *width* adalah seberapa sempit atau lebar huruf-huruf sebuah *typeface*, dari Condensed sampai Expanded, yang dicatat sebagai *width class* dan, pada font variabel, sebagai [sumbu](/reference/glossary/#axis) `wdth`. Sebagai ukuran satu glyph, *width* biasanya berarti [advance width](/reference/glossary/#advance-width). Bayangkan beda antara ukuran baju dan panjang satu lengan baju. Di FontEasy, kolom **Lebar** pada bilah opsi editor glyph adalah *advance width*. Untuk gaya, **Alat › Ubah Glyph…** menawarkan **Sempit / Lebar**, yang mempertahankan tebal batang, dan **Font › Jadikan Variabel…** bisa menambahkan sumbu lebar. Lihat [Metrics](/spacing/metrics/) dan [Font variabel](/advanced/variable/).

### WOFF

**WOFF** (*Web Open Font Format*) adalah pembungkus terkompresi untuk font [OpenType](/reference/glossary/#opentype), dibuat khusus untuk situs web. WOFF2 adalah versi yang lebih baru dengan kompresi jauh lebih baik, didukung semua browser masa kini; WOFF biasa hanya diperlukan untuk browser yang sangat lama. Isinya font yang sama, hanya dikemas lebih padat, seperti selimut yang dikemas vakum. Situs web memuatnya lewat aturan CSS `@font-face`. Di FontEasy, pakai **Berkas › Ekspor › Ekspor Font Web…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>E</kbd>) atau centang **WOFF2 (.woff2) — web** dan **WOFF (.woff) — browser lama** di dialog ekspor. **Tulis juga file CSS berisi aturan @font-face** membuatkan CSS-nya. Lihat [Ekspor](/production/export/).

Lihat juga: [Subsetting](/reference/glossary/#subsetting).

## X

### x-height

**x-height** (tinggi-x) adalah tinggi huruf kecil yang tidak punya *ascender* atau *descender*, seperti `x`, `a`, `n`, dan `o`, diukur dari [baseline](/reference/glossary/#baseline). Namanya begitu karena bagian atas dan bawah `x` yang datar memperlihatkannya dengan jelas. *x-height* sangat memengaruhi seberapa besar font terlihat: dua font dengan ukuran poin yang sama bisa tampak sangat berbeda besarnya bila salah satunya punya *x-height* lebih tinggi. *x-height* yang tinggi mudah dibaca di ukuran kecil; yang rendah terlihat anggun dan klasik. Di FontEasy, atur di **Font › Info Font…** bagian **Dimensi** (**Tinggi-x**). **Wizard Font Baru…** menanyakannya, dan editor menampilkannya sebagai garis metrics. Lihat [Dasar-dasar huruf](/start/type-basics/).

Lihat juga: [Cap height](/reference/glossary/#cap-height), [Overshoot](/reference/glossary/#overshoot).
