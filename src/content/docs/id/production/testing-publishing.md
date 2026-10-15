---
title: Uji dan terbitkan
description: Coba font Anda di pratinjau, di browser, dan di aplikasi sungguhan, lalu pilih lisensi dan nama, terbitkan, rapikan versinya, dan amankan source-nya.
---

Font Anda sudah digambar, diperiksa, dan diekspor. Kini saatnya pembuktian: apakah font itu berfungsi di tempat orang akan memakainya? Font yang tampak sempurna di FontEasy masih bisa mengejutkan Anda di Word, di browser, atau di ponsel. Menguji di aplikasi sungguhan menangkap kejutan itu sebelum pemakai Anda menemukannya.

Sesudah pengujian datang penerbitan: menentukan bagaimana orang lain boleh memakai font Anda (lisensinya), memberinya nama yang benar-benar milik Anda, membagikan atau menjualnya, lalu merilis versi yang lebih baik. Di balik semua itu ada satu kebiasaan sederhana yang melindungi kerja berbulan-bulan: menyimpan dan mencadangkan source Anda.

Bab ini membahas seluruh tahap terakhir itu.

![Siklus rilis: desain, periksa, uji, ekspor, terbitkan, dengarkan masukan, lalu naikkan versi dan putar lagi.](diagram:testing-publishing-cycle)

Dalam bab ini Anda akan mempelajari:

- cara menguji dengan panel **Pratinjau** dan *waterfall*-nya;
- bagaimana **Uji Font di Browser** (<kbd>F5</kbd>) membuat halaman uji;
- cara memasang salinan uji di Windows (<kbd>Ctrl</kbd>+<kbd>F5</kbd>), menghapusnya lagi, dan mengatasi *cache* font;
- apa yang perlu diperhatikan di Word, aplikasi desain, browser, dan dalam banyak bahasa;
- bagaimana orang memasang font di Windows dan macOS;
- cara memilih lisensi, dan font mana yang tidak boleh Anda salin;
- cara memilih nama yang bukan milik orang lain;
- cara menerbitkan di GitHub, mengirim ke Google Fonts, atau menjual font, serta membuat *specimen*;
- cara memberi nomor versi dan merilis pembaruan;
- cara menyimpan source, membuat cadangan, dan memulihkan pekerjaan setelah *crash*.

## Menguji di dalam FontEasy: panel Pratinjau

