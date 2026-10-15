---
title: Info Font
description: Beri font Anda nama, versi, kredit, dan metrics vertikal, supaya aplikasi menampilkannya dengan benar dan baris teks tidak bertabrakan atau terpotong.
---

Sampai sekarang Anda sibuk menggambar huruf. Sebelum font Anda bisa keluar dari FontEasy, ia juga butuh identitas: nama yang dicari orang di menu font, gaya seperti Regular atau Bold, nomor versi, dan keterangan siapa pembuatnya serta bagaimana font itu boleh dipakai. Font juga butuh beberapa ukuran yang memberi tahu aplikasi seberapa tinggi satu baris teks. Semua itu ada di satu tempat, yaitu dialog **Info Font**.

Bayangkan Info Font sebagai label pada stoples selai. Selainya boleh saja sempurna, tetapi tanpa label yang jelas tidak ada yang tahu isinya apa, siapa pembuatnya, atau kapan dibuat. Aplikasi seperti Word, Illustrator, dan browser membaca label ini untuk menentukan di mana font Anda muncul di menu, gaya mana yang satu keluarga, dan berapa jarak antarbaris.

Sebagian besar kolom boleh dibiarkan kosong selama Anda mendesain. FontEasy mengisinya dengan nilai yang masuk akal saat ekspor. Namun ada beberapa kolom yang perlu Anda pahami sebelum merilis font, karena justru kolom-kolom inilah sumber keluhan paling umum: "Bold saya tidak muncul di sebelah Regular", "aksen huruf kapital terpotong di Word", "jarak barisnya terlalu renggang di Mac".

Dalam bab ini Anda akan mempelajari:

- cara membuka Info Font dan fungsi setiap kelompok kolom;
- cara kerja nama keluarga dan nama gaya, serta cara aplikasi mengelompokkan Regular, Italic, Bold, dan Bold Italic;
- apa itu nama PostScript, nomor versi, dan kolom kredit;
- arti *units per em* (jumlah unit pada sisi kotak em) dan mengapa nilainya jarang diubah;
- bagaimana metrics vertikal menentukan tinggi baris, serta mengapa teks bisa terpotong atau baris bertabrakan;
- bagaimana FontEasy menghitung nilai yang Anda biarkan kosong;
- cara mengatur *weight class* (angka ketebalan) agar aplikasi mengurutkan gaya dengan benar.

## Membuka Info Font

1. Buka font Anda.
2. Pilih **Font › Info Font…** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>I</kbd>).
3. Ubah kolom yang perlu. Dialognya bisa digulir dan terbagi menjadi empat kelompok.
4. Klik **OK** untuk menerapkan perubahan, atau **Batal** untuk membiarkan semuanya seperti semula.

Seluruh perubahan itu menjadi satu langkah di riwayat undo, jadi <kbd>Ctrl</kbd>+<kbd>Z</kbd> mengembalikan semua nilai lama sekaligus.

![Dialog Info Font untuk Mutator Sans: kelompok Nama dan Dimensi di atas, awal kelompok OpenType di bawahnya.](screen:fontinfo)

Di Mode Sederhana, langkah pertama panel **Perjalanan Font**, yaitu **Beri nama font**, punya tombol **Info Font…** yang membuka dialog yang sama.

Keempat kelompoknya:

| Kelompok | Isinya |
|---|---|
| **Nama** | Nama keluarga, nama gaya, versi |
| **Dimensi** | Units per em, ascender, descender, tinggi huruf kapital, tinggi-x, sudut miring |
| **OpenType (kosong = otomatis)** | Nama PostScript, weight class, dan tiga set nilai jarak baris |
| **Legal dan kredit** | Hak cipta, merek dagang, desainer, pembuat, lisensi, ID vendor, deskripsi, catatan |

Kolom kosong bukan kesalahan. Kolom kosong berarti "biar FontEasy yang menentukan", dan untuk kebanyakan font itulah pilihan yang tepat.

