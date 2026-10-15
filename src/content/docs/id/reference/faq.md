---
title: Tanya Jawab dan Pemecahan Masalah
description: Jawaban atas pertanyaan yang paling sering diajukan pemula, dan apa yang harus dilakukan kalau sesuatu tidak berjalan seperti yang diharapkan.
---

Bab ini mengumpulkan pertanyaan yang paling sering muncul saat orang mulai membuat font dengan FontEasy, dan masalah yang paling sering mereka temui. Setiap jawaban dibuat singkat dan menunjuk ke bab yang membahasnya lengkap.

Anda tidak perlu membaca halaman ini dari atas sampai bawah. Cari topik Anda di daftar bagian, atau tekan <kbd>Ctrl</kbd>+<kbd>F</kbd> di browser atau pembaca PDF Anda lalu cari satu kata dari masalah Anda.

Kalau pertanyaan Anda tidak ada di sini, lihat [Melaporkan bug atau meminta bantuan](#melaporkan-bug-atau-meminta-bantuan) di bagian akhir.

Dalam bab ini Anda akan menemukan jawaban tentang:

- memulai, menggambar, spasi dan kerning, serta fitur OpenType;
- mengekspor dan memasang font, font web, dan lisensi;
- skrip Python, kinerja, lokasi file Anda, dan memulihkan pekerjaan yang hilang;
- cara melaporkan bug.

## Memulai

### Apakah saya harus bisa menggambar atau memprogram untuk memakai FontEasy?

Tidak. Kalau Anda bisa menulis huruf di kertas, Anda bisa membuat font. Anda bahkan bisa menulis di kertas, memindai atau memotret halamannya, lalu membiarkan [Wizard Font Tulisan Tangan](/drawing/handwriting/) mengubahnya menjadi font. Pemrograman hanya diperlukan untuk [scripting](/power/scripting/), dan itu pun pilihan.

### Apakah FontEasy gratis?

Ya. FontEasy adalah perangkat lunak sumber terbuka di bawah Lisensi MIT atau Lisensi Apache 2.0, sesuai pilihan Anda. Anda boleh memakainya untuk pekerjaan pribadi maupun komersial tanpa membayar. Lihat [Lisensi](#lisensi) tentang artinya bagi font yang Anda buat.

### Sebaiknya saya memakai Mode Sederhana atau Mode Pro?

Mulailah di **Mode Sederhana** kalau ini font pertama Anda. Mode ini menampilkan alat-alat penting dan daftar periksa Perjalanan Font, yang menuntun Anda langkah demi langkah dari memberi nama font sampai mengekspornya. Beralihlah ke **Mode Pro** kalau Anda ingin memakai master, profil ekspor, scripting, atau alat gambar tambahan. Font Anda tidak berubah saat berganti mode; yang berubah hanya alat di layar. Pakai tombol **Pro** / **Sederhana** di bilah judul atau <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>M</kbd>. Lihat [Mode Sederhana atau Pro](/power/preferences/#mode-sederhana-atau-pro).

### Huruf apa yang sebaiknya saya gambar lebih dulu?

Mulailah dengan beberapa huruf yang memperlihatkan gagasan utama desain Anda, lalu kembangkan dari situ. Banyak desainer memulai dengan `n`, `o`, `H`, dan `O`: huruf-huruf ini menentukan tebal [stem](/reference/glossary/#stem) (batang huruf), bentuk bulat, dan spasi untuk sisa alfabet. [Bab font pertama](/start/first-font/) menuntun Anda membuat satu font kecil yang utuh.

### Apa beda Simpan dan Ekspor?

**Simpan** (<kbd>Ctrl</kbd>+<kbd>S</kbd>) menyimpan *source* (sumber) Anda: folder UFO yang hanya dipakai editor font, berisi semua yang Anda perlukan untuk terus bekerja. **Ekspor** (<kbd>Ctrl</kbd>+<kbd>E</kbd>) membuat [file font](/reference/glossary/#font-file) jadi (TTF, OTF, WOFF, atau WOFF2) yang bisa dipakai Word, Photoshop, atau halaman web. Selalu simpan source-nya: font hasil ekspor tidak bisa sepenuhnya dikembalikan menjadi source. Lihat [File proyek Anda](/power/preferences/#file-proyek-anda-ufo-dan-designspace) dan [Mengekspor font](/production/export/).

### Bisakah saya membuka font dan file dari program lain?

FontEasy bisa membuka:

- folder UFO dan file `.designspace`, dari FontEasy atau editor font lain yang menulis UFO;
- file aplikasi Glyphs (`.glyphs`, dan folder `.glyphspackage` lewat **Berkas › Buka Folder UFO…**);
- font TTF dan OTF, termasuk font variabel. Font ini diimpor: outline, metrics, kerning, dan banyak substitusi ikut masuk, lalu hasilnya Anda simpan sebagai UFO baru.

FontEasy tidak bisa langsung membuka file FontForge (`.sfd`) atau FontLab (`.vfc`, `.vfj`). Ekspor dulu ke UFO dari program-program itu.

### Bisakah FontEasy dipakai dalam bahasa Indonesia?

Bisa. Pilih **Edit › Preferensi…**, buka **Antarmuka**, atur **Bahasa** ke **Bahasa Indonesia**, lalu klik **OK**. Seluruh antarmuka langsung berganti, tanpa perlu memulai ulang.

## Menggambar

### Bagaimana cara menggambar kurva?

Pilih alat **Pena** (<kbd>P</kbd>). Klik untuk menaruh titik sudut; tekan lalu **seret** untuk menaruh titik dengan handle, yang menghasilkan kurva. Klik lagi titik pertama untuk menutup bentuk. Setelah itu, pakai alat **Node** (<kbd>A</kbd>) untuk menyeret titik dan handle sampai kurvanya tampak pas. Lihat [Outline](/drawing/outlines/) dan [Alat gambar](/drawing/drawing-tools/).

### Lubang di huruf "O" saya terisi hitam. Kenapa?

Kontur bagian dalam berputar searah dengan kontur luar. Supaya menjadi lubang, kontur dalam harus berputar berlawanan arah (lihat [arah kontur](/reference/glossary/#contour-direction)). Pilih **Glyph › Kontur › Perbaiki Arah** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd>) dan FontEasy membetulkan semua kontur glyph itu. Di Ikhtisar, pilih dulu beberapa glyph untuk membetulkan semuanya sekaligus.

### Bentuk-bentuk saya saling bertumpuk. Apakah itu masalah?

Tidak selama Anda masih mendesain. Bentuk yang bertumpuk, seperti dua garis huruf "X", justru mudah diedit. Saat mengekspor, pilihan **Hapus overlap (source Anda tetap utuh)** menggabungkannya hanya di file font. Kalau ingin menggabungkannya di source juga, pakai **Glyph › Kontur › Hapus Tumpang Tindih** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>O</kbd>).

### Apa arti tanda berwarna pada glyph saya?

Tanda itu berasal dari validasi langsung, yang memeriksa outline selagi Anda menggambar: kontur terbuka, arah salah, kontur yang memotong dirinya sendiri, bentuk bertumpuk, titik ekstrem yang hilang, dan lainnya. Panel **Validasi** menampilkan semuanya dengan tombol **Perbaiki** untuk setiap jenis; **Glyph › Perbaiki Masalah** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>X</kbd>) membetulkan glyph yang dipilih sekaligus. Tidak setiap tanda berarti kesalahan: sebagian hanya saran. Lihat [Menemukan dan memperbaiki masalah](/drawing/problems/).

![Huruf "H" dari tiga persegi panjang yang bertumpuk: lingkaran menandai tempat kontur bertumpuk, dan panel Validasi di kanan bawah menampilkan "Kontur bertumpuk" dengan tombol Perbaiki dan Perbaiki Semua.](screen:problems)

### Bisakah saya memasukkan gambar dari Illustrator, Figma, atau Inkscape?

Bisa, dengan tiga cara:

- salin bentuk di program gambar Anda lalu tempel ke glyph dengan <kbd>Ctrl</kbd>+<kbd>V</kbd>;
- **Berkas › Impor › Glyph dari SVG…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>I</kbd>) mengimpor banyak file SVG sekaligus, satu per glyph, dan bisa terus menyinkronkan sebuah folder selagi Anda menggambar;
- **Alat › Jiplak Gambar Otomatis…** mengubah gambar (PNG atau JPG) sebuah huruf menjadi outline.

Lihat [Mengimpor dan menjiplak](/drawing/import-trace/).

### Huruf hasil jiplakan saya punya terlalu banyak titik. Apa yang bisa saya lakukan?

Pilih **Glyph › Kontur › Sederhanakan**. Perintah ini membuang titik sambil mempertahankan bentuk. Di Mode Pro, **Glyph › Kontur › Bersihkan Titik** juga membuang titik ganda dan titik yang tidak perlu. Titik yang lebih sedikit membuat kurva lebih mulus dan font lebih kecil.

### Bagaimana membuat huruf beraksen tanpa menggambarnya satu per satu?

Gambar huruf dasarnya (`a`, `e`, …) dan aksennya (`acutecomb`, `dieresiscomb`, …), lalu pakai **Glyph › Buat Komposit…**. FontEasy menyusun huruf seperti `aacute` dari [komponen](/reference/glossary/#component) dan menempatkan aksennya dengan [anchor](/reference/glossary/#anchor). Kalau nanti Anda mengubah `a`, setiap `a` beraksen ikut berubah. Lihat [Komponen dan aksen](/drawing/components/).

### Saya salah langkah. Sejauh mana saya bisa membatalkan?

**Edit › Batalkan** (<kbd>Ctrl</kbd>+<kbd>Z</kbd>) membatalkan satu langkah setiap kali, dan panel **Riwayat** menampilkan langkah-langkahnya sehingga Anda bisa melompat mundur beberapa langkah sekaligus. Setiap font yang terbuka punya riwayatnya sendiri. **Berkas › Kembalikan** mengembalikan font ke versi terakhir yang disimpan.

## Spasi dan kerning

### Apa beda spasi dan kerning?

[Spasi](/reference/glossary/#spacing) adalah ruang yang dibawa setiap huruf di kiri dan kanannya, yaitu [sidebearing](/reference/glossary/#sidebearing)-nya. Spasi berlaku di mana pun huruf itu muncul. [Kerning](/reference/glossary/#kerning) adalah koreksi untuk satu pasangan tertentu, seperti "AV", yang tanpa koreksi akan tampak terlalu renggang. Selalu atur spasi lebih dulu, lalu kern hanya pasangan yang masih tampak janggal. Lihat [Spasi](/spacing/metrics/) dan [Kerning](/spacing/kerning/).

### Teks saya tampak tidak rata. Mulai dari mana?

Buka **Metrics › Jendela Metrics** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>1</kbd>) dan ketik kata uji seperti `nnonnoo` dan `HHOHHOO`. Atur `n`, `o`, `H`, dan `O` lebih dulu; huruf lain mengikutinya. **Metrics › Spasi Otomatis…** memberi versi pertama yang bagus, yang kemudian bisa Anda perhalus dengan mata.

### Bisakah FontEasy mengatur kerning font saya secara otomatis?

Bisa: **Kerning › Kerning Otomatis…** mengukur outline Anda dan menyarankan pasangan. Hasilnya awal yang sangat baik, tetapi selalu periksa di kata-kata sungguhan dan perbaiki yang tidak Anda sukai. Lalu jalankan **Kerning › Audit Kerning** (Mode Pro) untuk menemukan pasangan yang membuat huruf bertabrakan.

### Kerning berlaku untuk "A" tetapi tidak untuk "Á". Kenapa?

Pasangan kerning dibuat untuk glyph tertentu. Supaya berlaku juga untuk bentuk beraksennya, masukkan huruf-huruf itu ke [grup kerning](/reference/glossary/#kerning-group) lalu atur kerning grupnya. **Kerning › Grup Otomatis dari Komposit** membuatkan grup itu dari huruf-huruf beraksen Anda.

### Kerning tampak di FontEasy tetapi tidak di Microsoft Word.

Word tidak menerapkan kerning kalau tidak diminta. Di Word, pilih teksnya, buka dialog **Font**, masuk ke **Advanced** (Lanjutan), lalu centang **Kerning for fonts** (Kerning untuk font). Kebanyakan program desain dan browser web menerapkan kerning secara otomatis.

## Fitur OpenType

### Ligatur (atau small caps, atau alternate) saya tidak berfungsi.

FontEasy membuat [fitur OpenType](/reference/glossary/#opentype-feature) dari nama glyph, jadi namanya harus mengikuti aturan: `f_i` untuk [ligatur](/reference/glossary/#ligature) fi, `a.sc` untuk small cap, `a.ss01` untuk stylistic set 1, `one.osf` untuk angka gaya lama. Periksa namanya, lalu pilih **Fitur › Perbarui Fitur Otomatis**. Di panel Pratinjau, nyalakan fiturnya dengan tombolnya (`liga`, `smcp`, `ss01`, …) untuk mengujinya. Lihat [Fitur OpenType](/opentype/features/).

### Fiturnya berfungsi di FontEasy tetapi tidak di Word.

Banyak program membiarkan sebagian fitur mati sampai Anda menyalakannya. Di Word, buka dialog **Font**, masuk ke tab **Advanced** (Lanjutan), lalu lihat bagian **OpenType Features**: di sana Anda memilih **Ligatures** (Ligatur) dan **Stylistic sets**. Small caps dan fitur lain bergantung pada programnya; browser dan program desain seperti InDesign memberi kendali penuh.

### Editor fitur menampilkan error.

Kode fitur adalah bahasa pemrograman kecil, dan satu salah ketik bisa membuat seluruh font gagal dibuat. Editor menandai baris yang salah dan menjelaskannya. Perbaiki baris itu, atau batalkan perubahannya. Kalau Anda hanya memakai fitur otomatis, **Fitur › Perbarui Fitur Otomatis** menuliskannya ulang untuk Anda. Selama masalahnya masih ada, panel Pratinjau menampilkan **Kompilasi gagal — menampilkan outline tanpa shaping**.

## Mengekspor dan memasang font

### Format apa yang sebaiknya saya ekspor?

| Anda ingin… | Ekspor |
|---|---|
| memakai font di Word, Photoshop, dan program sejenis | TTF (atau OTF) |
| mencetak secara profesional | OTF |
| memakainya di situs web | WOFF2 (dan WOFF untuk browser yang sangat lama) |
| menerbitkannya di Google Fonts | profil ekspor Google Fonts (Pro) |

Kalau ragu, TTF bisa dipakai di mana saja. Lihat [Mengekspor font](/production/export/).

![Dialog Ekspor Font: kotak centang format, pilihan CSS, Hapus overlap, hinting ttfautohint, folder, dan nama file.](screen:export)

### Ke mana font hasil ekspor saya?

Ke **Folder** yang tertera di dialog Ekspor. Kalau tidak Anda ubah, itu adalah folder `fonts` di samping font yang Anda simpan (`webfonts` untuk font web), atau `Documents\FontEasy` kalau font belum pernah disimpan.

### Bagaimana cara memasang font saya di Windows?

1. Cari file `.ttf` atau `.otf` hasil ekspor di File Explorer.
2. Klik kanan lalu pilih **Install** (hanya untuk Anda) atau **Install for all users** (perlu hak administrator). Anda juga bisa mengeklik ganda file-nya lalu mengeklik **Install**.
3. Tutup lalu buka lagi program tempat Anda ingin memakai font itu.

### Font saya tidak muncul di Word.

Periksa hal-hal ini berurutan:

1. **Sudah dipasang?** Mengekspor tidak sama dengan memasang. Pasang file-nya seperti dijelaskan di atas.
2. **Mulai ulang Word.** Program membaca daftar font saat dibuka; font yang dipasang selagi Word terbuka sering baru muncul setelah Word dibuka ulang.
3. **Cari nama yang tepat.** Word mencantumkan font dengan nama keluarga dari **Font › Info Font…**. Regular, Italic, Bold, dan Bold Italic tampil sebagai satu keluarga; gaya lain (Light, Medium, SemiBold…) tampil sebagai entri sendiri, misalnya "Nusantara Sans Medium".
4. **Jalankan Font › Periksa Font…** (<kbd>F7</kbd>) dan perbaiki temuan di bagian nama dan kredit.

Kalau Anda hanya ingin mencoba font-nya, **Berkas › Pasang Font untuk Uji** (<kbd>Ctrl</kbd>+<kbd>F5</kbd>) memasang salinan untuk akun Anda dengan tambahan "Test" pada nama keluarganya, misalnya "Nusantara Sans Test". Program yang Anda buka setelahnya bisa memakainya. **Berkas › Hapus Font Uji** menghapus semua salinan uji itu lagi.

### Sebagian huruf tampil dengan font lain.

Program tidak menemukan karakter itu di font Anda, jadi ia meminjamnya dari font lain. Mungkin glyph-nya belum ada, atau tidak punya nilai [Unicode](/reference/glossary/#unicode), sehingga program tidak tahu bahwa glyph itu, misalnya, "é". Periksa Unicode glyph di panel **Info Glyph**; kategori **Tanpa Unicode** di Ikhtisar menampilkan glyph yang belum punya Unicode.

### Saya memasang versi baru, tetapi Windows masih menampilkan yang lama.

Windows dan sebagian program menyimpan font dalam *cache* (simpanan sementara). Untuk mengganti font dengan bersih:

1. Tutup semua program yang memakai font itu.
2. Buka **Settings › Personalization › Fonts** (Pengaturan › Personalisasi › Font), cari font Anda, lalu hapus (*uninstall*).
3. Pasang versi barunya.
4. Buka lagi program-program Anda. Kalau bentuk lama masih muncul, mulai ulang Windows.

Selama masih mendesain, hindari siklus ini: pakai **Berkas › Uji Font di Browser** (<kbd>F5</kbd>), yang membuat salinan baru untuk halaman uji setiap kali, atau **Pasang Font untuk Uji**, yang nama keluarga "Test"-nya tidak pernah bentrok dengan font aslinya. Menaikkan nomor versi di **Font › Info Font…** setiap kali merilis juga membantu Anda mengenali versi mana yang sedang dilihat.

### Windows SmartScreen memberi peringatan saat saya menjalankan installer FontEasy.

Saat Anda mengunduh program yang belum dikenal Windows, Microsoft Defender SmartScreen bisa menampilkan "Windows protected your PC". Kalau Anda mengunduh FontEasy dari halaman GitHub resminya (https://github.com/s4rt4/fonteasy-guide), klik **More info** lalu **Run anyway**. Installer memasang FontEasy hanya untuk akun Anda dan tidak memerlukan hak administrator. Kalau Anda mengunduhnya dari tempat lain, jangan jalankan. Lihat [Memasang FontEasy](/start/install/).

### Ekspor mengatakan ada yang gagal.

Jalankan **Font › Periksa Font…** (<kbd>F7</kbd>). Pemeriksaan ini mengecek nama, metrics, set glyph, outline, kerning, dan kode fitur, serta mencoba membuat font-nya, jadi biasanya penyebabnya ketemu. Setiap temuan membuka hal yang dibicarakannya, dan banyak yang punya tombol **Perbaiki**. Masalah di kode fitur adalah penyebab paling umum; lihat [editor fitur menampilkan error](#editor-fitur-menampilkan-error). Lihat juga [Memeriksa font](/production/quality/).

### Apa itu pilihan "Hapus overlap", dan sebaiknya dibiarkan menyala?

Biarkan menyala. Pilihan ini menggabungkan bentuk yang bertumpuk di file hasil ekspor, yang dibutuhkan sebagian program dan printer, sementara source Anda tetap menyimpannya terpisah supaya mudah diedit.

## Font web

### Bagaimana memakai font saya di situs web?

Pilih **Berkas › Ekspor › Ekspor Font Web…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>E</kbd>). Dialog ini sudah disiapkan untuk web: WOFF2 dan WOFF, ditambah file CSS berisi aturan `@font-face`. Unggah file font dan file CSS ke situs Anda, tautkan CSS-nya dari halaman, lalu pakai nama keluarganya di *style* Anda. Lihat [Menguji dan menerbitkan](/production/testing-publishing/).

### File font web saya besar. Bagaimana memperkecilnya?

Pakai WOFF2, yang sudah dikompresi. Di Mode Pro, profil ekspor **Web** (**Berkas › Ekspor › Profil Ekspor…**) juga membuat *subset* Latin: glyph yang tidak dibutuhkan situs web Latin biasa ditinggalkan. Lihat [subsetting](/reference/glossary/#subsetting).

### Saya sudah mengunggah versi baru, tetapi browser masih menampilkan font lama.

Browser menyimpan font yang diunduh di cache-nya. Muat ulang halaman dengan <kbd>Ctrl</kbd>+<kbd>F5</kbd> di browser, atau beri file baru nama baru (misalnya dengan nomor versi) dan perbarui CSS-nya.

## Lisensi

### Siapa pemilik font yang saya buat dengan FontEasy?

Anda. Lisensi FontEasy berlaku untuk programnya, bukan untuk apa yang Anda buat dengannya. Anda boleh membagikan font Anda secara gratis, menjualnya, atau memakainya untuk pekerjaan komersial.

### Bagaimana memilih lisensi untuk font saya?

Tentukan apa yang boleh dilakukan orang lain: hanya memakainya, atau juga mengubah dan membagikannya. Banyak font gratis memakai SIL Open Font License (OFL); font komersial biasanya memakai lisensi penjualnya sendiri. Tulis lisensi dan alamat webnya di **Font › Info Font…** (kolom lisensi), supaya ikut terbawa di dalam file font. **Periksa Font** mengingatkan Anda kalau kolom itu masih kosong. Lihat [Info font](/production/font-info/) dan entri glosarium [lisensi font](/reference/glossary/#font-license).

### Bolehkah saya membuka font yang saya beli, atau font Windows, lalu mengubahnya?

FontEasy bisa membuka kebanyakan font TTF dan OTF, tetapi *boleh* atau tidaknya Anda mengubah font ditentukan oleh lisensinya, bukan oleh FontEasy. Font bawaan Windows dan kebanyakan font yang dibeli tidak boleh diubah atau dibagikan dalam bentuk yang sudah diubah. Font berlisensi Open Font License boleh diubah, tetapi ada aturan soal namanya. Baca lisensinya lebih dulu.

## Python dan scripting

### Apakah saya perlu memasang Python?

Tidak. Unduhan untuk Windows sudah membawa Python 3.14 beserta fontTools, yang hanya dipakai saat Anda menjalankan skrip atau plugin. FontEasy sendiri bekerja tanpa Python. Lihat [Python yang menjalankan skrip Anda](/power/scripting/#python-yang-menjalankan-skrip-anda).

### Muncul pesan "Python tidak ditemukan".

FontEasy tidak menemukan Python bawaannya, biasanya karena `FontEasy.exe` disalin ke tempat lain tanpa folder `python` di sampingnya. Pasang ulang FontEasy, atau ekstrak ulang seluruh isi unduhan. Anda juga bisa memasang Python dari python.org lalu memilih `python.exe`-nya di **Edit › Preferensi… › Umum › Scripting**.

### Skrip saya berhenti dengan error merah.

Baca baris terakhir teks merah itu: di sana tertulis jenis error dan alasannya. Baris yang salah digarisbawahi di editor; klik baris merah di keluaran untuk melompat ke sana. Penyebab paling umum adalah font atau glyph yang tidak ada (`None` atau `KeyError`) dan kesalahan indentasi. Bab scripting punya [tabel error yang umum](/power/scripting/#jika-terjadi-masalah). Apa pun yang sudah dikerjakan skrip sebelum gagal adalah satu langkah undo: tekan <kbd>Ctrl</kbd>+<kbd>Z</kbd>.

### Sebuah skrip seperti macet.

Klik tombol kotak (**Hentikan skrip**) di panel Scripting. FontEasy langsung mengakhiri program Python; perubahan yang sudah terjadi bisa dibatalkan dalam satu langkah.

### Saya sudah memasang paket dengan pip, tetapi skrip saya tidak bisa mengimpornya.

Python bawaan punya paketnya sendiri dan tidak punya `pip`. Pasang Python dari python.org, pasang paket Anda dan `fonttools` ke dalamnya, lalu pilih `python.exe`-nya di **Edit › Preferensi… › Umum › Scripting**. Lihat [Memakai Python lain](/power/scripting/#memakai-python-lain).

### Sebuah plugin tidak muncul di menu.

Buka **Alat › Plugin…** lalu klik **Muat Ulang**. Pastikan kotak centang plugin itu tercentang, dan cari pesan merah tentang `plugin.json`-nya di bawah daftar. Folder plugin harus berada langsung di dalam `%APPDATA%\FontEasy\plugins`, dan `plugin.json`-nya harus berupa JSON yang valid. Perintah plugin berwarna abu-abu kalau tidak ada font yang terbuka atau skrip lain sedang berjalan.

## Kinerja

### FontEasy terasa lambat dengan font saya yang besar.

Beberapa hal bisa membantu:

- Panel Pratinjau membuat ulang font di latar belakang tidak lama setelah setiap perubahan ("Mengompilasi…"). Dengan ribuan glyph, ini makan waktu lebih lama; proses ini tidak pernah menghalangi Anda menggambar, tetapi Anda bisa menyembunyikan panel bawah dengan <kbd>Tab</kbd> selama menggambar.
- Tutup font yang sedang tidak Anda kerjakan.
- Perkecil sel glyph di Ikhtisar (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>-</kbd>) supaya lebih sedikit glyph yang digambar sekaligus.
- **Periksa Font** dan ekspor berjalan di latar belakang; Anda bisa terus bekerja selama keduanya berjalan.

### Skrip saya lambat.

Setiap kali skrip membaca atau mengubah sesuatu, ia mengirim permintaan ke FontEasy (penghitung di samping ikon berputar menunjukkan jumlahnya). Menelusuri `for g in f` dan membaca `g.name`, `g.width`, serta `g.unicodes` itu murah, karena semuanya datang dalam satu permintaan. Membaca kontur setiap glyph butuh satu permintaan per glyph. Baca hanya yang Anda perlukan, dan hindari membaca glyph yang sama berulang-ulang di dalam perulangan.

## Lokasi file

### Di mana font-font saya?

Di mana pun Anda menyimpannya: **Berkas › Simpan Sebagai…** menunjukkan foldernya. Font terbaru tercantum di **Berkas › Buka Terbaru** dan di layar Beranda. Font yang disimpan berupa folder berakhiran `.ufo` (atau file `.designspace` dengan folder UFO di sampingnya).

### Di mana pengaturan, plugin, dan salinan pemulihan FontEasy?

Di `%APPDATA%\FontEasy`. Tekan <kbd>Win</kbd>+<kbd>R</kbd>, ketik `%APPDATA%\FontEasy`, lalu tekan <kbd>Enter</kbd>. Lihat [Tempat FontEasy menyimpan pengaturan](/power/preferences/#tempat-fonteasy-menyimpan-pengaturan).

### Di mana FontEasy sendiri terpasang?

Installer memasangnya di `%LOCALAPPDATA%\Programs\FontEasy`. Versi zip berjalan dari mana pun Anda mengekstraknya. Font yang dipasang dengan **Pasang Font untuk Uji** masuk ke folder font pribadi Windows Anda, dan halaman uji dari **Uji Font di Browser** masuk ke folder `FontEasy-test` di folder Temp Anda.

## Memulihkan pekerjaan

### FontEasy crash. Apakah pekerjaan saya hilang?

Kemungkinan besar tidak. Buka FontEasy lagi. Kalau ada font dengan perubahan yang belum disimpan, jendela **Pulihkan Font yang Belum Disimpan** muncul; klik **Pulihkan**, periksa font-nya, lalu segera simpan. Paling banyak Anda kehilangan perubahan sejak simpan otomatis terakhir (setiap 5 menit kalau tidak Anda ubah). Lihat [Simpan otomatis dan pemulihan setelah crash](/power/preferences/#simpan-otomatis-dan-pemulihan-setelah-crash).

### Saya tidak sengaja mengeklik "Jangan Simpan".

Saat Anda menutup font dengan **Jangan Simpan**, FontEasy juga menghapus salinan pemulihannya, jadi perubahan yang belum disimpan memang hilang. Apa yang sudah Anda simpan sebelumnya tetap aman di disk. Seringlah menyimpan dengan <kbd>Ctrl</kbd>+<kbd>S</kbd>, dan buat salinan cadangan folder `.ufo` Anda (misalnya di-zip dengan tanggal di namanya) pada saat-saat penting.

### Saya menyimpan sesuatu yang tidak saya inginkan.

Kalau font masih terbuka, pakai **Edit › Batalkan** atau panel **Riwayat** untuk mundur, lalu simpan lagi. Begitu font ditutup, riwayat undo-nya hilang, jadi pulihkan folder `.ufo` Anda dari cadangan.

## Melaporkan bug atau meminta bantuan

### Bagaimana cara melaporkan bug?

Buat *issue* di GitHub: https://github.com/s4rt4/fonteasy-guide/issues. Laporan yang baik membantu masalah cepat diperbaiki:

1. **Versi FontEasy.** Tertera di kanan bawah jendela ("FontEasy 1.5.0") dan di **Bantuan › Tentang FontEasy**.
2. **Apa yang Anda lakukan**, langkah demi langkah, supaya orang lain bisa mengulanginya.
3. **Apa yang Anda harapkan**, dan **apa yang terjadi**.
4. **Tangkapan layar**, dan teks lengkap pesan error kalau ada.
5. Kalau masalahnya terkait font tertentu dan Anda boleh membagikannya, lampirkan folder `.ufo` sebagai zip. Untuk skrip, sertakan skripnya dan teks merah dari keluaran.

Laporan boleh ditulis dalam bahasa Inggris supaya bisa dibaca lebih banyak orang. Periksa dulu apakah sudah ada yang melaporkan masalah yang sama; kalau sudah, tambahkan detail Anda di sana.

### Di mana saya bisa mendapat bantuan lain?

**Bantuan › Bantuan FontEasy** (<kbd>F1</kbd>) membuka halaman FontEasy di GitHub. **Bantuan › Tur** menampilkan lagi tur singkat terpandu. [Glosarium](/reference/glossary/) menjelaskan setiap istilah font yang dipakai di panduan ini.

## Ringkasan

- Simpan menyimpan source UFO Anda; Ekspor membuat file TTF, OTF, WOFF, atau WOFF2 untuk program lain.
- Kebanyakan masalah gambar diatasi dengan **Perbaiki Arah**, **Hapus Tumpang Tindih**, **Perbaiki Masalah**, dan panel **Validasi**.
- Spasi dulu, kerning kemudian; pakai grup kerning untuk huruf beraksen.
- Masalah fitur biasanya berasal dari nama glyph; periksa namanya lalu **Perbarui Fitur Otomatis**.
- Setelah memasang font, buka ulang programnya; ganti versi lama dengan bersih, dan uji dengan **Uji Font di Browser** atau **Pasang Font untuk Uji**.
- Simpan otomatis dan **Pulihkan** melindungi Anda dari crash, tetapi tidak dari **Jangan Simpan**.
- Laporkan bug di https://github.com/s4rt4/fonteasy-guide/issues dengan versi, langkah-langkah, dan tangkapan layar.

## Coba sendiri

1. Cari tahu letak folder pengaturan Anda: tekan <kbd>Win</kbd>+<kbd>R</kbd>, ketik `%APPDATA%\FontEasy`, lalu lihat isinya. File dan folder mana dari [bab preferensi](/power/preferences/#tempat-fonteasy-menyimpan-pengaturan) yang Anda temukan?
2. Ekspor font Anda sebagai TTF, pasang, lalu ketik satu kalimat dengannya di Word atau program lain. Kalau ada yang tampak janggal, pakai halaman ini untuk mencari tahu sebabnya.