Pengujian tercepat selalu tersedia. Panel **Pratinjau**, di dock bawah (atau **Jendela › Panel › Pratinjau**), menyusun teks dengan font Anda seperti yang akan tampil di aplikasi. FontEasy mengompilasi font Anda di latar sesaat setelah setiap perubahan (sekilas mungkin terlihat **Mengompilasi…**), lalu membentuk teksnya dengan HarfRust, mesin *[shaping](/reference/glossary/#shaping)* (penyusunan glyph) sejenis yang dipakai browser dan aplikasi. Jadi kerning, ligatur, dan aksen tampil persis seperti setelah ekspor.

![Panel Pratinjau menampilkan “HAVANA LIVES” dalam Mutator Sans ukuran 64 poin, dengan fitur kern aktif.](screen:preview)

Yang bisa Anda lakukan di panel ini:

- Ketik teks sendiri di kolom teks (**Ketik contoh teks**).
- Ubah ukuran dengan *slider* atau kolom angka di sebelahnya.
- Nyalakan dan matikan fitur dengan tombol-tombol di bawah kolom teks (lihat [Fitur OpenType](/opentype/features/)).
- Centang **Glyph** untuk menampilkan nama glyph hasil shaping teks. Dari situ Anda tahu apakah ligatur, *small caps*, dan bentuk lokal benar-benar terpasang.
- Pilih bahasa di menu bahasa (awalnya **Bahasa bawaan**; menu ini muncul bila fitur Anda menyebut bahasa) untuk menguji bentuk lokal.
- Untuk variable font, geser *slider* sumbu di atas teks.

Jika kompilasi gagal, panel menampilkan **Kompilasi gagal — menampilkan outline tanpa shaping**; jalankan **Font › Periksa Font…** untuk mencari tahu sebabnya.

### Waterfall

Centang **Waterfall** untuk menampilkan teks dalam beberapa ukuran sekaligus: 12, 16, 24, 32, 48, 72, dan 96. *[Waterfall](/reference/glossary/#waterfall)* (deretan ukuran bertingkat) dengan cepat menunjukkan apakah font masih enak dibaca dalam ukuran kecil, dan apakah detail yang bagus di 96 menjadi kikuk atau hilang di 12.

![Panel Pratinjau dalam mode waterfall: “Hamburgefonstiv” dalam Source Serif 4 ukuran 12, 16, dan 24 poin, dengan tombol fitur di atasnya.](screen:g-waterfall)

:::tip[Kata uji yang bagus]
Desainer suka "Hamburgefonstiv": kata ini memuat sebagian besar bentuk dasar huruf kecil. Coba juga "nnonnoonoo" dan "HHOHHOOHOO" untuk spasi, "AVATAR", "Tokyo", "We'll" untuk kerning, serta kalimat sungguhan dalam bahasa yang ingin Anda dukung.
:::

## Uji di browser (F5)

Pratinjau menampilkan font Anda di dalam FontEasy. Untuk melihatnya di browser sungguhan, pakai halaman uji.

1. Pilih **Berkas › Uji Font di Browser** (<kbd>F5</kbd>).
2. FontEasy membuat font Anda (sekilas muncul **Membuat halaman uji…**) lalu membuka sebuah halaman di browser bawaan Anda.

Halaman itu berisi:

- satu baris teks besar 64 piksel yang bisa diedit, diawali contoh teks dari panel Pratinjau; klik dan ketik apa saja;
- kotak centang untuk setiap [fitur OpenType](/reference/glossary/#opentype-feature) di font Anda, sehingga Anda bisa menyalakan dan mematikan fitur seperti di aplikasi; fitur yang biasanya aktif di aplikasi sudah tercentang;
- waterfall dari teks yang sama pada 12, 16, 20, 24, 32, 48, 64, dan 96 piksel;
- satu paragraf kalimat uji, berisi pangram, angka, tanda baca, dan kata "Jakarta, Bandung & Yogyakarta".

Halaman ini mengikuti setelan terang atau gelap sistem Anda, jadi Anda juga bisa melihat tampilan font sebagai teks terang di latar gelap.

Tidak ada yang dipasang: font hanya dimuat oleh halaman ini. Halaman dan salinan WOFF2 font ditulis ke folder bernama `FontEasy-test` di folder sementara Windows. Setiap pengujian memakai nama file baru dengan cap waktu, sehingga browser tidak pernah menampilkan salinan lama dari cache-nya: tekan <kbd>F5</kbd> lagi di FontEasy setiap kali ada perubahan.

Untuk memeriksa browser lain, salin alamat halaman dari bilah alamat dan tempelkan di Edge, Chrome, atau Firefox. Browser di Windows dan macOS menggambar teks dengan cara berbeda, jadi bila bisa, lihat juga halamannya di Mac atau ponsel.

Di Mode Sederhana, langkah **Uji dan ekspor** di Perjalanan Font punya tombol **Uji (F5)**.

## Memasang salinan uji di Windows (Ctrl+F5)

Ada hal yang hanya bisa diuji di aplikasi desktop: tampilan font di Word, apakah jarak barisnya pas, apakah tombol **B** dan **I** menemukan Bold dan Italic Anda. Untuk itu font harus dipasang. FontEasy bisa memasang *salinan uji* untuk Anda.

1. Pilih **Berkas › Pasang Font untuk Uji** (<kbd>Ctrl</kbd>+<kbd>F5</kbd>).
2. Tunggu pesan **Font uji terpasang**.
3. Jalankan aplikasi tempat Anda ingin menguji (atau jalankan ulang bila sudah terbuka).
4. Di menu fontnya, cari nama keluarga Anda yang diikuti "Test", misalnya **Nusantara Sans Test**.

Salinan uji hanya dipasang untuk akun Windows Anda, jadi tidak perlu hak administrator. Nama keluarga dan nama PostScript-nya sengaja diberi tambahan "Test": dengan begitu ia tidak pernah bentrok dengan salinan "asli" font yang sama yang Anda atau pemakai Anda pasang dengan cara biasa.

Setiap kali font berubah, tekan <kbd>Ctrl</kbd>+<kbd>F5</kbd> lagi. Salinan baru menggantikan yang lama; jalankan ulang aplikasi untuk melihatnya. Jika Windows menolak karena file font sedang dipakai, tutup aplikasi yang memakai font uji itu lalu coba lagi.

Untuk menghapus salinan uji, pilih **Berkas › Hapus Font Uji**. Perintah ini menghapus semua font uji yang dipasang FontEasy, dan bilah status menyebut jumlahnya (**2 font uji dihapus**). Font yang Anda pasang sendiri tidak disentuh.

:::note
Salinan uji dibuat tanpa hinting, jadi teks yang sangat kecil di Windows mungkin tampak sedikit lebih lembut daripada hasil ekspor final yang ber-hinting. Pemasangan uji hanya tersedia di Windows.
:::

### Cache font: "Font sudah saya ubah, tapi tidak ada yang berubah"

Komputer mencatat font yang terpasang dalam daftar yang disebut *cache*, dan kebanyakan aplikasi membaca daftar font sekali saja, saat mulai berjalan. Karena itu:

- **Jalankan ulang aplikasinya** setelah memasang versi baru. Untuk Microsoft Office, tutup semua aplikasi Office, bukan hanya dokumennya.
- **Jangan menyimpan dua salinan dengan nama sama.** Jika sebelumnya Anda memasang font dengan cara biasa dan kini memasang versi baru, copot dulu yang lama. Dua font bernama sama membingungkan aplikasi; itulah alasan FontEasy menamai salinan ujinya "… Test".
- **Browser menyimpan font web di cache.** Di situs Anda sendiri, setelah mengunggah versi baru, muat ulang dengan *hard reload* browser, atau beri file nama baru (misalnya dengan nomor versi) agar pengunjung mendapat yang terbaru.
- Jika font masih berperilaku aneh, menyalakan ulang komputer membersihkan sebagian besar cache.

## Menguji di aplikasi sungguhan

Setelah salinan uji terpasang, luangkan waktu memakainya di aplikasi yang akan dipakai pemakai Anda. Inilah yang perlu diperhatikan.

**Word dan aplikasi perkantoran lain:**

- Ketik beberapa paragraf, termasuk huruf kapital beraksen (`Á`, `Ê`, `Ö`) dan huruf ber-descender. Adakah puncak atau dasar huruf yang terpotong? Jika ya, lihat [Info Font](/production/font-info/#mengapa-huruf-terpotong).
- Apakah spasi baris tunggal nyaman? Terlalu rapat, terlalu renggang?
- Pilih teks lalu klik **B** dan **I**. Apakah Word berpindah ke Bold dan Italic Anda yang sebenarnya, atau memalsukannya dengan menebalkan dan memiringkan Regular? Gaya palsu berarti nama gaya atau penautan gaya perlu dibereskan; lihat [Info Font](/production/font-info/#cara-aplikasi-mengelompokkan-gaya).
- Lihat ukuran kecil (8–10 poin) dan cetak satu halaman.

**Aplikasi desain (Illustrator, Photoshop, Inkscape, Affinity …):**

- Buka panel OpenType atau Glyphs di aplikasi itu dan coba fitur Anda: ligatur, *alternate*, small caps, angka.
- Susun judul besar dan periksa kerning antarhuruf kapital.
- Pastikan seluruh keluarga tampil bersama, berurutan dari tipis ke tebal (urutan itu berasal dari [weight class](/production/font-info/#weight-class)).

**Browser:** pakai halaman uji (<kbd>F5</kbd>), lalu file WOFF2 hasil ekspor beserta CSS-nya di halaman sungguhan.

### Menguji banyak bahasa

Jika font Anda mendukung lebih dari satu bahasa, uji setiap bahasa dengan kata dan kalimat sungguhan, bukan sekadar alfabet. Bila bisa, mintalah penutur asli membacanya.

- Daftar **Set Glyph** di samping Ikhtisar menunjukkan seberapa banyak tiap set sudah Anda gambar, misalnya "Latin Lanjutan-A 122/128". Pakai **Font › Tambah Glyph…** untuk menambah karakter yang dibutuhkan sebuah bahasa (lihat [Set glyph](/drawing/glyph-set/)).
- Ketik kalimat contoh di Pratinjau: bahasa Indonesia ("Bahasa Indonesia mudah dipelajari"), Vietnam dengan aksen bertumpuk ("Tiếng Việt"), Polandia ("Zażółć gęślą jaźń"), Turki dengan ı tanpa titik dan İ bertitik.
- Jika kode fitur Anda punya bentuk khusus bahasa (`locl`), pilih bahasanya di menu bahasa Pratinjau dan pastikan bentuk yang benar muncul. Centang **Glyph** untuk melihat namanya.
- Aksen bertumpuk itu tinggi: periksa apakah terpotong di Windows dengan salinan uji.

## Memasang font: bantuan untuk pemakai

Orang yang mengunduh font Anda akan bertanya cara memasangnya. Berikut cara yang biasa, yang bisa Anda salin ke README atau halaman toko Anda.

**Windows 10 dan 11:**

1. Ekstrak unduhan bila berupa file `.zip`.
2. Klik kanan file `.otf` atau `.ttf` lalu pilih **Install** (untuk akun Anda) atau **Install for all users** (perlu hak administrator). Atau klik dua kali file itu lalu klik **Install**.
3. Jalankan ulang aplikasi yang sedang terbuka.

Untuk mencopot font: buka **Settings › Personalization › Fonts**, klik fontnya, lalu pilih **Uninstall**. (Pada Windows berbahasa Indonesia, nama menunya ikut diterjemahkan.)

**macOS:**

1. Klik dua kali file `.otf` atau `.ttf`. **Font Book** terbuka dan menampilkan pratinjau.
2. Klik **Install**.

Untuk mencopotnya, buka Font Book, pilih fontnya, lalu hapus.

Sarankan pemakai memasang versi OTF atau TTF saja, bukan keduanya, dan mencopot versi lama sebelum memasang yang baru.

## Melisensikan font Anda

Font adalah perangkat lunak, dan seperti perangkat lunak lain ia datang dengan [lisensi](/reference/glossary/#font-license): teks hukum singkat yang menyatakan apa yang boleh dilakukan orang dengannya. Tanpa lisensi, orang tidak tahu apakah font Anda boleh dipakai untuk logo, situs web, atau buku, dan pemakai yang berhati-hati tidak akan memakainya sama sekali.

### Gratis dan terbuka: SIL Open Font License

SIL Open Font License versi 1.1 (OFL) adalah lisensi yang paling banyak dipakai untuk font gratis. Google Fonts memakainya untuk hampir semua fontnya. Singkatnya, dengan OFL orang boleh:

- memakai font untuk apa saja, termasuk pekerjaan komersial seperti logo, buku, aplikasi, dan situs web;
- menyematkannya di dokumen dan aplikasi;
- membagikan dan mengubahnya.

Tetapi mereka tidak boleh:

- menjual file fontnya saja;
- merilis versi yang diubah dengan nama aslinya bila nama itu Anda cadangkan (*Reserved Font Name*);
- menaruh versi yang diubah di bawah lisensi lain.

Untuk memakai OFL, letakkan teks lisensinya (`OFL.txt`, tersedia di `https://openfontlicense.org`) di samping file font Anda, lalu isi **Hak cipta**, **Lisensi**, dan **URL lisensi** di [Info Font](/production/font-info/#legal-dan-kredit).

### Komersial: lisensi Anda sendiri (EULA)

Jika Anda menjual font, Anda menulis lisensi sendiri, yang sering disebut EULA (*end-user license agreement*, perjanjian lisensi pengguna akhir). Lisensi komersial biasanya memberi batasan seperti:

- berapa komputer atau pengguna yang boleh memasang font (lisensi desktop);
- berapa jumlah kunjungan halaman sebuah situs web (lisensi web);
- apakah font boleh ditanam di aplikasi, e-book, atau gim (lisensi aplikasi dan e-pub);
- apakah logo dan produk untuk dijual diperbolehkan.

Banyak *marketplace* menyediakan lisensi standar yang bisa Anda pakai. Jika menulis sendiri, buatlah jelas dan singkat, dan pertimbangkan untuk bertanya kepada ahli hukum. Tulis satu kalimat beserta tautannya di kolom **Lisensi** dan **URL lisensi** di Info Font.

### Embedding

Font punya setelan lama (disebut fsType) yang bisa melarang font disematkan di dokumen seperti PDF. FontEasy membiarkan *embedding* (penyematan) diizinkan. Jika Anda membuka font yang membatasinya, **Periksa Font** menampilkan catatan **Embedding**, dan **Perbaiki**-nya mengizinkan embedding kembali. Kebanyakan font masa kini, gratis maupun komersial, mengizinkannya; batasan lebih baik ditulis di lisensi.

### Yang tidak boleh Anda salin

FontEasy bisa membuka font TTF dan OTF, sehingga mudah sekali mengimpor font orang lain. Bisa membuka sebuah font tidak berarti Anda boleh memakainya ulang. Hargai karya desainer lain, sebagaimana Anda ingin karya Anda dihargai:

- **Font komersial** (dan font bawaan Windows, macOS, atau Office) itu dilisensikan, bukan dimiliki. Lisensinya hampir tidak pernah mengizinkan mengubah, menjiplak, atau merilisnya dengan nama baru. Jangan mengimpor outline-nya, menjiplaknya dari gambar, atau menjadikannya dasar font Anda.
- **Font OFL** boleh diubah, tetapi versi Anda harus tetap ber-OFL, mempertahankan baris hak cipta aslinya, dan memakai nama baru bila nama aslinya dicadangkan.
- **Lettering dan logo** yang Anda temukan di internet milik pembuatnya, meskipun bukan font.
- **Tulisan tangan Anda sendiri**, gambar Anda sendiri, dan hasil pindaian Anda sendiri adalah milik Anda. Itulah titik awal yang paling aman (lihat [Font tulisan tangan](/drawing/handwriting/)).

Aturan tentang font berbeda di setiap negara. Bila ragu, tanyakan kepada desainernya, baca lisensinya, atau tanyakan kepada ahli hukum sebelum menerbitkan.

## Memberi nama font

Nama yang baik mudah diucapkan, mudah dieja, dan hanya milik Anda. Sebelum menerbitkan:

1. **Cari dulu.** Cari namanya di Google Fonts, di toko font, dan di mesin pencari umum, dengan dan tanpa kata "font". Jika ada font lain bernama sama atau sangat mirip, pilih nama lain.
2. **Hindari merek dagang.** Nama font sering terdaftar sebagai merek dagang: "Helvetica", "Futura", "Segoe", dan banyak lagi. Jangan memakainya, juga tidak dengan tambahan ("Helvetica Rounded"). Jangan pula memakai nama perusahaan, merek, atau produk. Banyak negara punya basis data merek yang bisa dicari umum; di Indonesia, pangkalan data DJKI.
3. **Hormati Reserved Font Name.** Jika font Anda berdasar font OFL yang punya Reserved Font Name, versi Anda harus bernama lain.
4. **Buat pendek.** Menu Windows hanya menampilkan 31 karakter, dan Periksa Font memberi peringatan untuk nama yang lebih panjang.
5. **Putuskan lebih awal, pertahankan selamanya.** Begitu font Anda dipakai orang, namanya tidak boleh berubah, atau dokumen mereka kehilangan fontnya.

Selama Anda masih menimbang, akhiran "Test" pada salinan uji menjaga eksperimen Anda terpisah dari nama final apa pun.

## Menerbitkan font

### Berbagi di GitHub

GitHub adalah tempat populer untuk menerbitkan font gratis beserta source-nya. Susunan yang lazim:

```
nusantara-sans/
  sources/          UFO (atau designspace dan UFO-nya)
  fonts/
    otf/  ttf/  webfonts/  variable/
  OFL.txt
  README.md         tentang font, cara memasang, gambar contoh
```

Folder ekspor bawaan FontEasy (`fonts/desktop`, `fonts/web`) langsung cocok. Pakai fitur **Releases** di GitHub untuk melampirkan ZIP berisi font setiap versi, agar orang bisa mengunduhnya tanpa perlu mengerti Git.

### Mengirim ke Google Fonts

Google Fonts menerima font gratis dengan lisensi OFL. Persyaratannya berubah dari waktu ke waktu, jadi baca panduan terbarunya untuk desainer sebelum memulai. Garis besarnya, Google Fonts mengharapkan:

- lisensi OFL, dengan source di repositori publik (sering di GitHub);
- set glyph yang setidaknya mencakup set Latin dasarnya;
- font yang lolos pemeriksaan kualitasnya (Fontbakery), termasuk aturannya tentang nama dan metrics vertikal;
- variable font bila desainnya punya beberapa ketebalan, ditambah font statis.

Profil ekspor **Google Fonts** di FontEasy adalah titik awal yang baik: ia menulis file TTF ber-hinting, menjalankan Periksa Font dulu dan berhenti bila ada error, serta mengekspor instance statis dari variable font. Pemeriksaan FontEasy mengikuti semangat Fontbakery tetapi daftarnya tidak sama, jadi jalankan Fontbakery sendiri sebelum mengirim.

### Menjual font

Anda bisa menjual font lewat *marketplace* daring (MyFonts dan Creative Market adalah dua contoh yang terkenal) atau dari situs web Anda sendiri. Setiap marketplace punya aturannya sendiri; kebanyakan meminta:

- file OTF dan/atau TTF, sering juga WOFF2 untuk lisensi web;
- lisensi (milik mereka atau milik Anda);
- gambar pratinjau dan deskripsi;
- nama, versi, dan hak cipta yang lengkap di dalam font.

Jalankan **Periksa Font** dan perbaiki semua error terlebih dahulu. Toko memeriksa file Anda, begitu pula pelanggan.

### Membuat specimen

*Specimen* (contoh peraga huruf) memperlihatkan font Anda dalam kondisi terbaiknya: rupanya, gaya dan bahasa yang dimilikinya, serta kegunaan fiturnya. Specimen adalah etalase toko font Anda.

Cara sederhana membuatnya:

- Pakai waterfall di **Pratinjau** dan halaman uji **F5**, lalu ambil tangkapan layar.
- Pasang salinan uji (<kbd>Ctrl</kbd>+<kbd>F5</kbd>) dan tata satu halaman di aplikasi desain favorit Anda: judul besar, alfabet, angka, satu paragraf ukuran teks, contoh setiap fitur, dan kalimat dalam setiap bahasa yang Anda dukung.
- Tampilkan seluruh keluarga berdampingan, dari yang tipis ke yang tebal.

Pakai teks sungguhan, bukan hanya "The quick brown fox". Tunjukkan font melakukan pekerjaan yang menjadi tujuannya: poster untuk display font, halaman bacaan untuk font teks.

## Nomor versi dan pembaruan

Font terus membaik setelah dirilis: ada yang menemukan pasangan kerning yang bertabrakan, huruf yang belum ada, cacat pada ukuran kecil. Setiap kali Anda menerbitkan perubahan, beri nomor versi baru di **Info Font**, pada **Versi (mayor)** dan **Versi (minor)** (lihat [Info Font](/production/font-info/#versi)).

![Versi dari waktu ke waktu: 1.000 untuk rilis pertama, 1.001 untuk perbaikan kecil, 1.100 untuk glyph atau fitur baru, 2.000 untuk font yang digambar ulang; 1.100 berarti mayor 1 dan minor 100.](diagram:testing-publishing-versions)

Skema sederhana:

- **1.000** untuk rilis pertama.
- Naikkan digit terakhir untuk perbaikan kecil: **1.001**, **1.002**.
- Naikkan digit tengah untuk tambahan (glyph baru, fitur baru): **1.100**, **1.200**.
- Naikkan angka mayor untuk desain ulang: **2.000**.

Saat memperbarui:

1. Pertahankan nama keluarga, nama gaya, dan nama PostScript, agar dokumen yang memakai versi lama otomatis memakai versi baru.
2. Naikkan versinya.
3. Catat apa yang berubah. Banyak proyek OFL menyimpan file `FONTLOG.txt` untuk ini; daftar di README juga bisa.
4. Periksa, uji, dan ekspor seperti sebelumnya.
5. Terbitkan file baru dan minta pemakai mencopot versi lama sebelum memasang yang baru.

## Menyimpan source, cadangan, dan pemulihan

Font hasil ekspor adalah kuenya; source adalah resepnya. Dari resep Anda selalu bisa memanggang kue baru, tetapi resep tidak bisa diambil kembali dari kue. Membuka font hasil ekspor di FontEasy memang memulihkan outline-nya, tetapi tidak semuanya: bentuk-bentuk terpisah yang saling tumpuk, efek gambar *live*, profil ekspor, dan detail kerja lainnya hanya ada di source.

### Menyimpan

- **Berkas › Simpan** (<kbd>Ctrl</kbd>+<kbd>S</kbd>) menyimpan font Anda sebagai UFO (atau designspace beserta UFO-nya).
- **Berkas › Simpan Sebagai…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>S</kbd>) menyimpan dengan nama baru atau di tempat baru. Pakai ini untuk membuat salinan UFO bila Anda memulai dari file TTF atau OTF.
- **Berkas › Simpan Semua** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>S</kbd>) menyimpan semua font terbuka yang punya perubahan.

UFO adalah sebuah folder, bukan satu file: di dalamnya ada satu file teks kecil per glyph ditambah beberapa file untuk pengaturan font. Salin, zip, atau cadangkan seluruh folder `.ufo` (untuk variable font, file `.designspace` beserta semua folder UFO-nya).

FontEasy menyimpan dengan aman: versi baru ditulis lebih dulu, baru kemudian menggantikan yang lama, sehingga *crash* atau disk penuh saat menyimpan tidak pernah meninggalkan font yang setengah tertulis.

### Simpan otomatis dan pemulihan

FontEasy juga membuat salinan pemulihan untuk font yang punya perubahan belum disimpan, setiap beberapa menit. Seberapa sering, Anda atur di **Edit › Preferensi…** (<kbd>Ctrl</kbd>+<kbd>K</kbd>), halaman **Umum**, pada **Simpan otomatis tiap** (awalnya 5 menit; 0 mematikannya). Lihat [Preferensi](/power/preferences/).

Salinan ini tidak pernah menimpa file Anda sendiri. Salinan disimpan di folder milik FontEasy (`%APPDATA%\FontEasy`) dan dihapus saat Anda menyimpan atau menutup font dengan normal. Jika FontEasy atau Windows mengalami *crash*, saat FontEasy dijalankan berikutnya muncul jendela **Pulihkan Font yang Belum Disimpan**: "FontEasy tertutup tiba-tiba. Font berikut memiliki perubahan yang belum disimpan:", dengan setiap font dan umur salinannya dalam menit.

- Klik **Pulihkan** untuk membuka font yang dipulihkan. Lalu simpan dengan **Berkas › Simpan Sebagai…** atau **Berkas › Simpan**.
- Klik **Buang** untuk menghapus salinan pemulihan.

Simpan otomatis adalah jaring pengaman, bukan pengganti menyimpan. Tekan <kbd>Ctrl</kbd>+<kbd>S</kbd> sesering mungkin.

### Cadangan

Satu salinan sama dengan tidak ada salinan. Simpan setidaknya satu salinan lagi di tempat lain:

- salinan rutin folder proyek di *hard disk* eksternal;
- folder *cloud* (OneDrive, Google Drive, Dropbox);
- *version control* dengan Git. Karena UFO terdiri dari file teks kecil, Git menyimpan riwayat setiap perubahan dengan jelas, dan GitHub sekaligus menjadi cadangan.

Buat ZIP source dengan nomor versi di namanya (`NusantaraSans-1.100-source.zip`) setiap kali merilis. Dengan begitu Anda selalu bisa kembali ke apa yang persis Anda terbitkan.

## Ringkasan

- Panel **Pratinjau** membentuk teks seperti aplikasi sungguhan; **Waterfall** menampilkan ukuran 12 sampai 96; **Glyph** menunjukkan glyph yang dipakai.
- **Berkas › Uji Font di Browser** (<kbd>F5</kbd>) membuka halaman uji dengan teks yang bisa diedit, kotak centang fitur, dan waterfall; tidak ada yang dipasang.
- **Berkas › Pasang Font untuk Uji** (<kbd>Ctrl</kbd>+<kbd>F5</kbd>) memasang "… Test" untuk akun Windows Anda; **Berkas › Hapus Font Uji** menghapusnya. Jalankan ulang aplikasi untuk melihat perubahan.
- Uji di Word, aplikasi desain, dan browser, dengan huruf kapital beraksen, ukuran kecil, tombol B dan I, serta setiap bahasa yang Anda dukung.
- Pilih lisensi: OFL untuk font gratis, EULA sendiri untuk font komersial. Jangan memakai ulang font orang lain tanpa izin.
- Pilih nama yang belum dipakai dan bukan merek dagang, lalu pertahankan.
- Terbitkan di GitHub, kirim ke Google Fonts (baca panduan terbarunya), atau jual lewat marketplace; buat specimen.
- Naikkan versi setiap rilis; pertahankan namanya.
- Simpan source UFO, buat cadangan; simpan otomatis memungkinkan pemulihan setelah *crash*.

## Coba sendiri

1. Tekan <kbd>F5</kbd> dan ketik satu kalimat dalam bahasa Anda di baris besar halaman uji. Matikan lalu nyalakan sebuah fitur. Kemudian ubah satu huruf di FontEasy, tekan <kbd>F5</kbd> lagi, dan bandingkan.
2. Tekan <kbd>Ctrl</kbd>+<kbd>F5</kbd>, buka Word (atau WordPad), lalu susun satu paragraf dengan font uji Anda, berisi beberapa huruf kapital beraksen. Coba spasi baris tunggal dan ganda. Setelah selesai, pilih **Berkas › Hapus Font Uji**.
3. Tulis README untuk font Anda: namanya, deskripsi satu baris, lisensinya, dan langkah pemasangan untuk Windows dan macOS dari bab ini.