:::note[Font dengan beberapa master]
Jika font Anda berupa *designspace* dengan beberapa [master](/reference/glossary/#master) (lihat [Variable font](/advanced/variable/)), nama, versi, kredit, dan nilai jarak baris berlaku untuk seluruh keluarga: mengubahnya berarti mengubah semua master. Nama gaya, ascender, descender, tinggi huruf kapital, tinggi-x, sudut miring, weight class, dan nama PostScript milik master yang sedang Anda edit, sehingga setiap master bisa punya nilainya sendiri.
:::

## Nama: keluarga dan gaya

Setiap font punya dua nama yang bekerja bersama.

- **Nama keluarga** adalah nama seluruh [keluarga](/reference/glossary/#family) font: "Nusantara Sans", "Source Serif 4". Semua gaya dari satu desain memakai nama ini.
- **Nama gaya** menyebutkan anggota keluarga yang mana file ini: "Regular", "Italic", "Bold", "Light", "SemiBold Condensed Italic".

Satu file font berisi satu gaya. Jika Anda mendesain Regular dan Bold, Anda punya dua font (atau satu [variable font](/reference/glossary/#variable-font) dengan sumbu ketebalan). Keduanya bernama keluarga "Nusantara Sans", yang satu bernama gaya "Regular" dan yang lain "Bold".

Untuk memberi nama font:

1. Buka **Font › Info Font…**.
2. Di **Nama keluarga**, ketik nama keluarganya, misalnya `Nusantara Sans`. Jangan masukkan gayanya.
3. Di **Nama gaya**, ketik gayanya, misalnya `Regular`.
4. Klik **OK**.

Saat tidak ada glyph yang dipilih, panel **Info Glyph** sekarang menampilkan keluarga dan gaya yang baru.

### Nama keluarga yang baik

- Buat nama keluarga yang pendek dan sederhana. Di beberapa menu, Windows hanya menampilkan 31 karakter nama keluarga, dan Periksa Font memberi peringatan bila nama Anda lebih panjang.
- Pakai huruf biasa, angka, dan spasi. Huruf beraksen (é, ñ) berfungsi di aplikasi modern, tetapi sebagian aplikasi lama menampilkannya keliru, sehingga Periksa Font menambahkan catatan.
- Jangan masukkan gaya ke nama keluarga ("Nusantara Sans Bold"). Gaya ditulis di nama gaya.
- Pilih nama yang belum dipakai font lain dan bukan merek dagang milik orang lain. Bab [Uji dan terbitkan](/production/testing-publishing/) membahas cara memilih nama.

### Cara aplikasi mengelompokkan gaya

Di sinilah banyak font pertama keliru. Aplikasi desktop lama, termasuk Word di Windows, menganggap satu keluarga paling banyak berisi empat font: **Regular**, **Italic**, **Bold**, dan **Bold Italic**. Desainer huruf menyebutnya gaya "RIBBI". Di aplikasi seperti itu, keempatnya tampil sebagai satu entri di menu font, dan tombol **B** serta **I** berpindah di antara mereka. Hubungan ini disebut *style linking* (penautan gaya).

Gaya lain, seperti Light, Medium, SemiBold, Black, atau Condensed, tidak bisa dicapai dengan tombol B dan I. Windows menampilkan masing-masing sebagai keluarga tersendiri: "Nusantara Sans Light", "Nusantara Sans SemiBold".

![Regular, Italic, Bold, dan Bold Italic berbagi satu entri di menu font Word; Light dan SemiBold masing-masing mendapat entri sendiri.](diagram:font-info-style-linking)

Anda tidak perlu mengatur semua ini sendiri. Saat ekspor, FontEasy melihat nama gaya Anda:

- Jika nama gayanya persis `Regular`, `Italic`, `Bold`, atau `Bold Italic`, font ditautkan ke keluarga dengan nama keluarga itu, sebagai gaya tersebut.
- Jika lainnya, misalnya `Light`, nama keluarga untuk menu lama ini menjadi "Keluarga Gaya" ("Nusantara Sans Light") dan font ditautkan di sana sebagai Regular-nya.

Aplikasi yang lebih baru (aplikasi Adobe, macOS, web) membaca set nama kedua yang lebih lengkap dan menampilkan seluruh keluarga bersama, dengan semua gayanya. FontEasy menulis kedua set nama itu.

:::tip
Agar penautan gaya berfungsi, tulis keempat gaya itu persis `Regular`, `Italic`, `Bold`, dan `Bold Italic`, dengan spasi di "Bold Italic". "BoldItalic" atau "Bold-Italic" dianggap gaya biasa yang berdiri sendiri.
:::

Jika Anda membuka font buatan program lain, font itu mungkin sudah punya nilai penautan gaya sendiri. Bila nilainya tidak cocok dengan nama gaya (misalnya font bernama "Bold" yang ditautkan sebagai Regular), **Font › Periksa Font…** melaporkan peringatan **Penautan gaya**, dan tombol **Perbaiki**-nya mengatur tautan sesuai nama gaya. Lihat [Memeriksa font](/production/quality/).

### Sudut miring

**Sudut miring** di kelompok Dimensi memberi tahu aplikasi seberapa miring huruf Anda. Nilai ini dipakai untuk memiringkan kursor teks dan menempatkan hal-hal yang perlu mengikuti kemiringan.

- Font tegak: biarkan kosong atau `0`.
- Font *italic* atau *oblique* (miring): angka derajat **negatif** untuk huruf yang condong ke kanan, misalnya `-12`.

Tanda minus ini sering mengejutkan, tetapi memang begitu aturannya: sudut diukur berlawanan arah jarum jam dari garis tegak, sedangkan huruf yang condong ke kanan bergerak searah jarum jam. Periksa Font menganggap sudut positif sebagai error. Periksa Font juga mengukur kemiringan batang lurus `l`, `I`, `H`, atau `d`, dan tombol **Perbaiki**-nya bisa menyalin sudut hasil ukuran ke kolom ini.

## Nama PostScript

[Nama PostScript](/reference/glossary/#postscript-name) adalah nama teknis pendek tanpa spasi yang mengenali satu gaya font Anda di dalam file dan printer: `NusantaraSans-Bold`. File PDF menyimpannya, dan aplikasi desain memakainya untuk menemukan font saat dokumen dibuka lagi.

Aturan nama PostScript:

- hanya karakter ASCII yang tercetak (tanpa huruf beraksen);
- tanpa spasi dan tanpa karakter `( ) [ ] { } < > / %`;
- paling banyak 63 karakter;
- biasanya ditulis `NamaKeluarga-NamaGaya`, tanpa spasi.

Kolomnya ada di kelompok **OpenType (kosong = otomatis)**. **Biarkan kosong** kecuali Anda punya alasan: FontEasy akan membuatnya dari nama keluarga dan nama gaya. Jika nama keluarga Anda berisi karakter yang tidak boleh ada di nama PostScript (misalnya huruf beraksen), karakter itu dibuang, dan Periksa Font menyarankan Anda mengetik nama PostScript sendiri.

:::caution
Jangan pernah memberi dua font berbeda nama PostScript yang sama, dan jangan mengubah nama PostScript font yang sudah dipakai orang. Aplikasi memakai nama ini untuk mengenali font. Dua font dengan satu nama membuat aplikasi bingung, dan nama yang berubah membuat dokumen lama kehilangan fontnya.
:::

## Versi

Setiap rilis font membawa nomor versi seperti `1.000`. Aplikasi menampilkannya di jendela informasi font, dan penginstal memakainya untuk membedakan salinan lama dari yang baru.

Di FontEasy, versi terdiri dari dua kolom di kelompok **Nama**:

- **Versi (mayor)**: angka sebelum titik. `1` untuk rilis resmi pertama, `2` bila font digambar ulang atau banyak berubah.
- **Versi (minor)**: angka sesudah titik, ditulis tiga digit. `0` menjadi `.000`, `1` menjadi `.001`, `10` menjadi `.010`, `100` menjadi `.100`.

Jadi mayor `1` dan minor `2` berarti versi 1.002. Font baru buatan FontEasy dimulai dari 1.000.

Versi yang diawali 0 (`0.500`) lazim dipakai untuk menandai versi uji atau "beta". Periksa Font menambahkan catatan agar Anda memakai 1.000 atau lebih untuk rilis sungguhan. Jika kolom versi kosong, font diekspor sebagai 0.000 dan Periksa Font memberi peringatan; tombol **Perbaiki**-nya mengisi 1.000.

Naikkan versi setiap kali Anda menerbitkan font yang berubah. Bab [Uji dan terbitkan](/production/testing-publishing/#nomor-versi-dan-pembaruan) menyarankan skema yang sederhana.

## Legal dan kredit

Kelompok **Legal dan kredit** berisi "teks label" font Anda. Tidak satu pun kolom ini mengubah tampilan font, tetapi orang membacanya, dan toko serta pustaka font sering mewajibkan sebagian di antaranya.

| Kolom | Yang ditulis |
|---|---|
| **Hak cipta** | Pemilik font, beserta tahunnya: `Copyright 2026 Ayu Lestari` |
| **Merek dagang** | Hanya jika nama font sudah Anda daftarkan sebagai merek dagang |
| **Desainer** | Nama orang yang mendesainnya |
| **URL desainer** | Situs web desainer |
| **Pembuat** | Orang atau studio yang menerbitkan font (sering sama dengan desainer) |
| **URL pembuat** | Situs webnya |
| **Lisensi** | Pernyataan singkat tentang cara font boleh dipakai |
| **URL lisensi** | Alamat web tempat lisensi lengkap bisa dibaca |
| **ID vendor** | Kode empat huruf untuk Anda atau studio Anda |
| **Deskripsi** | Satu-dua kalimat tentang font |
| **Catatan** | Catatan untuk diri sendiri; tetap tersimpan di source |

Beberapa di antaranya perlu sedikit penjelasan.

**Lisensi.** [Lisensi font](/reference/glossary/#font-license) menyatakan apa yang boleh dilakukan orang dengan font Anda: memasangnya, menyematkannya di dokumen, memakainya di situs web, mengubahnya, menjualnya. Jika Anda merilis font gratis dan *open source*, pilihan yang lazim adalah SIL Open Font License (OFL). Kolom Lisensi bisa diisi `This Font Software is licensed under the SIL Open Font License, Version 1.1.` dan URL lisensi `https://openfontlicense.org`. Jika Anda menjual font, tulis satu kalimat yang merujuk ke perjanjian lisensi Anda sendiri dan isi alamatnya di URL lisensi. Bab [Uji dan terbitkan](/production/testing-publishing/#melisensikan-font-anda) menjelaskan pilihannya.

**ID vendor.** Kode empat karakter yang menandai pembuat font, seperti `ADBO` untuk Adobe. Kolom ini opsional. Jika Anda ingin punya, pilih empat huruf atau angka dan pastikan belum dipakai orang lain; Microsoft menyimpan daftar publik ID vendor terdaftar tempat Anda bisa mendaftarkan milik Anda. Lebih dari empat karakter, atau huruf beraksen, dianggap error.

**Hak cipta** yang kosong menjadi peringatan di Periksa Font, sedangkan **Lisensi** dan **Desainer** menjadi catatan. Ketiganya tidak dibutuhkan agar font berfungsi, tetapi font tanpa keterangan itu membuat pemakainya menebak-nebak.

## Units per em

Setiap glyph di font Anda digambar pada kotak tak terlihat yang disebut [em](/reference/glossary/#em). [Units per em](/reference/glossary/#units-per-em) (UPM) adalah banyaknya unit di sepanjang satu sisi kotak itu: ukuran grid tempat Anda menggambar.

- `1000` adalah nilai paling umum dan bawaan FontEasy.
- `2048` lazim pada font TrueType dari tahun 1990-an, seperti Arial.
- Nilai lain berfungsi, tetapi tidak lazim.

Ketika teks diset 12 poin, tinggi em-nya 12 poin, sehingga dengan 1000 units per em satu unit sama dengan 0,012 poin. Semua nilai lain di Info Font (ascender, descender, tinggi) diukur dalam unit ini.

Units per em Anda pilih saat membuat font, di dialog **Font Baru**. Kolomnya memang ada di Info Font, tetapi pikirkan baik-baik sebelum mengubahnya:

:::caution
Mengubah **Units per em** di Info Font hanya mengubah angkanya. Gambar, metrics, dan kerning Anda **tidak** ikut diskalakan. Jika Anda mengubah 1000 menjadi 2048, setiap glyph mendadak tampak separuh ukurannya. Tentukan nilainya saat memulai font, lalu jangan diubah.
:::

## Metrics vertikal: setinggi apa satu baris?

Inilah bagian Info Font yang paling membingungkan, jadi mari pelan-pelan. Bagian ini layak dipahami, sebab metrics vertikal yang keliru menimbulkan dua masalah yang paling kelihatan: huruf terpotong di atas atau di bawah, dan baris teks yang terlalu rapat atau terlalu renggang.

### Ukuran-ukurannya

Anda sudah mengenal garis-garis ini saat menggambar (lihat [Dasar-dasar huruf](/start/type-basics/)):

- [baseline](/reference/glossary/#baseline) (garis dasar), tempat huruf berdiri, di angka 0;
- [tinggi-x](/reference/glossary/#x-height), puncak huruf kecil seperti `x`;
- [tinggi huruf kapital](/reference/glossary/#cap-height), puncak huruf besar seperti `H`;
- [ascender](/reference/glossary/#ascender), puncak huruf kecil yang tinggi seperti `h`, `k`, `l`;
- [descender](/reference/glossary/#descender), dasar huruf seperti `g`, `p`, `y`, ditulis negatif karena berada di bawah baseline.

Di Info Font, semuanya adalah kolom **Ascender**, **Descender**, **Tinggi huruf kapital**, dan **Tinggi-x** di kelompok **Dimensi**. Font baru FontEasy dengan 1000 units per em dimulai dengan ascender 750, descender −250, tinggi huruf kapital 700, dan tinggi-x 500.

Tinggi huruf kapital dan tinggi-x dipakai untuk perataan dan oleh [hinting](/reference/glossary/#hinting). Keduanya harus cocok dengan huruf Anda yang sebenarnya. Periksa Font membandingkannya dengan puncak `H` dan `x` yang sesungguhnya, dan bila selisihnya lebih dari 1% em, tombol **Perbaiki**-nya mengisi nilai hasil ukuran huruf.

### Tinggi baris

Ketika aplikasi menyusun beberapa baris teks, ia perlu tahu seberapa jauh jarak antarbaris. Font memberitahunya dengan tiga angka:

- ruang yang disisakan **di atas** baseline (nilai ascender);
- ruang yang disisakan **di bawah** baseline (nilai descender);
- ruang tambahan di antara baris (*[line gap](/reference/glossary/#line-gap)*, celah antarbaris).

Jumlahkan ketiganya dan Anda mendapat tinggi baris bawaan: jarak dari satu baseline ke baseline berikutnya. Tipografer menyebut jarak ini *[leading](/reference/glossary/#leading)*, dari bilah timah (*lead*) yang dulu diselipkan pencetak di antara baris huruf logam.

![Dua baris teks: setiap baris memakai ascender dan descender-nya, line gap berada di antaranya, dan bersama-sama membentuk tinggi baris 1200 unit.](diagram:font-info-line-height)

Dengan nilai bawaan FontEasy, satu baris setinggi 750 + 250 + 200 = 1200 unit, yaitu 1,2 kali ukuran huruf. Pada 10 poin, jarak antarbarisnya 12 poin. Itu nilai bawaan yang nyaman untuk kebanyakan huruf teks.

Pemakai tetap bisa mengubah spasi baris di aplikasinya (di Word misalnya spasi 1,0, 1,15, atau 2,0). Angka di font menentukan arti "spasi tunggal".

### Tiga set angka yang sama

Inilah bagian yang membingungkan. Karena alasan sejarah, file font tidak menyimpan nilai-nilai ini sekali, tetapi **tiga kali**, di tiga tempat berbeda, dan sistem yang berbeda membaca set yang berbeda:

| Set | Di Info Font | Terutama dibaca oleh |
|---|---|---|
| **Typo** ("tipografis") | **Ascender typo**, **Descender typo**, **Line gap typo** | Aplikasi yang lebih baru, dan aplikasi lain bila font memintanya |
| **hhea** | **Ascender hhea**, **Descender hhea**, **Line gap hhea** | macOS dan iOS |
| **Windows** (win) | **Ascent Windows**, **Descent Windows** | Windows, termasuk Word dan kebanyakan aplikasi desktop |

Set Windows tidak punya line gap. Windows langsung memakai ascent + descent sebagai tinggi baris. Perhatikan juga bahwa **Descent Windows** ditulis positif (250), sedangkan descender lain negatif (−250).

Jika ketiga set tidak sepakat, jarak baris font Anda berbeda di Windows dan di Mac, dan berbeda lagi di sebagian aplikasi. Itulah asal keluhan "jarak barisnya terlalu renggang di Mac".

### Yang dilakukan FontEasy bila kolom dikosongkan

Semua kolom Typo, hhea, dan Windows ada di kelompok **OpenType (kosong = otomatis)**, dan untuk kebanyakan font sebaiknya dibiarkan kosong. Saat ekspor, FontEasy (melalui *compiler* [fontc](https://github.com/googlefonts/fontc) yang dipakainya) menghitungnya dari ascender, descender, dan units per em Anda, dengan cara yang sama seperti perangkat ufo2ft yang banyak dipakai:

1. Tinggi baris dibuat 1,2 kali units per em.
2. Nilai **Typo** adalah ascender dan descender Anda, dan line gap typo adalah sisanya sampai 1,2 em.
3. Ascender **hhea** adalah ascender Anda ditambah line gap itu, descender hhea adalah descender Anda, dan line gap hhea 0.
4. Ascent **Windows** sama dengan ascender hhea, dan descent Windows adalah descender Anda tanpa tanda minus.

Untuk font baru dengan 1000 units per em, ascender 750, dan descender −250, hasilnya:

![Tiga set untuk font baru FontEasy: Typo 750, 250, dan line gap 200; hhea dan Windows 950 dan 250. Ketiganya berjumlah 1200.](diagram:font-info-three-sets)

Ketiga set berjumlah 1200 unit, jadi jarak baris sama di mana pun. Ruang line gap berada di atas ascender pada set hhea dan Windows, sehingga baris pertama di kotak teks mendapat sedikit ruang di atasnya.

### Mengapa huruf terpotong

Windows melakukan sesuatu yang tidak dilakukan sistem lain: di banyak aplikasi, Windows **memotong** apa pun yang digambar di atas ascent Windows atau di bawah descent Windows. Jika aksen pada huruf kapital menjulang lebih tinggi dari ascent Windows, puncaknya hilang begitu saja di Word.

![Di kiri, ascent Windows 750 dan puncak aksen akut pada Á terpotong; di kanan, nilainya 950 dan seluruh huruf tampil.](diagram:font-info-clipping)

Masalah ini mudah terjadi. Huruf kapital beraksen (`Á`, `Ê`, `Ö`), huruf Vietnam dengan dua aksen bertumpuk, dan *swash* (hiasan) yang tinggi menjulang jauh di atas tinggi huruf kapital. Descender yang dalam, atau cedilla di bawah `Ç`, bisa turun lebih rendah dari descender.

Dengan kolom kosong, nilai bawaan biasanya menyisakan cukup ruang: pada contoh di atas, ascent Windows 950 lebih tinggi dari huruf kapital beraksen kebanyakan desain. Tetapi jika Anda mengetik nilai yang lebih kecil sendiri, atau aksen Anda tinggi, puncaknya bisa terpotong.

FontEasy memeriksanya untuk Anda. **Font › Periksa Font…** membuat font Anda lalu membandingkan ascent dan descent Windows dengan titik tertinggi dan terendah semua glyph. Jika ada yang mencuat, muncul error **Terpotong di Windows**, misalnya "Glyph membentang dari -271 sampai 1003, tetapi Windows hanya menampilkan dari -250 sampai 950." Tombol **Perbaiki**-nya menaikkan ascent dan descent Windows secukupnya agar menampung semua glyph.

### Mengapa baris bertabrakan atau terlalu renggang

Menaikkan nilai Windows untuk mencegah huruf terpotong membuat jarak baris di Windows lebih besar (ingat, Windows memakai ascent + descent sebagai tinggi baris). Kini Windows dan macOS tidak sepakat. Periksa Font menyadari hal ini juga: catatan **Jarak baris sama di semua sistem** berbunyi, misalnya, "Jarak baris 1200 unit di macOS (hhea) dan 1274 di Windows (winAscent + winDescent)." Tombol **Perbaiki**-nya menyalin nilai Windows ke kolom hhea, sehingga kedua sistem kembali memberi jarak baris yang sama.

Masalah sebaliknya, baris yang bertabrakan, terjadi bila nilainya terlalu kecil: jika font menyatakan barisnya hanya berjarak 1000 unit padahal hurufnya, beserta aksen, setinggi 1250 unit, aksen satu baris menyentuh descender baris di atasnya. Membiarkan kolom kosong, atau menjaga tinggi baris sekitar 1,2 em atau sedikit lebih, mencegah hal ini.

Jika Anda mengisi nilai Typo dan hhea sendiri, beri kedua set angka yang sama. Bila berbeda, Periksa Font menampilkan catatan **Tabel jarak baris**, dan **Perbaiki**-nya menyalin nilai Typo ke kolom hhea.

### Mengatur metrics vertikal sendiri

Biasanya nilai otomatis ditambah perbaikan dari Periksa Font sudah cukup. Jika Anda ingin mengaturnya sendiri, misalnya agar *display font* (font judul) punya jarak baris lebih rapat, ikuti langkah berikut:

1. Pilih **Font › Periksa Font…** (<kbd>F7</kbd>) dan catat error **Terpotong di Windows** bila ada. Pesannya menyebut titik terendah dan tertinggi glyph Anda.
2. Buka **Font › Info Font…** dan gulir ke kelompok **OpenType (kosong = otomatis)**.
3. Isi **Ascent Windows** minimal setinggi titik tertinggi, dan **Descent Windows** minimal sedalam titik terendah (sebagai angka positif).
4. Tentukan tinggi baris yang Anda inginkan. Isi **Ascender typo** dan **Ascender hhea** dengan nilai yang sama, serta **Descender typo** dan **Descender hhea** dengan nilai negatif yang sama, sehingga ascender − descender sama dengan tinggi baris itu dan sama dengan Ascent Windows + Descent Windows. Isi kedua line gap dengan `0`.
5. Klik **OK**, lalu jalankan **Periksa Font** lagi. Temuan **Terpotong di Windows**, **Tabel jarak baris**, dan **Jarak baris sama di semua sistem** seharusnya hilang.
6. Uji dengan beberapa baris teks beraksen, sebisa mungkin di aplikasi Windows (lihat [Uji dan terbitkan](/production/testing-publishing/)).

:::tip
Line gap selain 0 sah, tetapi sebagian aplikasi mengabaikannya, sehingga jarak baris jadi berbeda antaraplikasi. Itu sebabnya kebanyakan font modern memasukkan semua ruang ke ascender dan descender, dengan line gap 0. Periksa Font menambahkan catatan **Line gap** bila nilai Anda bukan 0.
:::

## Weight class

Aplikasi mengurutkan gaya dalam satu keluarga dari yang tipis ke yang tebal, dan CSS di web memilih gaya dengan angka antara 1 dan 1000. Angka itulah *weight class*. Nilai bakunya:

| Weight class | Nama gaya yang lazim |
|---|---|
| 100 | Thin, Hairline |
| 200 | ExtraLight |
| 300 | Light |
| 400 | Regular |
| 500 | Medium |
| 600 | SemiBold |
| 700 | Bold |
| 800 | ExtraBold |
| 900 | Black, Heavy |

Kolom **Weight class** ada di kelompok **OpenType (kosong = otomatis)**. Jika dibiarkan kosong, font diekspor dengan weight class 400. Itu benar untuk Regular atau Italic, tetapi salah untuk ketebalan lain.

Jadi, untuk setiap gaya yang ketebalannya bukan Regular:

1. Buka **Font › Info Font…**.
2. Ketik angkanya di **Weight class**, misalnya `700` untuk Bold atau `300` untuk Light.
3. Klik **OK**.

Anda tidak perlu menghafal tabel itu. **Font › Periksa Font…** membaca nama gaya Anda dan, jika weight class-nya tidak cocok, melaporkan **Weight class**: "Gaya “Bold” menunjukkan weight class 700, tetapi nilainya 400." Klik **Perbaiki** dan FontEasy mengisi 700. Hal yang sama berlaku untuk *width class* (Condensed, Expanded, dan seterusnya), yang tidak punya kolom di Info Font tetapi diatur oleh perbaikannya.

Weight class juga yang masuk ke baris `font-weight` di file CSS yang bisa ditulis FontEasy untuk font web; lihat [Mengekspor font](/production/export/#css-untuk-font-web).

## Contoh lengkap

Ayu sudah menggambar Regular dan Bold dari keluarga yang ia namai "Nusantara Sans". Begini cara ia mengisi Info Font untuk Bold:

| Kolom | Nilai |
|---|---|
| Nama keluarga | `Nusantara Sans` |
| Nama gaya | `Bold` |
| Versi (mayor) / (minor) | `1` / `0` |
| Units per em | `1000` (tidak diubah) |
| Ascender / Descender | `750` / `-250` (tidak diubah) |
| Tinggi huruf kapital / Tinggi-x | diukur oleh perbaikan Periksa Font |
| Nama PostScript | kosong (menjadi `NusantaraSans-Bold`) |
| Weight class | `700` |
| Kolom Typo, hhea, dan Windows | kosong |
| Hak cipta | `Copyright 2026 Ayu Lestari` |
| Desainer | `Ayu Lestari` |
| Lisensi | `This Font Software is licensed under the SIL Open Font License, Version 1.1.` |
| URL lisensi | `https://openfontlicense.org` |

Lalu ia menjalankan **Font › Periksa Font…**. Muncul error **Terpotong di Windows** karena `Ǻ` miliknya mencapai 980 unit; ia mengklik **Perbaiki**, lalu **Perbaiki** lagi pada catatan **Jarak baris sama di semua sistem** yang kemudian muncul. Di Word, kedua fontnya kini tampil sebagai satu keluarga, tombol **B** berpindah di antara keduanya, dan aksennya utuh.

## Kesalahan umum

:::caution[Gaya di dalam nama keluarga]
Nama keluarga "Nusantara Sans Bold" dengan nama gaya "Regular" membuat Windows menganggap Bold itu keluarga terpisah, sehingga tombol **B** tidak bisa mencapainya. Tulis nama keluarga di **Nama keluarga** dan gaya di **Nama gaya**.
:::

:::caution[Mengganti nama setelah rilis]
Jika font Anda sudah dipakai orang, pertahankan nama keluarga, nama gaya, dan nama PostScript-nya. Mengubahnya membuat aplikasi mengira itu font lain, dan dokumen yang memakai font lama kehilangan fontnya. Naikkan nomor versinya saja.
:::

:::caution[Menyalin metrics dari font lain]
Metrics vertikal yang disalin dari font dengan desain berbeda (aksen lebih tinggi, descender lebih dalam) bisa memotong huruf Anda atau membuat jarak baris aneh. Mulailah dari nilai otomatis dan biarkan Periksa Font memandu Anda.
:::

## Ringkasan

- **Font › Info Font…** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>I</kbd>) berisi nama, versi, dimensi, nilai jarak baris, dan kredit font Anda dalam empat kelompok. Kolom kosong diisi otomatis saat ekspor.
- **Nama keluarga** dipakai bersama semua gaya; **nama gaya** menyebutkan font yang mana. Regular, Italic, Bold, dan Bold Italic ditautkan menjadi satu entri menu; gaya lain mendapat entri sendiri. FontEasy mengatur penautannya dari nama gaya.
- Biarkan **nama PostScript** kosong kecuali butuh nama khusus; jangan pernah memakainya dua kali atau mengubahnya.
- **Versi** berbentuk mayor.minor dengan tiga digit di belakang titik; mulailah dari 1.000 dan naikkan setiap rilis.
- Isi setidaknya **Hak cipta**, **Desainer**, dan **Lisensi** (dengan **URL lisensi**).
- **Units per em** adalah ukuran grid gambar Anda; mengubahnya tidak menskalakan apa pun.
- Tinggi baris = ascender + descender + line gap. Font menyimpannya tiga kali (Typo, hhea, Windows). Biarkan kolomnya kosong dan FontEasy membuat ketiganya sepakat pada 1,2 em.
- Windows memotong apa pun di luar ascent dan descent Windows; Periksa Font menemukan dan memperbaikinya.
- Isi **weight class** untuk setiap gaya yang ketebalannya bukan Regular, atau biarkan Periksa Font memperbaikinya.

## Coba sendiri

1. Buka font Anda, pilih **Font › Info Font…**, lalu isi nama keluarga, nama gaya, hak cipta, desainer, dan lisensi. Klik **OK**, tekan <kbd>F7</kbd>, dan lihat temuan mana di bagian **Nama dan kredit** yang hilang.
2. Ubah nama gaya menjadi `Bold` tanpa menyentuh weight class. Jalankan **Periksa Font** lagi, baca peringatan **Weight class**, lalu klik **Perbaiki**. Buka Info Font dan lihat nilai yang diisi FontEasy. Kemudian tekan <kbd>Ctrl</kbd>+<kbd>Z</kbd> dua kali untuk mengembalikan semuanya.
