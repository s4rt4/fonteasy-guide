---
title: Preferensi dan Pengaturan
description: Semua pengaturan di Edit › Preferensi, simpan otomatis dan pemulihan setelah crash, shortcut keyboard Anda sendiri, palet perintah, serta tempat FontEasy menyimpan pengaturan dan file font Anda.
---

FontEasy sudah enak dipakai begitu selesai dipasang, jadi Anda bisa membuat satu font utuh tanpa pernah membuka pengaturannya. Meski begitu, beberapa menit di **Edit › Preferensi…** bisa membuat FontEasy terasa lebih "milik Anda": tampilan terang atau gelap, teks yang lebih besar, antarmuka berbahasa Indonesia, jeda simpan otomatis yang lebih pendek, atau shortcut keyboard untuk perintah yang sering Anda pakai.

Bab ini membahas setiap pengaturan satu per satu. Bab ini juga menjelaskan dua jaring pengaman yang bekerja diam-diam di latar belakang, yaitu **simpan otomatis** dan **pemulihan setelah crash**, serta memperkenalkan **palet perintah** (*command palette*), cara tercepat menemukan perintah apa pun tanpa perlu tahu letak menunya. Di akhir bab Anda akan tahu di mana FontEasy menyimpan pengaturannya dan apa saja file proyek font Anda.

Dalam bab ini Anda akan mempelajari:

- cara membuka Preferensi dan fungsi tombol OK, Terapkan, Batal, serta Kembalikan Bawaan;
- setiap pengaturan di tab **Umum** dan **Antarmuka**;
- cara simpan otomatis dan pemulihan melindungi pekerjaan Anda, dan di mana salinan pemulihan disimpan;
- cara mengganti, menghapus, dan mengembalikan shortcut keyboard;
- cara memakai palet perintah;
- tempat FontEasy menyimpan pengaturannya (`%APPDATA%\FontEasy`);
- apa itu folder UFO dan file designspace.

## Membuka Preferensi

1. Pilih **Edit › Preferensi…**, atau tekan <kbd>Ctrl</kbd>+<kbd>K</kbd>.
2. Di layar Beranda Anda juga bisa mengeklik **Preferensi…** di kiri bawah.

Sekarang jendela **Preferensi** terbuka dengan tiga tab di atas: **Umum**, **Antarmuka**, dan **Shortcut Keyboard**.

![Jendela Preferensi pada tab Umum: bagian Saat memulai, Font baru, Ekspor, dan Scripting, dengan tombol Kembalikan Bawaan, Terapkan, Batal, dan OK di bawah.](screen:prefs)

Tombol di bagian bawah bekerja seperti di kebanyakan program Windows:

| Tombol | Fungsinya |
|---|---|
| **OK** | Memakai perubahan, menyimpannya, lalu menutup jendela. |
| **Terapkan** | Memakai dan menyimpan perubahan, tetapi jendela tetap terbuka supaya Anda bisa melihat hasilnya. |
| **Batal** | Membuang perubahan sejak Terapkan yang terakhir, lalu menutup jendela. |
| **Kembalikan Bawaan** | Mengembalikan semua pengaturan **di tab yang sedang dibuka** ke kondisi awal FontEasy. Di tab Shortcut Keyboard, tombol ini menghapus semua shortcut buatan Anda. |

Perubahan baru berlaku setelah Anda mengeklik **Terapkan** atau **OK**. Preferensi langsung tersimpan; Anda tidak perlu menyimpan apa pun lagi.

## Tab Umum

Tab **Umum** punya empat bagian.

### Saat memulai

| Pengaturan | Artinya |
|---|---|
| **Layar Beranda** — **Tampilkan saat tidak ada font terbuka** | Layar Beranda adalah halaman sambutan berisi **Font Baru…**, **Buka…**, template, dan font terbaru Anda. |
| **Layar pembuka** — **Tampilkan saat memulai** | Jendela kecil berlogo FontEasy yang muncul selama program dimuat. Matikan kalau Anda ingin FontEasy langsung terbuka ke jendela utamanya. |
| **Font terbaru** | Berapa banyak font yang diingat FontEasy di **Berkas › Buka Terbaru** dan di layar Beranda (1 sampai 50; awalnya 12). |

