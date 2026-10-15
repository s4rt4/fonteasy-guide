---
title: Fitur OpenType
description: Apa itu fitur OpenType, bagaimana FontEasy membuatnya dari nama glyph, dan cara menulis, memeriksa, serta menguji kode fitur.
---

Font modern lebih dari sekadar kotak berisi bentuk huruf. Font juga bisa membawa sedikit
kecerdasan: saat seseorang mengetik `f` dan `i`, font bisa menampilkan satu `ﬁ` yang menyatu;
saat pengguna meminta huruf kapital kecil, font menukar setiap huruf kecil dengan *small caps*;
saat teksnya berbahasa Turki, font bisa memakai bentuk huruf khas Turki. Perilaku cerdas seperti
ini disebut *[OpenType features](/reference/glossary/#opentype-feature)* (fitur OpenType).

Fitur mungkin terdengar seperti topik untuk ahli, tetapi FontEasy membuatkan fitur-fitur yang umum
untuk Anda. Bila glyph Anda diberi nama dengan cara yang lazim (`a.sc` untuk small caps `a`, `f_i`
untuk ligatur `fi`), fiturnya muncul dengan sendirinya dan selalu diperbarui saat Anda menambah
glyph. Bila Anda menginginkan lebih, Anda bisa menulis kode fitur di editor bawaan, atau menyusun
aturan secara visual di [tampilan Lookup](/opentype/lookups/).

Dalam bab ini Anda akan mempelajari:

- apa itu fitur OpenType, dengan gambar ligatur, small caps, alternatif, dan gaya angka;
- tag fitur yang umum, dari `liga` sampai `ss01`;
- bagaimana FontEasy menulis fitur dari nama glyph, dan aturan penamaan yang diikutinya;
- cara memakai tab Fitur, tampilan Kode, dan tampilan Mode Sederhana;
- dasar-dasar kode fitur (FEA), dengan contoh-contoh kecil;
- arti error dan peringatan, serta cara memperbaikinya;
- cara menguji fitur di Pratinjau, termasuk untuk bahasa lain.

## Apa itu fitur OpenType

Untuk memahami fitur, Anda perlu satu gagasan: **karakter** dan **glyph** bukan hal yang sama.

- *[Character](/reference/glossary/#character)* (karakter) adalah apa yang Anda ketik: huruf "f",
  dengan kode [Unicode](/reference/glossary/#unicode) `U+0066`. File teks menyimpan karakter.
- *[Glyph](/reference/glossary/#glyph)* adalah gambar di dalam font. Satu karakter biasanya
  dipetakan ke satu glyph, tetapi font bisa punya banyak glyph untuk karakter yang sama (`a` biasa,
  `a` small caps, `a` alternatif) dan glyph yang sama sekali bukan satu karakter (ligatur `f_i`).

Saat aplikasi menampilkan teks, ia lebih dulu mengubah setiap karakter menjadi glyph bawaannya.
Kemudian fitur-fitur font bisa **menukar** glyph dengan glyph lain, atau **menggeser**-nya. Proses
ini disebut *[shaping](/reference/glossary/#shaping)* (pembentukan teks). Teksnya sendiri tidak
pernah berubah: bila Anda menyalin kata yang disusun dengan ligatur `ﬁ`, yang tersalin tetap dua
huruf `f` dan `i`.

Fitur ada dua jenis:

- Fitur **substitusi** menukar glyph. Tempatnya di tabel *[GSUB](/reference/glossary/#gsub)*
  (substitusi glyph) di dalam font. Ligatur, small caps, alternatif, dan gaya angka adalah
  substitusi.
- Fitur **posisi** menggeser glyph. Tempatnya di tabel *[GPOS](/reference/glossary/#gpos)* (posisi
  glyph). Kerning dan penempatan aksen termasuk posisi.

Sebagian fitur **aktif secara bawaan**: setiap aplikasi yang mendukung OpenType menerapkannya tanpa
diminta, misalnya ligatur standar (`liga`), kerning (`kern`), dan bentuk lokal (`locl`). Sebagian
lagi **opsional**: pengguna menyalakannya di aplikasinya, misalnya small caps (`smcp`), angka gaya
lama (`onum`), atau stylistic set (`ss01`). Caranya bergantung pada aplikasi: panel tipografi di
program desain, menu pengaturan font, atau CSS di web.

### Ligatur

*[Ligature](/reference/glossary/#ligature)* (ligatur) adalah satu glyph yang menggantikan dua glyph
atau lebih. Contoh klasiknya `f` yang diikuti `i`: di banyak font berserif, kait `f` menabrak titik
`i`, sehingga desainer huruf menggambar `ﬁ` yang menyatu.

![Di kiri, f dan i disusun sebagai dua glyph, dengan kait f menabrak titik i; di kanan, fitur liga menggantinya dengan satu glyph ligatur, f_i.](diagram:features-ligature)

- **Ligatur standar** (`liga`) memperbaiki tabrakan seperti ini. Fitur ini aktif secara bawaan.
- **Ligatur diskresioner** (`dlig`) bersifat hiasan, seperti `ct` atau `st` yang menyambung.
  Pengguna yang menyalakannya.

### Small caps

*[Small caps](/reference/glossary/#small-caps)* (kapital kecil) adalah huruf kapital yang digambar
kira-kira setinggi huruf kecil, dengan goresan setebal huruf kecil. Small caps dipakai untuk
singkatan (`NASA`, `UNESCO`) dan judul yang tidak boleh terkesan berteriak.

![Small Caps disusun tiga cara: tanpa fitur, dengan smcp aktif (huruf kecil menjadi small caps), dan dengan smcp ditambah c2sc aktif (huruf kapital ikut menjadi small caps).](diagram:features-small-caps)

- `smcp` mengubah **huruf kecil** menjadi small caps.
- `c2sc` mengubah **huruf kapital** menjadi small caps.

Small caps bukan huruf kapital yang dikecilkan: kapital yang diperkecil sampai tinggi-x tampak tipis
dan lemah di samping huruf kecil. FontEasy bisa menggambarkan versi pertamanya untuk Anda dengan
**Font › Buat Small Caps…** (lihat [Otomasi](/advanced/automation/)).

### Alternatif dan stylistic set

*[Alternate](/reference/glossary/#alternate)* (alternatif) adalah gambar lain dari huruf yang sama:
`g` dengan ekor terbuka, `a` bertingkat satu, `Q` dengan ekor panjang.

- **Alternatif gaya** (`salt`) menawarkan alternatif satu huruf demi satu huruf.
- *[Stylistic set](/reference/glossary/#stylistic-set)* (`ss01` sampai `ss20`) mengganti sekelompok
  huruf sekaligus, sehingga pengguna bisa memilih "set 1" untuk tampilan yang lebih bulat.
- **Character variant** (`cv01` sampai `cv99`) menawarkan varian untuk satu karakter tertentu.
- **Semua Alternatif** (`aalt`) mengumpulkan setiap alternatif sebuah glyph, sehingga aplikasi bisa
  menampilkan semuanya di palet glyph.

### Gaya angka dan bentuk peka kapital

Angka bisa hadir dalam beberapa gaya. Angka **lining** (`lnum`) setinggi huruf kapital; angka
**gaya lama** (`onum`) naik turun seperti huruf kecil dan menyatu dengan teks. Setiap gaya bisa
**tabular** (`tnum`, semua angka sama lebar, untuk tabel) atau **proporsional** (`pnum`); lihat
[Spasi dan Metrics](/spacing/metrics/#angka-tabular-dan-proporsional).

![Tiga fitur bekerja: onum mengubah 2026 menjadi angka gaya lama, zero memberi garis miring pada nol, dan case menaikkan kurung serta tanda hubung di (H-O) agar serasi dengan huruf kapital.](diagram:features-figures)

- `zero` mengganti `0` dengan nol bergaris, agar tidak tertukar dengan huruf `O`.
- `case` (bentuk peka kapital) menaikkan tanda baca seperti kurung dan tanda hubung, agar duduk
  serasi di antara huruf kapital.
- `frac` mengubah `1/2` menjadi pecahan sungguhan; `sups` dan `subs` memberi angka superskrip dan
  subskrip; `numr` dan `dnom` adalah pembilang dan penyebut, bahan penyusun pecahan; `ordn`
  mengubah `a` dan `o` setelah angka menjadi bentuk ordinal (`1ª`, `2º`).

### Bentuk lokal

Sebagian bahasa menulis huruf tertentu secara berbeda. Bahasa Turki punya `İ` kapital bertitik,
sehingga small caps atau ligatur dengan `i` harus mempertahankan titiknya; bahasa Rumania lebih
menyukai koma di bawah `ș` daripada cedilla. **Bentuk lokal** (`locl`) memasang glyph yang tepat bila
teks ditandai berbahasa itu. Font harus mendeklarasikan setiap bahasa dalam
*[language system](/reference/glossary/#language-system)* (sistem bahasa).

### Kerning dan mark juga fitur

Kerning Anda menjadi fitur `kern`, dan [anchor](/reference/glossary/#anchor) yang menempatkan aksen
menjadi fitur `mark` dan `mkmk`. Anda tidak pernah menulisnya sendiri: compiler membangunnya dari
pasangan kerning dan anchor saat font dibuat.

## Tag fitur yang umum

Setiap fitur punya **tag** empat huruf. Inilah yang paling sering Anda temui:

| Tag | Nama | Fungsinya | Bawaan |
|---|---|---|---|
| `liga` | Ligatur Standar | `f i` → `ﬁ` di tempat huruf bertabrakan | aktif |
| `dlig` | Ligatur Diskresioner | ligatur hiasan seperti `ct` | mati |
| `calt` | Alternatif Kontekstual | menukar glyph menurut tetangganya | aktif |
| `smcp` | Small Caps | huruf kecil → small caps | mati |
| `c2sc` | Small Caps dari Kapital | huruf kapital → small caps | mati |
| `ss01`–`ss20` | Stylistic Set 1–20 | sekelompok alternatif | mati |
| `salt` | Alternatif Gaya | satu alternatif sekali waktu | mati |
| `locl` | Bentuk Lokal | bentuk khusus sebuah bahasa | aktif |
| `case` | Bentuk Peka Kapital | tanda baca untuk huruf kapital | mati |
| `onum` / `lnum` | Angka Gaya Lama / Angka Lining | gaya tinggi angka | mati |
| `tnum` / `pnum` | Angka Tabular / Angka Proporsional | gaya lebar angka | mati |
| `frac` | Pecahan | `1/2` → ½ | mati |
| `sups` / `subs` | Superskrip / Subskrip | angka naik dan turun | mati |
| `zero` | Nol Bergaris | `0` dengan garis miring | mati |
| `kern` | Kerning | pasangan kerning Anda | aktif |
| `mark` | Posisi Tanda | aksen di atas hurufnya | aktif |
| `aalt` | Semua Alternatif | mendaftar setiap alternatif | mati |

"Bawaan" menyatakan apakah aplikasi menerapkan fitur itu tanpa diminta. Pratinjau di FontEasy
menampilkan fitur-fitur bawaan dalam keadaan aktif.

## Fitur dari nama glyph

Anda jarang perlu menulis kode fitur di FontEasy. FontEasy membaca nama glyph Anda dan menuliskan
fiturnya. Nama glyph terdiri atas dua bagian: nama dasar, dan setelah titik, sebuah **suffix**
(akhiran). Suffix menyatakan untuk apa glyph itu.

| Nama glyph | Fitur |
|---|---|
| `a.sc` (juga `.smcp`) | `smcp`: `a` → `a.sc` |
| `A.sc`, `A.c2sc` | `c2sc`: huruf kapital dengan small caps sendiri |
| `f_i`, `f_f_l` | `liga`: bagian-bagian yang disambung `_` menjadi satu glyph |
| `c_t.dlig`, `s_t.hlig` | `dlig`, `hlig` (ligatur historis) |
| `a.ss01` … `a.ss20` | stylistic set `ss01` … `ss20` |
| `a.cv01` … `a.cv99` | character variant `cv01` … `cv99` |
| `g.alt`, `g.alt2`, `g.salt` | `salt` |
| `one.osf`, `one.lf` | `onum`, `lnum` |
| `one.tf`, `one.pf` | `tnum`, `pnum` |
| `hyphen.case` | `case` |
| `zero.zero` | `zero` |
| `one.sups`, `one.subs`, `one.sinf` | `sups`, `subs`, `sinf` |
| `one.numr`, `one.dnom` | `numr`, `dnom` (dan `frac`, lihat di bawah) |
| `ordfeminine`, `ordmasculine` | `ordn` |
| `i.loclTRK`, `Scommaaccent.loclROM` | `locl` untuk bahasa itu |
| `.init`, `.medi`, `.fina`, `.isol` | bentuk posisional untuk aksara bersambung |

Aturan yang diikuti FontEasy:

- **Glyph dasarnya harus ada.** `a.sc` hanya menghasilkan fitur bila font punya `a`. Untuk ligatur,
  *setiap* bagiannya harus ada: `f_f_l` butuh `f` dan `l`.
- **Ligatur yang lebih panjang didahulukan**, sehingga `f_f_i` menang atas `f_f` saat Anda mengetik
  "ffi".
- **Small caps untuk huruf kapital.** Huruf kapital yang punya glyph `.sc` (`A.sc`) masuk ke `c2sc`.
  Bila small caps Anda dinamai menurut huruf kecil (`a.sc`) dan huruf kapitalnya tidak punya small
  caps sendiri, huruf kapital memakai milik huruf kecil: `A` → `a.sc`.
- **Beberapa alternatif.** Bila sebuah glyph punya lebih dari satu alternatif (`g.alt` dan
  `g.alt2`), `salt` menawarkan semuanya sebagai pilihan.
- **Pecahan.** Bila font punya glyph `fraction` dan angka dengan bentuk `.numr` sekaligus `.dnom`,
  FontEasy menulis `frac`: garis miring menjadi garis pecahan, angka sebelumnya menjadi pembilang,
  dan angka sesudahnya menjadi penyebut.
- **Ordinal.** Bila font punya `ordfeminine` (ª) atau `ordmasculine` (º), `ordn` mengubah `a` atau
  `o` setelah angka menjadi glyph itu.
- **Bentuk lokal** memakai tag bahasa OpenType setelah `locl`: `TRK` Turki, `ROM` Rumania, dan
  seterusnya. FontEasy menambahkan sistem bahasa yang dibutuhkan, dan bahasa yang berbagi bentuk
  ikut mendapatkannya: bentuk Turki juga berlaku untuk Azerbaijan, Tatar Krimea, Kazakh, dan Tatar;
  bentuk Rumania juga untuk Moldova.
- **Semua Alternatif** (`aalt`) dibuat dari semua substitusi satu-ke-satu di atas.
- `kern`, `mark`, `mkmk`, dan `curs` tidak ditulis dari nama; compiler membangunnya dari kerning dan
  anchor Anda.

:::tip[Biarkan FontEasy membuat glyph-nya]
**Font › Buat Small Caps…** menggambar `a.sc`, `b.sc`, … dari huruf kapital Anda, dan fitur small
caps mengikuti dengan sendirinya. **Glyph › Ganti Nama Glyph…** (<kbd>F2</kbd>) mengganti nama dan
memperbarui komponen, grup kerning, dan pasangan kerning yang memakainya; fitur otomatis ikut
menyesuaikan pada penyegaran berikutnya.
:::

### Tempat kode otomatis

FontEasy menulis fitur otomatis ke file fitur milik font itu sendiri, `features.fea`, sehingga font
dibangun dengan hasil yang sama di alat lain mana pun. Setiap fitur otomatis berada di antara dua
komentar penanda:

```fea
# automatic smcp 1a2b3c4d
feature smcp {
    sub a by a.sc;
    sub b by b.sc;
} smcp;
# end automatic smcp
```

Angka setelah tag adalah nilai pemeriksa untuk kode di bawahnya. FontEasy menyegarkan blok-blok
ini:

- saat Anda menyimpan font;
- saat font dikompilasi (untuk Pratinjau, pengujian, dan ekspor);
- saat Anda membuka tab Fitur;
- saat Anda memilih **Fitur › Perbarui Fitur Otomatis**.

Penyegaran menulis ulang blok yang tidak diubah sesuai glyph Anda, menambah blok untuk fitur baru,
dan menghapus blok yang glyph-nya sudah tidak ada. Penyegaran tidak menambah langkah di riwayat
undo. Status bar memberi tahu apakah ada yang berubah.

FontEasy juga menyusun blok-blok itu dalam urutan yang masuk akal (bentuk lokal, lalu angka, lalu
small caps, lalu ligatur), karena urutan fitur di file adalah urutan aturan-aturannya dijalankan.

### Mengambil alih fitur otomatis

Kadang Anda ingin mengubah fitur otomatis secara manual, misalnya untuk menambah satu aturan.
Caranya:

- **Edit kodenya.** Begitu kode di dalam sebuah blok tidak lagi cocok dengan nilai pemeriksanya,
  FontEasy menganggapnya kode Anda: penandanya dihapus dan blok itu tidak pernah dibuat ulang.
- Atau klik kanan fitur itu di daftar fitur lalu pilih **Edit Manual**. Ini mempertahankan kode
  saat ini apa adanya dan berhenti memperbaruinya dari nama glyph.

Fitur yang Anda tulis sendiri tidak pernah ditimpa. Bila file Anda sudah punya blok
`feature smcp` buatan sendiri, FontEasy menyerahkan small caps kepada Anda.

### Mematikan fitur

Bila Anda tidak menginginkan sebuah fitur, hapus centang kotaknya di daftar fitur. Glyph-nya tetap
ada di font, tetapi fiturnya tidak dibuat. Centang lagi untuk mengembalikannya.

## Tab Fitur

Pilih **Fitur › Fitur** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>F</kbd>). Tab **Fitur** terbuka di
samping Ikhtisar, dan fitur otomatis langsung disegarkan.

![Menu Fitur dengan Fitur, Perbarui Fitur Otomatis, dan Periksa Fitur.](screen:g-menu-features)

Di Mode Pro, tab ini berisi daftar fitur di kiri dan tiga tampilan di kanan: **Kode**, **Lookup**,
dan **Inspektor**. Bab ini membahas tampilan Kode; dua lainnya dijelaskan di
[Lookup dan Inspektor Shaping](/opentype/lookups/).

### Daftar fitur

Setiap baris daftar menampilkan tag, nama fitur, dan sebuah lencana yang menyatakan asal fitur
itu:

- **auto**: dibuat dari nama glyph dan selalu diperbarui. Edit kodenya untuk mengambil alih.
- **mati**: dimatikan; glyph-nya ada di font, tetapi fiturnya tidak dibuat.
- **manual**: ditulis manual di kode fitur.
- **dibuat**: dibuat saat font dikompilasi, dari pasangan dan grup kerning (`kern`) atau dari anchor
  (`mark`, `mkmk`, `curs`).

Fitur otomatis punya kotak centang untuk menyalakan dan mematikannya. Arahkan kursor ke sebuah baris
untuk melihat glyph yang dipakai fitur itu. Klik baris untuk melompat ke kodenya. Klik kanan untuk
**Tampilkan Kode** dan, untuk fitur otomatis, **Edit Manual**. Tombol kecil berbentuk kilau di atas
daftar memperbarui fitur otomatis dari nama glyph.

### Tampilan Kode

Tampilan **Kode** adalah editor teks untuk `features.fea`, dengan nomor baris dan warna: kata kunci,
`@kelas`, angka, dan komentar masing-masing punya warna sendiri, dan penanda blok otomatis
ditampilkan miring.

![Tab Fitur Mutator Sans di Mode Pro: daftar fitur dengan lencana auto, manual, dan dibuat, tampilan Kode dengan fitur calt buatan tangan dan blok-blok otomatis, serta error di baris 4: glyph not in font.](screen:features)

Setiap perubahan yang Anda ketik langsung diterapkan ke font. Ketikan beruntun digabung menjadi
satu langkah, jadi <kbd>Ctrl</kbd>+<kbd>Z</kbd> membatalkan satu rangkaian ketikan, bukan satu
huruf demi satu huruf.

### Fitur di Mode Sederhana

Di Mode Sederhana, tab Fitur lebih ringkas. Setiap fitur tampil sebagai satu kartu, dengan nama yang
mudah dipahami, tag-nya, dan glyph yang dipakainya, serta kotak centang untuk mematikan fitur
otomatis. Fitur yang dibuat compiler, seperti Kerning, menampilkan tanda centang dan penjelasan
singkat.

![Tab Fitur di Mode Sederhana: kartu untuk Semua Alternatif, Bentuk Lokal, Small Caps dari Kapital, Stylistic Set 1, Kerning, dan Ligatur Standar, masing-masing dengan glyph-nya.](screen:features-simple)

Di bawah kartu-kartu itu, tabel **Cara menamai glyph** mengingatkan Anda pada suffix-nya: `a.sc`
untuk small caps, `f_i` untuk ligatur, `a.ss01` untuk stylistic set, `one.osf` untuk angka gaya
lama, dan seterusnya. Hanya itu yang dibutuhkan pemula: beri nama glyph-nya, maka fiturnya muncul.

## Dasar-dasar kode fitur

Kode fitur ditulis dalam bahasa kecil bernama **FEA** (sintaks file fitur Adobe). Anda tidak
membutuhkannya untuk fitur-fitur umum, tetapi bisa membacanya membantu Anda memahami apa yang ditulis
FontEasy, dan menulis beberapa baris memungkinkan hal-hal yang tidak bisa dinyatakan lewat nama.
Lihat juga [feature code](/reference/glossary/#feature-code) di glosarium.

### Pernyataan dan blok

- Setiap pernyataan diakhiri titik koma `;`.
- **Blok fitur** dimulai dengan `feature` dan tag-nya, dan diakhiri tag yang sama:
  `feature liga { … } liga;`
- `#` memulai komentar, yang berlaku sampai akhir baris.
- `sub` (singkatan *substitute*, ganti) menukar glyph; `by` menyatakan penggantinya.

### Sistem bahasa

Di bagian atas file, baris `languagesystem` menyatakan untuk aksara dan bahasa apa fitur-fitur itu.
Pembukaan yang lazim:

```fea
languagesystem DFLT dflt;
languagesystem latn dflt;
```

FontEasy menambahkan sistem bahasa yang dibutuhkan fitur otomatisnya, setelah sistem bahasa yang
Anda tulis sendiri.

### Substitusi tunggal

Satu glyph menjadi glyph lain:

```fea
feature smcp {
    sub a by a.sc;
    sub b by b.sc;
} smcp;
```

### Kelas

**Kelas** adalah daftar glyph yang diberi nama. Namanya diawali `@`. Kelas membuat satu aturan
berlaku untuk banyak glyph; kedua daftar harus berurutan sama:

```fea
@lower = [a b c d e];
@lower_sc = [a.sc b.sc c.sc d.sc e.sc];

feature smcp {
    sub @lower by @lower_sc;
} smcp;
```

### Ligatur

Beberapa glyph, berurutan, menjadi satu:

```fea
feature liga {
    sub f f i by f_f_i;
    sub f i by f_i;
    sub f l by f_l;
} liga;
```

Letakkan ligatur terpanjang lebih dulu, seperti yang dilakukan FontEasy: begitu `f i` sudah menjadi
`f_i`, aturan `f f i` tidak bisa cocok lagi.

### Alternatif

Satu glyph, beberapa pilihan. Aplikasi menampilkan pilihan-pilihan itu kepada pengguna:

```fea
feature salt {
    sub g from [g.alt g.alt2];
} salt;
```

### Substitusi kontekstual

Sebuah glyph hanya diganti bila berada di dekat glyph tertentu. Glyph yang akan diganti ditandai
apostrof `'`:

```fea
feature calt {
    sub T o' by o.alt;
} calt;
```

Bacanya: "`o` yang datang setelah `T` menjadi `o.alt`". Glyph tanpa `'` hanyalah konteks; glyph itu
tidak diubah.

### Lookup dan bahasa

*[Lookup](/reference/glossary/#lookup)* adalah sekelompok aturan bernama yang dijalankan oleh sebuah
fitur. Bentuk lokal memakai satu lookup per bahasa:

```fea
feature locl {
    script latn;
    language TRK;
    lookup locl_turkish {
        sub i by i.loclTRK;
    } locl_turkish;
} locl;
```

Bab berikutnya, [Lookup dan Inspektor Shaping](/opentype/lookups/), menjelaskan lookup secara rinci
dan menunjukkan cara menyusunnya tanpa menulis kode.

### Posisi

`pos` menggeser glyph alih-alih menukarnya. Untuk kerning, pakai alat-alat kerning di bab
[Kerning](/spacing/kerning/): compiler menuliskan fitur `kern` untuk Anda. Aturan posisi yang
ditulis tangan jarang dibutuhkan di font pertama.

### File lain

`include(other.fea);` membaca file fitur lain. Path-nya relatif terhadap folder font. Bila file itu
tidak ditemukan, error menunjuk ke baris `include`.

## Error dan peringatan

FontEasy memeriksa kode fitur selama Anda mengetik. Begitu Anda berhenti mengetik sejenak, kode
diperiksa terhadap glyph font Anda dengan fea-rs, pemeriksa yang sama dengan yang dipakai compiler.
Pemeriksaan ini cepat, bahkan untuk file fitur yang sangat besar.

Bila ada yang salah:

- kata yang bermasalah **digarisbawahi** di kode (merah untuk error, jingga untuk peringatan);
- **nomor baris** yang berisi error berubah merah;
- panel di bawah kode menampilkan jumlah **Error** dan **Peringatan** serta satu baris per masalah,
  seperti `Baris 4  glyph not in font`.

Klik sebuah masalah di daftar untuk melompat ke barisnya. Bila semuanya beres, panel itu
menyatakan **Tidak ada masalah di kode fitur**.

Anda juga bisa memeriksa kapan saja dengan **Fitur › Periksa Fitur** (Mode Pro). Status bar lalu
menampilkan jumlah error dan peringatan. **Font › Periksa Font…** (<kbd>F7</kbd>) juga menyertakan
kode fitur dalam pemeriksaannya; mengeklik masalah fitur di sana membuka editor di baris itu.

Masalah yang sering muncul dan perbaikannya:

| Masalah | Penyebab yang biasa | Perbaikan |
|---|---|---|
| Glyph yang tidak ada di font (`glyph not in font`) | salah ketik nama glyph, atau glyph sudah dihapus atau diganti nama | betulkan namanya, atau tambahkan glyph-nya |
| Pernyataan belum selesai | titik koma `;` terlupa | tambahkan `;` di akhir pernyataan |
| Kelas tidak dikenal | `@kelas` dipakai sebelum didefinisikan, atau salah ketik | definisikan kelasnya di atas, atau betulkan namanya |
| Blok tidak ditutup dengan benar | `feature liga { … } lgia;`, atau `}` terlupa | tulis tag yang sama di kedua ujung dan tutup setiap `{` |

:::caution[File fitur yang rusak menghentikan pembuatan font]
Selama kode fitur masih berisi error, Pratinjau tidak bisa mengompilasi font. Pratinjau lalu
menampilkan teks Anda dengan outline polos tanpa shaping dan pesan "Kompilasi gagal — menampilkan
outline tanpa shaping". Perbaiki error-nya dan Pratinjau akan kembali normal.
:::

## Menguji fitur di Pratinjau

Panel **Pratinjau** menampilkan teks Anda dalam font hasil kompilasi, dibentuk persis seperti yang
akan ditampilkan aplikasi. Sakelar fiturnya membuat Anda bisa menguji setiap fitur.

1. Ketik teks uji di Pratinjau, misalnya `OFFICE SAFARI` atau `office 1/2 2026`.
2. Perhatikan deretan tag di bawah kolom teks. Setiap tag adalah fitur dari font hasil kompilasi.
   Fitur yang dipakai aplikasi secara bawaan (seperti `kern`, `liga`, `locl`, `ccmp`) sudah dalam
   keadaan aktif.
3. Klik sebuah tag untuk menyalakan atau mematikannya. Teksnya langsung berubah.
4. Centang **Glyph** untuk melihat, di bawah kontrol, nama dan advance width setiap glyph hasil
   shaping teks itu. Dari sini Anda tahu persis apakah ligatur atau small caps benar-benar terpasang.
5. Untuk menguji bentuk lokal, buka daftar bahasa (awalnya **Bahasa bawaan**) dan pilih bahasa yang
   ada di font, seperti `TRK Turki`.

![Pratinjau dengan OFFICE SAFARI: c2sc dinyalakan sehingga setiap huruf kapital menjadi small caps, dan dengan Glyph dicentang, glyph hasil shaping didaftar menurut namanya: O.sc, F.sc, F.sc, I.sc, dan seterusnya.](screen:features-preview)

Untuk mencoba font di aplikasi sungguhan, pakai **Berkas › Uji Font di Browser** (<kbd>F5</kbd>),
yang menampilkan font di browser web Anda lengkap dengan fiturnya, atau **Berkas › Pasang Font untuk
Uji** (<kbd>Ctrl</kbd>+<kbd>F5</kbd>). Lihat [Pengujian dan penerbitan](/production/testing-publishing/).

## Fitur dari font yang diimpor

Saat Anda membuka file TTF atau OTF, FontEasy menerjemahkan kembali fitur substitusinya menjadi kode
fitur: substitusi tunggal, ganda, alternatif, dan ligatur, lengkap dengan sistem bahasanya. Semuanya
tampil sebagai kode **manual**. Substitusi kontekstual tidak diterjemahkan; sebuah komentar di
bagian atas file mendaftar fitur mana yang dilewati, sehingga Anda bisa menulisnya ulang secara
manual bila perlu.

![Kode fitur yang diimpor dari Source Serif 4: komentar di baris 2 mendaftar lookup kontekstual yang tidak diimpor, daftar fitur menandai fitur hasil impor sebagai manual, dan Pratinjau di bawahnya punya sakelar fitur.](screen:g-features)

## Tips dan kesalahan umum

- **Beri nama glyph sebelum menulis kode.** Sebagian besar fitur didapat gratis dari nama yang baik.
  Tulis kode hanya untuk hal yang tidak bisa dinyatakan nama.
- **Jangan mengedit isi blok otomatis tanpa sengaja.** Perubahan apa pun pada sebuah blok akan
  mengambil alihnya dan menghentikan pembaruan oleh FontEasy. Bila itu terjadi tanpa sengaja,
  batalkan, atau hapus seluruh blok dan biarkan FontEasy menulisnya lagi pada penyegaran berikutnya.
- **Bagian ligatur harus ada.** `f_j` tidak menghasilkan fitur bila font tidak punya `j`.
- **Periksa daftar glyph di Pratinjau.** Fitur yang tampaknya tidak berbuat apa-apa sering
  sebenarnya bekerja, hanya glyph-nya mirip. Mencentang **Glyph** menunjukkan kebenarannya.
- **Perhatikan urutannya.** Aturan dijalankan sesuai urutan di file. Aturan yang mengubah `i`
  menjadi `i.loclTRK` harus datang sebelum ligatur yang mengharapkan `i`.

:::caution[Ganti nama tidak mengubah kode buatan Anda]
**Glyph › Ganti Nama Glyph…** memperbarui komponen dan kerning, dan fitur otomatis ditulis ulang
dengan nama baru. Kode fitur yang Anda tulis sendiri tidak diubah: setelah ganti nama, pemeriksa
menandai nama lama sebagai glyph yang tidak ada di font, sehingga Anda bisa membetulkannya.
:::

## Bila ada yang tidak beres

- **Sebuah fitur tidak muncul di daftar.** Periksa namanya: glyph dasarnya harus ada (`a` untuk
  `a.sc`), dan suffix-nya harus dikenal FontEasy. Lalu pilih **Fitur › Perbarui Fitur Otomatis**.
- **Fitur bertanda mati.** Kotak centangnya kosong. Centang kembali.
- **Saya menulis fitur sendiri dan versi otomatisnya hilang.** Itu disengaja: bila Anda menulis
  blok `feature smcp` sendiri, FontEasy menghapus blok `smcp` otomatisnya pada penyegaran
  berikutnya, sehingga font tidak pernah punya dua versi. Hapus blok buatan Anda untuk mendapatkan
  kembali versi otomatisnya.
- **Fitur bekerja di Pratinjau tetapi tidak di aplikasi saya.** Banyak aplikasi mengharuskan
  pengguna menyalakan fitur opsional (`smcp`, `onum`, `ss01`). Periksa pengaturan tipografi
  aplikasinya.
- **Daftar bahasa tidak berisi bahasa apa pun.** Font tidak mendeklarasikan bahasa selain bawaan.
  Tambahkan glyph `locl` seperti `i.loclTRK`, dan FontEasy menambahkan sistem bahasanya.

## Ringkasan

- **Fitur OpenType** membuat font bisa menukar glyph (GSUB: ligatur, small caps, alternatif, gaya
  angka, bentuk lokal) atau menggesernya (GPOS: kerning, aksen), sementara teksnya tetap sama.
- Sebagian fitur aktif secara bawaan (`liga`, `kern`, `locl`); sebagian lagi dinyalakan pengguna
  (`smcp`, `onum`, `ss01`).
- FontEasy menulis fitur dari **suffix nama glyph**: `.sc`, ligatur dengan `_`, `.ss01`, `.alt`,
  `.osf`, `.tf`, `.case`, `.sups`, `.numr`/`.dnom`, `.locl` dengan tag bahasa, dan lainnya.
- Kode otomatis berada di `features.fea` di antara komentar penanda dan disegarkan saat menyimpan,
  saat kompilasi, dan lewat **Fitur › Perbarui Fitur Otomatis**; mengedit sebuah blok berarti
  mengambil alihnya.
- Tab **Fitur** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>F</kbd>) punya daftar fitur dengan lencana dan
  sakelar, serta tampilan **Kode** yang memeriksa kode Anda selama mengetik.
- Uji fitur di **Pratinjau**: klik tag fitur, centang **Glyph** untuk melihat glyph hasil shaping,
  dan pilih bahasa untuk menguji `locl`.

## Coba sendiri

1. Gambar (atau duplikat lalu ubah) sebuah glyph bernama `g.ss01`. Buka **Fitur › Fitur** dan
   temukan `ss01` di daftar. Ketik `g` di Pratinjau, nyalakan `ss01`, lalu centang **Glyph** untuk
   melihat `g.ss01` terpasang.
2. Pastikan font Anda punya `f`, `i`, dan glyph bernama `f_i`. Ketik `fit` di Pratinjau dan lihat
   daftar glyph-nya dengan `liga` menyala dan mati. Lalu buka tampilan Kode, cari blok
   `# automatic liga`, dan baca aturan yang ditulis FontEasy.