Anda selalu bisa kembali ke layar Beranda dengan **Jendela › Beranda** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>H</kbd>).

### Font baru

| Pengaturan | Artinya |
|---|---|
| **Units per em** | Nilai awal untuk font baru di dialog **Font Baru** (awalnya 1000). |
| **Simpan otomatis tiap** | Seberapa sering FontEasy membuat salinan pengaman dari font yang punya perubahan belum disimpan, dalam menit (awalnya 5; 0 mematikan simpan otomatis). Lihat [Simpan otomatis dan pemulihan setelah crash](#simpan-otomatis-dan-pemulihan-setelah-crash). |

[Units per em](/reference/glossary/#units-per-em) adalah ukuran kisi tak terlihat tempat setiap glyph digambar: tinggi kotak [em](/reference/glossary/#em) yang dibagi menjadi unit-unit. 1000 adalah pilihan yang umum dan paling mudah dibayangkan. Sebagian desainer TrueType memakai 2048. Anda tetap bisa mengubah nilainya untuk tiap font di dialog **Font Baru**, jadi pengaturan ini hanya menghemat ketikan.


### Ekspor

**ttfautohint** adalah program kecil yang menambahkan [hinting](/reference/glossary/#hinting) (petunjuk tampilan) ke font TrueType: instruksi tambahan yang membantu huruf tampak tajam pada ukuran kecil di layar Windows. Unduhan FontEasy untuk Windows sudah menyertakannya (di folder `tools`), jadi biasanya Anda melihat lokasinya di sini dan tidak perlu menyentuh pengaturan ini.

- Kalau tertulis **tidak ditemukan: font TrueType diekspor tanpa hinting**, FontEasy tidak menemukan program itu. Font Anda tetap bisa diekspor, hanya tanpa hinting.
- Klik **Pilih…** untuk menunjuk `ttfautohint.exe` sendiri, dan **Atur Ulang** untuk kembali ke pencarian otomatis.

Saat mencari sendiri, FontEasy melihat di samping `FontEasy.exe` (dan di folder `tools`-nya), lalu di `PATH` sistem. Hinting dibahas lebih lanjut di [Mengekspor font](/production/export/).

### Scripting

**Python** menunjukkan program Python mana yang akan menjalankan skrip dan plugin Anda. Biasanya ini Python yang dibawa FontEasy, di folder `python` di samping `FontEasy.exe`.

- **Pilih…** memungkinkan Anda memilih `python.exe` lain, misalnya yang Anda pasang dari python.org beserta paket tambahan.
- **Atur Ulang** (muncul setelah Anda memilih) kembali ke Python bawaan.
- **tidak ditemukan: skrip dan plugin tidak bisa berjalan** berarti tidak ada Python sama sekali. FontEasy sendiri tetap bekerja normal; hanya scripting yang tidak tersedia.

Rinciannya ada di [Python yang menjalankan skrip Anda](/power/scripting/#python-yang-menjalankan-skrip-anda).

## Tab Antarmuka

Tab **Antarmuka** mengubah tampilan FontEasy. Perubahan langsung terlihat begitu Anda mengeklik **Terapkan**.

### Tampilan

| Pengaturan | Pilihan |
|---|---|
| **Tema** | **Gelap** (bawaan), **Terang**, atau **Sistem**, yang mengikuti pengaturan terang atau gelap Windows. |
| **Ukuran font antarmuka** | **Kecil**, **Sedang** (bawaan), atau **Besar**: ukuran teks di menu, panel, dan dialog. |
| **Bahasa** | **English** atau **Bahasa Indonesia**. |

![FontEasy dengan tema Terang: jendela yang sama seperti sebelumnya, dengan panel dan kisi glyph yang terang.](screen:light)

Anda juga bisa mengganti tema tanpa membuka Preferensi: **Tampilan › Tampilan › Gelap**, **Terang**, atau **Ikuti Sistem**.

Pengaturan **Bahasa** langsung mengubah semua menu, panel, dialog, dan pesan; Anda tidak perlu memulai ulang. Nama glyph, Info Font Anda, dan teks plugin (yang berasal dari pembuatnya) tidak berubah.

:::tip
Kalau mata cepat lelah, coba teks **Besar** dengan tema **Terang** di siang hari dan **Gelap** di malam hari.
:::

### Mode Sederhana atau Pro

**Mode** memilih antara **Sederhana** dan **Pro**.

- **Mode Sederhana** menampilkan alat-alat penting, wizard, dan daftar periksa Perjalanan Font. Mode ini dibuat untuk font pertama Anda.
- **Mode Pro** menampilkan semuanya, termasuk master, profil ekspor, scripting, dan alat gambar tambahan.

Font Anda sama persis di kedua mode; yang berubah hanya banyaknya alat di layar. Anda bisa berpindah kapan saja, bahkan di tengah menggambar glyph, dengan beberapa cara:

1. Klik **Pro** atau **Sederhana** di bilah judul, kanan atas.
2. Pilih **Jendela › Mode Sederhana**, **Jendela › Mode Pro**, atau **Jendela › Ganti Mode** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>M</kbd>).
3. Ubah **Mode** di sini, di Preferensi.

FontEasy mengingat mode terakhir yang Anda pakai dan memulai dengan mode itu lain kali. [Bab antarmuka](/start/interface/) membandingkan kedua mode dengan lebih rinci.

![Font yang sama di Mode Sederhana: alat di kotak alat lebih sedikit, daftar Perjalanan Font di kanan atas, tidak ada tab Scripting di bawah, dan langkah pertama tur terpandu.](screen:simple)

### Bilah judul

FontEasy menggambar bilah judulnya sendiri, dengan menu, tombol mode, dan tombol jendela dalam satu baris, seperti program Adobe. Kalau Anda lebih suka bilah judul Windows biasa, centang **Pakai bilah judul sistem (setelah mulai ulang)**. Sesuai labelnya, perubahan ini baru tampak saat FontEasy dibuka lagi.

## Simpan otomatis dan pemulihan setelah crash

Komputer bisa *crash* (berhenti mendadak), baterai laptop bisa habis, dan listrik bisa padam. FontEasy punya dua jaring pengaman sehingga crash hanya merugikan Anda beberapa menit, bukan berhari-hari.

### Apa yang dilakukan simpan otomatis

Setiap beberapa menit (5 menit kalau tidak diubah, lihat [Font baru](#font-baru)), FontEasy memeriksa font yang terbuka. Setiap font yang punya perubahan belum disimpan disalin ke **folder pemulihan** terpisah. Inilah [simpan otomatis](/reference/glossary/#autosave) (*autosave*).

Hal penting tentang simpan otomatis:

- Simpan otomatis **tidak pernah menimpa file font Anda sendiri**. File `.ufo` Anda tetap persis seperti saat terakhir disimpan. Salinannya ditaruh di tempat lain.
- Hanya font dengan perubahan belum disimpan yang disalin, dan hanya kalau berubah sejak salinan terakhir.
- Saat Anda **menyimpan** font, atau **menutupnya** dengan sengaja, salinan pemulihannya dihapus karena sudah tidak diperlukan.
- Simpan otomatis bukan pengganti **Berkas › Simpan** (<kbd>Ctrl</kbd>+<kbd>S</kbd>). Seringlah menyimpan.

Proses menyimpan juga aman dari crash: FontEasy menulis versi baru di samping versi lama, baru kemudian menukarnya, sehingga crash di tengah penyimpanan tidak bisa meninggalkan font yang setengah tertulis.

### Memulihkan setelah crash

Kalau FontEasy tertutup tiba-tiba, salinan pemulihan masih ada saat Anda membukanya lagi. FontEasy menemukannya dan menampilkan jendela **Pulihkan Font yang Belum Disimpan**: "FontEasy tertutup tiba-tiba. Font berikut memiliki perubahan yang belum disimpan:", berisi nama setiap font dan kapan salinannya dibuat ("3 menit lalu").

1. Klik **Pulihkan** untuk membuka salinan-salinan itu. Setiap font terbuka dengan perubahan yang dimilikinya saat simpan otomatis terakhir.
2. Periksa font-nya, lalu segera simpan dengan **Berkas › Simpan** atau **Berkas › Simpan Sebagai…**.

Atau klik **Buang** untuk menghapus salinan pemulihan dan mulai bersih.

:::caution
Saat Anda menutup font dan menjawab **Jangan Simpan**, FontEasy menganggapnya keputusan Anda dan ikut menghapus salinan pemulihannya. Pakai **Jangan Simpan** hanya kalau Anda memang ingin membuang perubahan itu.
:::

### Lokasi salinan pemulihan

Salinan pemulihan disimpan di:

```
%APPDATA%\FontEasy\recovery\
```

Setiap salinan berupa folder berisi `manifest.json` kecil (nama font, lokasi penyimpanan sebelumnya, dan waktu salinan dibuat) serta font itu sendiri: folder `font.ufo`, atau `font.designspace` dengan folder `masters` untuk font yang punya beberapa master. Biasanya Anda tidak perlu membuka folder ini; tombol **Pulihkan** sudah mengerjakannya. Kalau suatu saat Anda butuh salinan secara manual, salin dulu `font.ufo` atau `font.designspace` itu ke tempat lain, lalu buka salinannya dengan **Berkas › Buka…** atau **Berkas › Buka Folder UFO…**.

Untuk mengetik lokasinya dengan cepat, tekan <kbd>Win</kbd>+<kbd>R</kbd>, ketik `%APPDATA%\FontEasy`, lalu tekan <kbd>Enter</kbd>.

## Shortcut keyboard

Shortcut keyboard menjalankan perintah tanpa mouse. FontEasy datang dengan banyak shortcut (lihat [daftar shortcut](/reference/shortcuts/)), dan Anda bisa mengganti semuanya.

Untuk membuka editor shortcut, pilih **Edit › Shortcut Keyboard…** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Shift</kbd>+<kbd>K</kbd>) atau **Bantuan › Shortcut Keyboard**. Keduanya membuka Preferensi di tab **Shortcut Keyboard**.

![Tab Shortcut Keyboard: kolom saring di atas, lalu daftar perintah dengan jalur menunya, shortcut saat ini, dan tombol Hapus.](screen:shortcuts)

Daftar ini memuat setiap perintah menu (dengan jalur menunya, seperti **Berkas › Simpan Sebagai…**) dan setiap alat di kotak alat (**Alat › Pena**, dan seterusnya). Kolom tengah menunjukkan shortcut saat ini, atau tanda pisah kalau belum ada.

### Mengganti shortcut

1. Ketik sebagian nama perintah di **Saring perintah**, misalnya `smooth`.
2. Klik tombol shortcut perintah itu. Tulisannya sekarang **Tekan tombol…**.
3. Tekan kombinasi tombol yang baru, misalnya <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>J</kbd>. Tekan <kbd>Esc</kbd> kalau Anda berubah pikiran.
4. Klik **OK**.

Sekarang shortcut baru Anda tampak di samping perintah itu, dan juga di menu.

Kalau kombinasi itu sudah dipakai perintah lain, FontEasy memindahkannya ke perintah Anda dan menghapusnya dari perintah yang lama. Catatan kuning di bawah memberi tahu Anda, misalnya "P dipindahkan dari “Alat › Pena”.", jadi Anda tidak akan kaget.

### Menghapus dan mengembalikan

- **Hapus** mencabut shortcut dari sebuah perintah.
- **Atur Ulang** (muncul setelah Anda mengubah shortcut) mengembalikan shortcut asli FontEasy untuk perintah itu.
- **Kembalikan Bawaan** di bawah mengembalikan **semua** shortcut.

Beberapa tips:

- Shortcut alat berupa satu tombol (<kbd>P</kbd> untuk Pena, <kbd>V</kbd> untuk Pilih). Shortcut ini hanya bekerja kalau ada font yang terbuka dan Anda tidak sedang mengetik di kolom teks.
- Shortcut tidak bekerja selama kursor ada di kolom teks, jadi mengetik huruf "P" di teks pratinjau tidak akan mengganti alat.
- Dalam kombinasi, <kbd>Ctrl</kbd>, <kbd>Alt</kbd>, dan <kbd>Shift</kbd> boleh dicampur; satu tombol tanpa ketiganya juga boleh.
- Perintah plugin tidak ada di daftar ini. Plugin bisa menyarankan shortcut-nya sendiri di `plugin.json` (lihat [Plugin](/power/scripting/#membuat-plugin-sendiri)).

Shortcut Anda tersimpan di file preferensi, jadi tetap ada setelah FontEasy diperbarui.

## Palet perintah

Palet perintah adalah kotak pencarian untuk perintah. Daripada mengingat letak menu sebuah perintah, Anda cukup mengetik beberapa huruf namanya.

1. Tekan <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>, pilih **Tampilan › Palet Perintah**, atau klik kaca pembesar di bilah judul.
2. Ketik sebagian nama perintah, misalnya `mode`.
3. Pakai <kbd>↑</kbd> dan <kbd>↓</kbd> untuk memilih baris, lalu tekan <kbd>Enter</kbd> (atau klik barisnya).

![Palet perintah mencari "mode": Mode Sederhana, Mode Pro, dan Ganti Mode, masing-masing dengan menunya (Jendela), dan Ganti Mode dengan shortcut Ctrl+Alt+M.](screen:palette)

Setiap baris menampilkan perintah, menu tempatnya, dan shortcut-nya, sehingga palet juga cara yang bagus untuk menghafal shortcut. Palet menampilkan hingga dua belas hasil. Perintah yang diawali ketikan Anda muncul lebih dulu, lalu perintah yang salah satu katanya diawali ketikan itu, lalu perintah yang memuatnya di mana saja, dan terakhir perintah yang nama menunya cocok; mengetik `kerning` karena itu juga menemukan semua isi menu **Kerning**. Baris berwarna abu-abu adalah perintah yang belum bisa dijalankan saat ini (misalnya **Glyph Sebelumnya** ketika tidak ada glyph yang terbuka di editor). Perintah plugin juga ikut. Di Mode Sederhana, perintah khusus Mode Pro tidak ditampilkan.

Tekan <kbd>Esc</kbd> atau klik di luar palet untuk menutupnya.

## Tempat FontEasy menyimpan pengaturan

FontEasy menyimpan pengaturannya sendiri di satu folder:

```
%APPDATA%\FontEasy
```

Di kebanyakan komputer, ini adalah `C:\Users\<nama Anda>\AppData\Roaming\FontEasy`. `AppData` adalah folder tersembunyi, jadi cara tercepat ke sana adalah <kbd>Win</kbd>+<kbd>R</kbd>, lalu ketik `%APPDATA%\FontEasy` dan tekan <kbd>Enter</kbd>.

![Folder pengaturan FontEasy: prefs.json, workspace.json, serta folder recovery, plugins, dan python-1.5.0.](diagram:preferences-config-folder)

| File atau folder | Isinya |
|---|---|
| `prefs.json` | Semua Preferensi, shortcut keyboard Anda, daftar font terbaru, dan plugin mana yang dimatikan. |
| `workspace.json` | Letak panel Anda, bilah mana yang tampil, ukuran sel glyph di Ikhtisar, dan apakah jendela dalam keadaan maksimal. Disimpan saat Anda keluar. |
| `recovery\` | Salinan simpan otomatis untuk [pemulihan setelah crash](#memulihkan-setelah-crash). |
| `plugins\` | [Plugin](/power/scripting/#plugin) Anda, satu folder untuk masing-masing. |
| `python-1.5.0\` | Paket Python `fonteasy` yang dipakai skrip, ditulis sendiri oleh FontEasy saat pertama kali Anda menjalankan skrip. |

Beberapa hal yang berguna:

- **Font Anda tidak disimpan di sini.** Font ada di mana pun Anda menyimpannya.
- Kalau `prefs.json` rusak atau terhapus, FontEasy cukup memulai dengan pengaturan bawaan; FontEasy tidak pernah menolak untuk dibuka.
- Untuk **mulai dari awal**, tutup FontEasy lalu ganti nama `prefs.json` (misalnya menjadi `prefs-lama.json`). Untuk mengembalikan susunan panel tanpa menyentuh yang lain, pakai **Jendela › Atur Ulang Ruang Kerja**.
- Untuk **memindahkan pengaturan ke komputer lain**, salin `prefs.json` dan folder `plugins`.
- **Menghapus (uninstall)** FontEasy tidak menghapus folder ini, jadi pemasangan ulang akan menemukan pengaturan dan plugin Anda lagi. Hapus secara manual kalau Anda ingin membersihkan semuanya.
- Tingkat lanjut: kalau variabel lingkungan `FONTEASY_CONFIG_DIR` diisi, FontEasy memakai folder itu, berguna untuk salinan portabel di flashdisk.

Programnya sendiri ada di tempat lain: installer memasangnya di `%LOCALAPPDATA%\Programs\FontEasy`, sedangkan versi zip ada di mana pun Anda mengekstraknya.

## File proyek Anda: UFO dan designspace

Selama Anda bekerja, FontEasy menyimpan font Anda sebagai **source** (sumber), bukan sebagai file font jadi. Source menyimpan semua yang Anda perlukan untuk terus mendesain: setiap glyph, garis bantu, warna tanda, catatan, grup kerning, kode fitur, dan lainnya. Saat font sudah siap, Anda [mengekspor](/reference/glossary/#export)-nya menjadi file font seperti TTF atau OTF yang bisa dipakai program lain. Anggap source sebagai resep kue, dan font hasil ekspor sebagai kue yang sudah dipanggang.

### Folder UFO

Format utama FontEasy adalah [UFO](/reference/glossary/#ufo) (Unified Font Object), format terbuka yang bisa dibaca banyak editor font. UFO bukan satu file melainkan sebuah **folder** yang namanya berakhiran `.ufo`, misalnya `Nusantara Sans.ufo`. Isinya file-file teks kecil:

| Di dalam UFO | Isinya |
|---|---|
| `metainfo.plist` | Versi UFO yang dipakai. |
| `fontinfo.plist` | Info Font: nama, metrics vertikal, versi, lisensi. |
| `glyphs\` | Satu file `.glif` per glyph, berisi outline, lebar, dan Unicode-nya. |
| `kerning.plist`, `groups.plist` | Pasangan kerning dan grup kerning. |
| `features.fea` | Kode fitur OpenType. |
| `lib.plist` | Data tambahan, seperti urutan glyph dan pengaturan FontEasy untuk font itu. |

Karena UFO adalah folder berisi file teks, format ini cocok untuk alat cadangan dan *version control* (pelacak versi), dan satu file glyph yang rusak tidak ikut merusak seluruh font. Perlakukan folder `.ufo` sebagai satu kesatuan: salin, pindahkan, zip, atau cadangkan seluruhnya, dan jangan mengedit file di dalamnya dengan tangan.

### File designspace

[Font variabel](/reference/glossary/#variable-font) atau keluarga font dengan beberapa ketebalan punya lebih dari satu [master](/reference/glossary/#master), misalnya Light dan Bold. Setiap master adalah UFO tersendiri. File **designspace** (berakhiran `.designspace`) mengikat semuanya: file ini mencatat [sumbu](/reference/glossary/#axis) (misalnya ketebalan), posisi tiap master pada sumbu itu, dan [instance](/reference/glossary/#instance) bernama (Regular, Medium, …). UFO master disimpan di samping file designspace. Simpan semuanya bersama dalam satu folder.

Saat Anda mengubah font satu master menjadi font variabel, FontEasy menyimpan file `.designspace` di samping UFO Anda; UFO itu tetap di tempatnya sebagai master bawaan. Lihat [Font variabel](/advanced/variable/).

### Membuka dan menyimpan

- **Berkas › Buka…** (<kbd>Ctrl</kbd>+<kbd>O</kbd>) membuka `.designspace`, `.ttf` atau `.otf`, file `.glyphs`, atau UFO kalau Anda memilih sebuah file di dalamnya (seperti `metainfo.plist`).
- **Berkas › Buka Folder UFO…** (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>O</kbd>) membuka UFO dengan memilih foldernya langsung.
- Anda juga bisa menyeret font ke jendela FontEasy.
- **Berkas › Simpan** (<kbd>Ctrl</kbd>+<kbd>S</kbd>) menyimpan UFO atau designspace di tempatnya. Font yang Anda buka dari file TTF, OTF, atau Glyphs, maupun font yang baru dibuat, akan menanyakan lokasi penyimpanan sebagai UFO (atau designspace) baru pada penyimpanan pertama, karena FontEasy tidak pernah menimpa file-file tersebut.

## Ringkasan

- **Edit › Preferensi…** (<kbd>Ctrl</kbd>+<kbd>K</kbd>) punya tiga tab: **Umum**, **Antarmuka**, dan **Shortcut Keyboard**. **Terapkan** dan **OK** menyimpan; **Kembalikan Bawaan** mengembalikan tab yang sedang dibuka.
- **Umum**: layar Beranda, layar pembuka, jumlah font terbaru, units per em untuk font baru, jeda simpan otomatis, ttfautohint, dan Python untuk skrip.
- **Antarmuka**: tema Gelap, Terang, atau Sistem, ukuran font antarmuka, English atau Bahasa Indonesia, Mode Sederhana atau Pro, dan bilah judul sistem.
- Simpan otomatis menyalin font yang punya perubahan belum disimpan ke `%APPDATA%\FontEasy\recovery` setiap beberapa menit, tanpa pernah menimpa file Anda; setelah crash, **Pulihkan** mengembalikannya.
- **Edit › Shortcut Keyboard…** memungkinkan Anda mengganti, menghapus, dan mengembalikan shortcut apa pun, termasuk tombol alat.
- Palet perintah (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>) mencari dan menjalankan perintah apa pun berdasarkan namanya.
- Pengaturan ada di `%APPDATA%\FontEasy`: `prefs.json`, `workspace.json`, `recovery`, `plugins`, dan paket scripting.
- Font disimpan sebagai folder UFO; file designspace mengikat beberapa UFO master.

## Coba sendiri

1. Di Preferensi, ubah FontEasy ke English dan tema Terang, klik **Terapkan** dan lihat-lihat, lalu kembalikan bahasanya. Kembalikan temanya lewat palet perintah: tekan <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>, ketik `gelap`, lalu tekan <kbd>Enter</kbd>.
2. Beri **Glyph › Ubah Smooth** shortcut baru pilihan Anda, periksa bahwa menu menampilkannya, lalu pakai **Atur Ulang** untuk mengembalikan shortcut aslinya, <kbd>Alt</kbd>+<kbd>S</kbd>.
