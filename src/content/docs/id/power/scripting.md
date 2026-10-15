---
title: Scripting dan Plugin
description: Cara mengotomatiskan pekerjaan font yang berulang dengan skrip Python kecil, merekam makro, dan menambahkan perintah Anda sendiri ke FontEasy lewat plugin.
---

Cepat atau lambat, setiap desainer huruf bertemu pekerjaan yang membosankan. Sepuluh angka harus diberi lebar yang persis sama. Ada empat puluh [pasangan kerning](/reference/glossary/#kerning-pair) dari teman yang dikirim sebagai daftar. Anda ingin tahu mana saja dari 300 [glyph](/reference/glossary/#glyph) Anda yang masih kosong. Semua itu bisa dikerjakan dengan tangan, satu glyph demi satu glyph, tetapi lambat dan mudah keliru.

**Skrip** adalah daftar perintah pendek yang dijalankan FontEasy untuk Anda. Anda menulisnya sekali, menekan satu tombol, dan komputer menyelesaikan bagian yang membosankan dalam sekejap. Skrip di FontEasy ditulis dalam **Python**, bahasa pemrograman yang disukai pemula karena bunyinya hampir seperti kalimat bahasa Inggris. Anda tidak perlu menjadi programmer untuk memakai bab ini: setiap contoh sudah lengkap, jadi Anda bisa menyalinnya, menjalankannya, lalu mengubah satu angka untuk melihat apa yang terjadi.

Kalau sebuah skrip ternyata berguna setiap hari, Anda bisa menjadikannya **plugin**. Plugin menaruh skrip Anda di menu **Alat** dan di palet perintah, lengkap dengan nama dan bahkan shortcut keyboard sendiri, seolah-olah bagian dari FontEasy.

Scripting adalah fitur Mode Pro. Di Mode Sederhana Anda tetap bisa menjalankan plugin, tetapi panel Scripting hanya muncul di Mode Pro (lihat [Mode Sederhana atau Pro](/power/preferences/#mode-sederhana-atau-pro)).

Dalam bab ini Anda akan mempelajari:

- mengapa skrip layak diberi waktu beberapa menit;
- cara memakai panel Scripting: editor, keluaran, contoh, tombol berhenti, dan perekaman makro;
- Python mana yang menjalankan skrip Anda dan cara memilih yang lain;
- cara kerja API Python `fonteasy`: font, glyph, kontur, titik, dan *pen* (pena gambar);
- enam skrip kecil yang benar-benar jalan, dijelaskan baris demi baris;
- cara kerja *undo* (pembatalan) untuk skrip;
- cara memakai, mematikan, dan menulis plugin;
- cara tetap aman saat menjalankan skrip dari orang lain.

## Mengapa menulis skrip?

Anggap skrip seperti resep masakan. Resep tidak memasak sendiri, tetapi begitu ditulis, siapa pun bisa mengikutinya dan mendapat hasil yang sama setiap kali. Skrip adalah resep untuk FontEasy.

Skrip unggul di tiga jenis pekerjaan:

- **Pengulangan.** "Lakukan ini pada setiap glyph" atau "lakukan ini pada dua puluh glyph ini". Manusia lelah setelah glyph kelima; skrip tidak.
- **Pemeriksaan.** "Glyph mana yang belum punya nilai [Unicode](/reference/glossary/#unicode)?" atau "Glyph mana yang paling lebar?" Skrip bisa memeriksa seluruh [font](/reference/glossary/#font) dan mencetak laporan singkat.
- **Ketelitian.** "Jadikan setiap angka tepat 600 unit lebarnya dan letakkan gambarnya di tengah." Mengetik angka dengan tangan mengundang salah kecil; skrip memakai angka yang sama setiap kali.

Skrip tidak pandai menggambar huruf yang indah. Desain adalah tugas Anda. Skrip mengurus pekerjaan rutin di sekitarnya supaya Anda punya lebih banyak waktu untuk mendesain.

:::tip[Anda sudah tahu lebih banyak dari yang Anda kira]
Setiap perintah menu di FontEasy juga merupakan perintah skrip. Kalau sebuah perintah ada di menu, skrip juga bisa menjalankannya. Dan kalau Anda sama sekali tidak ingin mengetik kode, [perekaman makro](#merekam-makro) akan menuliskan skrip untuk Anda selagi Anda mengeklik.
:::

## Cara kerja scripting di FontEasy

Saat Anda menjalankan skrip, FontEasy memulai program terpisah, yaitu **Python**, lalu menyerahkan skrip Anda kepadanya. Python membaca skrip baris demi baris. Setiap kali skrip ingin melihat atau mengubah font, ia mengirim permintaan (sebuah *perintah*) ke FontEasy. FontEasy menjalankan perintah itu pada font yang terbuka dan mengirim jawabannya kembali. Semua yang dicetak skrip muncul di panel Scripting.

![FontEasy dan Python adalah dua program terpisah: skrip Anda meminta FontEasy menjalankan perintah, FontEasy menjawab, dan seluruh jalannya skrip menjadi satu langkah undo.](diagram:scripting-process)

Karena Python berjalan sendiri, ada tiga keuntungan:

- FontEasy tetap bisa dibuka dan dipakai seperti biasa di komputer tanpa Python. Python baru diperlukan saat Anda menjalankan skrip.
- Skrip yang macet, misalnya yang berputar terus tanpa akhir, tidak pernah membekukan FontEasy. Anda tinggal menekan tombol berhenti dan program Python diakhiri.
- Perintah yang dipakai skrip sama persis dengan yang dipakai menu, shortcut keyboard, dan palet perintah. Tidak ada yang "khusus skrip" atau "khusus menu".

## Panel Scripting

Panel Scripting berada di dock bawah, di samping **Pratinjau** dan **Periksa Font**. Untuk membukanya, lakukan salah satu dari ini:

1. Pilih **Alat › Scripting**, atau tekan <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>P</kbd>.
2. Atau pilih **Jendela › Panel › Scripting**.

Sekarang panel itu tampak di bagian bawah jendela. Bagian kiri adalah editor kode dengan nomor baris. Bagian kanan adalah keluaran, tempat pesan skrip muncul. Di atasnya ada sederet tombol.

![Panel Scripting setelah menjalankan contoh "Glyph tanpa Unicode": kode di kiri, keluaran di kanan menyebut satu glyph tanpa Unicode, dan bilah status mengatakan skrip selesai dalam 1,3 detik.](screen:scripting)

Tombol-tombolnya, dari kiri ke kanan:

| Tombol | Fungsinya |
|---|---|
| Putar (segitiga) | **Jalankan** skrip (juga <kbd>Ctrl</kbd>+<kbd>Enter</kbd>). Selama skrip berjalan, tombol ini menjadi kotak: **Hentikan skrip**. |
| Map | **Buka skrip…** dari file `.py`. |
| Disket | **Simpan skrip** ke file-nya (pertama kali, Anda ditanya lokasinya). |
| **Contoh** | Menu berisi skrip siap pakai, ditambah **Simpan Sebagai…**. |
| Lingkaran | **Rekam makro**: apa yang Anda lakukan mulai sekarang menjadi skrip. |
| X | **Bersihkan keluaran**. |
| Steker | **Plugin…**: membuka jendela Plugin. |

Di ujung kanan tertulis nama file skrip, atau **Skrip tanpa judul** kalau belum disimpan. Selama skrip berjalan, ikon berputar dan penghitung ("12 panggilan") menunjukkan bahwa skrip sedang sibuk berbicara dengan FontEasy.

### Menjalankan skrip

1. Buka panel Scripting. Pertama kali dibuka, panel sudah berisi contoh **Halo**.
2. Klik di dalam editor kode.
3. Tekan <kbd>Ctrl</kbd>+<kbd>Enter</kbd>, atau klik tombol Putar.

Keluaran menampilkan tanda `▶` dengan nama skrip, lalu baris-baris yang dicetak skrip Anda, lalu `✔ Selesai dalam 0.4 dtk` (waktunya berbeda-beda). Bilah status di bawah jendela menulis **Skrip selesai dalam … dtk**.

Editor kode mewarnai Python untuk Anda: kata kunci seperti `for` dan `if`, teks di antara tanda kutip, angka, dan komentar (baris yang diawali `#`) masing-masing punya warna sendiri. Komentar adalah catatan untuk manusia; Python mengabaikannya.

### Konsol keluaran

Semua yang dicetak skrip dengan `print()` muncul di keluaran. Error muncul dalam warna merah. Kalau Python berhenti karena error, ia mencetak *traceback* (laporan jejak error): laporan pendek yang diakhiri jenis error dan menyebut baris tempat error terjadi. FontEasy membantu Anda membacanya:

- baris yang salah digarisbawahi merah di editor, dan nomor barisnya ikut merah;
- bilah status menampilkan pesan error dan nomor barisnya;
- Anda bisa mengeklik baris traceback berwarna merah di keluaran untuk melompat ke baris itu di editor.

Begitu Anda mengetik lagi di editor, garis bawah merah itu hilang.

### Contoh, membuka, dan menyimpan

Menu **Contoh** berisi enam skrip kecil untuk dipelajari: **Halo**, **Glyph tanpa Unicode**, **Tengahkan glyph terpilih**, **Menggambar dengan pena**, **Laporan kerning**, dan **fontTools: tabel**. Memilih salah satunya mengganti kode di editor (simpan dulu pekerjaan Anda sendiri).

Skrip adalah file teks biasa berekstensi `.py`. Pakai tombol map untuk membuka dan tombol disket untuk menyimpan. **Contoh › Simpan Sebagai…** menyimpan dengan nama baru. Skrip yang sudah disimpan punya satu keuntungan kecil: selama berjalan, foldernya sendiri menjadi *folder kerja*, jadi nama file seperti `"pairs.txt"` di dalam skrip berarti file yang ada di samping skrip itu.

### Menghentikan skrip

Selama skrip berjalan, tombol Putar berubah menjadi kotak. Klik untuk langsung menghentikan skrip. FontEasy mengakhiri program Python; perubahan yang sudah dibuat skrip tetap ada di font, dan semuanya tetap [satu langkah undo](#undo-dan-skrip), jadi satu kali <kbd>Ctrl</kbd>+<kbd>Z</kbd> membatalkannya.

Hanya satu skrip yang bisa berjalan pada satu waktu. Kalau Anda mencoba menjalankan skrip kedua, keluaran menulis **Sebuah skrip sedang berjalan.**

### Merekam makro

*Makro* adalah rekaman dari apa yang Anda lakukan, yang bisa diputar ulang nanti. Anda tidak perlu menulis kode apa pun:

1. Klik tombol lingkaran (**Rekam makro**). Bilah status menulis **Merekam… lakukan langkah-langkahnya, lalu tekan Stop Recording.**
2. Lakukan langkah-langkah Anda lewat perintah menu, misalnya pilih beberapa glyph di Ikhtisar lalu pilih **Glyph › Kontur › Hapus Tumpang Tindih**, kemudian **Glyph › Kontur › Perbaiki Arah**.
3. Klik **■ Hentikan Rekaman** (berwarna merah selama merekam).

Editor sekarang berisi skrip yang diawali `# Recorded by FontEasy` dan berisi satu baris `fe.run(...)` untuk setiap perintah yang Anda pakai:

```python
# Recorded by FontEasy
import fonteasy as fe

fe.run("glyph.removeOverlap", {"names": ["A", "B", "R"]})
fe.run("glyph.correctDirection", {"names": ["A", "B", "R"]})
```

Jalankan pada font lain, atau simpan untuk lain kali. Perhatikan bahwa nama glyph yang tadi Anda pilih ikut tertulis di skrip. Untuk memakai makro pada glyph lain, ubah daftarnya, atau ganti dengan pilihan saat ini seperti di [menjalankan perintah apa pun](#menjalankan-perintah-apa-pun-dengan-ferun).

:::note
Makro merekam perintah yang dijalankan FontEasy pada seluruh font atau pada glyph yang dipilih di Ikhtisar, entah Anda memulainya dari menu, dialog, atau palet perintah. Pekerjaan di dalam editor glyph tidak terekam: menggambar, menyeret titik, dan perintah kontur yang diterapkan pada glyph yang sedang dibuka.
:::

## Python yang menjalankan skrip Anda

Unduhan FontEasy untuk Windows (zip maupun installer) sudah membawa **Python 3.14** sendiri beserta **fontTools**, pustaka Python terkenal untuk membaca dan menulis file font. Anda tidak perlu memasang apa pun. Python bawaan ini ada di folder `python` di samping `FontEasy.exe`.

FontEasy mencari Python dengan urutan ini:

1. `python.exe` yang Anda pilih di **Edit › Preferensi… › Umum › Scripting**;
2. Python bawaan di samping FontEasy;
3. Python yang ditemukan di `PATH` komputer Anda (pintasan "Microsoft Store" yang hanya membuka Store dilewati).

Jendela Plugin menampilkan Python yang ditemukan di bagian bawahnya (**Python: …**), begitu juga Preferensi.

### Memakai Python lain

Python bawaan berukuran kecil dan tidak punya `pip`, jadi Anda tidak bisa memasang paket tambahan ke dalamnya. Kalau ingin memakai pustaka Python lain di skrip Anda, pasang Python dari python.org lalu arahkan FontEasy ke sana:

1. Pasang Python 3 dari python.org.
2. Di Command Prompt, pasang paket yang Anda inginkan, dan fontTools juga: `py -m pip install fonttools`.
3. Di FontEasy, pilih **Edit › Preferensi…**, buka tab **Umum**, lalu di bagian **Scripting** klik **Pilih…** di samping **Python**.
4. Pilih `python.exe` dari instalasi itu dan klik **OK**.

Lokasi yang Anda pilih sekarang tampak di samping **Python**. Klik **Atur Ulang** untuk kembali ke Python bawaan. Penjelasan lebih lanjut ada di [Preferensi](/power/preferences/#scripting).

:::caution
Kalau Anda memilih Python lain yang tidak punya fontTools, skrip yang memakai `f.ttfont()` atau `from fontTools import …` akan gagal dengan `ModuleNotFoundError`. Pasang fontTools untuk Python itu dengan `pip install fonttools`.
:::

## API Python fonteasy

*API* adalah kumpulan nama yang disediakan sebuah program untuk skrip. API FontEasy adalah paket Python bernama `fonteasy`. Kebanyakan skrip diawali dengan:

```python
import fonteasy as fe
```

Artinya "muat paket `fonteasy` dan sebut saja `fe`". (Di panel Scripting, `fe`, `CurrentFont`, dan nama-nama utama lain sebenarnya sudah tersedia tanpa baris ini, tetapi menuliskannya membuat skrip lebih jelas dan bisa dipakai juga sebagai plugin.)

API ini mirip fontParts, pustaka scripting yang dipakai editor font lain, jadi banyak skrip yang Anda temukan di internet mudah disesuaikan.

### Font

| Kode | Hasilnya |
|---|---|
| `fe.CurrentFont()` | Font yang sedang Anda edit, atau `None` kalau tidak ada font terbuka. |
| `fe.AllFonts()` | Semua font yang terbuka, sebagai daftar. |
| `fe.CurrentGlyph()` | Glyph yang terbuka di editor glyph (atau yang dipilih di Ikhtisar), atau `None`. |
| `fe.SelectedGlyphs()` | Glyph yang dipilih di Ikhtisar, sebagai daftar. |

Dengan font `f = fe.CurrentFont()`:

| Kode | Artinya |
|---|---|
| `f.name`, `f.path` | Nama font dan lokasi penyimpanannya. |
| `len(f)` | Jumlah glyph. |
| `for g in f:` | Telusuri setiap glyph. |
| `"A" in f` | Adakah glyph bernama `A`? |
| `f["A"]` | Glyph `A` (`KeyError` kalau tidak ada). |
| `f.keys()` | Semua nama glyph sesuai urutan. |
| `f.newGlyph("a.alt", width=500)` | Membuat glyph baru (bisa juga `unicodes=[...]`). |
| `del f["a.alt"]` | Menghapus glyph. |
| `f.selection` | Nama glyph yang dipilih di Ikhtisar; isi dengan daftar untuk memilih glyph lain. |
| `f.info.family`, `f.info["ascender"]` | Nilai Info Font; isi untuk mengubahnya (`f.info.designer = "Ayu"`). `f.info.keys()` menampilkan semuanya. |
| `f.kerning[("A", "V")]` | Nilai kerning; isi angka untuk mengaturnya, `del` untuk menghapusnya. `f.kerning.items()` menampilkan semua pasangan. |
| `f.save()` | Menyimpan font (seperti **Berkas › Simpan**). |
| `f.compile("C:/out/My.ttf")` | Membuat file font; lihat [kompilasi](#kompilasi-dan-fonttools). |

### Glyph

Objek glyph `g = f["A"]` punya:

| Kode | Artinya |
|---|---|
| `g.name` | [Nama glyph](/reference/glossary/#glyph-name)-nya. |
| `g.width` | [Advance width](/reference/glossary/#advance-width) (lebar langkah) glyph. |
| `g.unicodes`, `g.unicode` | Nilai Unicode sebagai angka (`65` untuk A); isi untuk mengubah. |
| `g.leftMargin`, `g.rightMargin` | [Sidebearing](/reference/glossary/#sidebearing) kiri dan kanan; isi untuk mengubah. |
| `g.bounds` | Kotak di sekeliling titik-titiknya: `(xMin, yMin, xMax, yMax)`, atau `None` kalau kosong. |
| `g.contours`, `g.components`, `g.anchors` | [Kontur](/reference/glossary/#contour), [komponen](/reference/glossary/#component), dan [anchor](/reference/glossary/#anchor), masing-masing sebagai daftar. |
| `g.note`, `g.lib` | Catatan teks, dan kamus (*dictionary*) untuk data Anda sendiri. |
| `g.moveBy((dx, dy))` | Menggeser semuanya. |
| `g.scaleBy(2)` atau `g.scaleBy((sx, sy), origin=(x, y))` | Mengubah skala semuanya. |
| `g.appendComponent("acutecomb", offset=(100, 0))` | Menambah komponen. |
| `g.appendAnchor("top", (250, 700))` | Menambah anchor. |
| `g.clearContours()`, `g.clear()` | Menghapus kontur, atau semuanya. |
| `g.update()` | Menyimpan perubahan kontur, komponen, anchor, dan lib (lihat di bawah). |

Ada dua jenis perubahan, dan perbedaannya penting untuk diketahui:

- **Nilai sederhana** (`width`, `unicodes`, `note`, `leftMargin`, `rightMargin`) langsung disimpan ke font begitu Anda mengisinya.
- **Bentuk** (kontur, titik, komponen, anchor, `lib`) diubah dulu di Python, lalu disimpan saat Anda memanggil `g.update()`, atau otomatis saat skrip selesai. Cara yang rapi adalah blok `with`, yang memanggil `update()` untuk Anda di akhir blok:

```python
with f["A"] as g:
    g.moveBy((0, 10))
```

:::note
`g.bounds`, `g.leftMargin`, dan `g.rightMargin` diukur dari titik-titik glyph itu sendiri. Kalau setiap kurva punya titik di [titik ekstrem](/reference/glossary/#extreme-point)-nya (paling kiri, kanan, atas, dan bawah), hasilnya sama persis dengan yang ditampilkan jendela Metrics. Komponen tidak ikut dihitung.
:::

### Kontur dan titik

Kontur adalah satu garis tertutup (atau terbuka) dari gambar huruf; huruf "O" punya dua. Setiap kontur punya daftar [titik](/reference/glossary/#point):

```python
g = fe.CurrentFont()["O"]
for contour in g.contours:
    print(contour, "punya", len(contour.points), "titik")
    for p in contour.points:
        print("  ", p.x, p.y, p.type)
```

`p.type` memberi tahu jenis titiknya:

| `p.type` | Artinya |
|---|---|
| `"line"` | [Titik on-curve](/reference/glossary/#on-curve-point) (titik di garis) yang mengakhiri segmen lurus. |
| `"curve"` | Titik on-curve yang mengakhiri [kurva kubik](/reference/glossary/#cubic-curve). |
| `"qcurve"` | Titik on-curve yang mengakhiri [kurva kuadratik](/reference/glossary/#quadratic-curve). |
| `"move"` | Titik pertama dari [kontur terbuka](/reference/glossary/#open-contour). |
| `None` | [Titik off-curve](/reference/glossary/#off-curve-point) (sebuah [handle](/reference/glossary/#handle)). |

Anda bisa langsung mengubah `p.x` dan `p.y`, dan `p.smooth` menunjukkan apakah titik itu [titik smooth](/reference/glossary/#smooth-point). Kontur juga punya `contour.reverse()` (membalik arahnya), `contour.open`, dan `contour.bounds`. Untuk menambah kontur yang terdiri dari garis lurus, berikan daftar pasangan `(x, y)`:

```python
g.appendContour([(100, 0), (500, 0), (300, 600)])
g.update()
```

### Pena (pen)

*Pen* adalah cara baku fontTools untuk menggambar atau membaca outline langkah demi langkah: "pindah ke sini, tarik garis ke sana, kurva ke sana, tutup". `g.getPen()` memberi Anda pen yang menggambar kontur baru ke dalam glyph. `g.draw(pen)` mengirim outline glyph ke pen fontTools mana pun, misalnya untuk mengukurnya atau menyalinnya ke font lain. Anda akan memakai pen di [contoh 4](#contoh-4-menggambar-bentuk-dengan-pena).

### Menjalankan perintah apa pun dengan fe.run

Di balik objek-objek di atas, semuanya berjalan lewat perintah FontEasy. Anda bisa memanggil perintah apa pun sendiri dengan `fe.run`:

```python
import fonteasy as fe

names = [g.name for g in fe.SelectedGlyphs()]
fe.run("glyph.addExtremes", names=names)
fe.run("glyph.correctDirection", names=names)
```

`fe.commands()` mengembalikan daftar lengkapnya. Setiap item punya `id`, `label`, `params` (parameter yang diterima), dan `changesFont`. Skrip kecil ini mencetak semua perintah yang berhubungan dengan kerning:

```python
import fonteasy as fe

for c in fe.commands():
    if c["id"].startswith("kerning."):
        print(c["id"], "-", c["label"], c["params"])
```

Kalau sebuah perintah menolak (glyph-nya tidak ada, parameternya salah), skrip berhenti dengan `FontEasyError` yang menyebut nama perintah dan alasannya, misalnya `` glyph.get: no glyph named `Q` ``.

`fe.message("teks")` mencetak teks itu dan sekaligus menampilkannya di bilah status FontEasy, yang berguna untuk plugin.

### Kompilasi dan fontTools

`f.compile(path)` membuat file font sungguhan dari source Anda, dengan cara yang sama seperti ekspor, lalu mengembalikan lokasinya. Formatnya mengikuti ekstensi: `.ttf`, `.otf`, `.woff`, atau `.woff2`. Tanpa lokasi, ia membuat file `.ttf` sementara. Pakai lokasi lengkap seperti `"C:/Users/Anda/Desktop/Uji.ttf"` supaya Anda selalu tahu di mana file itu berada.

`f.ttfont()` mengompilasi font dan membukanya dengan fontTools sebagai objek `TTFont`, sehingga Anda bisa memeriksa [file font](/reference/glossary/#font-file) yang sudah jadi, tabel demi tabel.

## Contoh lengkap

Setiap contoh di bawah ini sudah lengkap. Salin ke panel Scripting, buka sebuah font, lalu tekan <kbd>Ctrl</kbd>+<kbd>Enter</kbd>. Baca penjelasan setelah tiap contoh, lalu coba ubah sesuatu.

### Contoh 1: mencari glyph tanpa Unicode

Glyph tanpa nilai Unicode tidak bisa diketik langsung. Itu wajar untuk *alternate* (bentuk pengganti) seperti `a.alt`, tetapi Unicode yang terlupa pada huruf biasa adalah kesalahan sungguhan.

```python
import fonteasy as fe

f = fe.CurrentFont()
print("Font:", f.name)
print("Jumlah glyph:", len(f))

missing = [g.name for g in f if not g.unicodes]
print("Tanpa Unicode:", " ".join(missing) or "tidak ada")
f.selection = missing
```

- `[g.name for g in f if not g.unicodes]` membuat daftar nama semua glyph yang daftar Unicode-nya kosong.
- `" ".join(missing) or "tidak ada"` mencetak nama-nama itu dalam satu baris, atau "tidak ada" kalau daftarnya kosong.
- `f.selection = missing` memilih glyph-glyph itu di Ikhtisar, jadi Anda bisa langsung melihatnya.

Sekarang nama-nama itu tampak di keluaran dan glyph-nya tersorot di Ikhtisar.

### Contoh 2: menyamakan lebar angka

[Angka tabular](/reference/glossary/#tabular-figures) (*tabular figures*) semuanya selebar yang sama supaya angka-angka sejajar dalam tabel. Skrip ini membuat kesepuluh angka selebar 600 unit dan meletakkan gambarnya di tengah.

```python
import fonteasy as fe

FIGURES = ["zero", "one", "two", "three", "four",
           "five", "six", "seven", "eight", "nine"]
WIDTH = 600

f = fe.CurrentFont()
for name in FIGURES:
    if name not in f:
        print("dilewati", name, "(tidak ada di font)")
        continue
    g = f[name]
    if g.bounds is None:
        g.width = WIDTH
        continue
    left, right = g.leftMargin, g.rightMargin
    ink = g.width - left - right
    g.leftMargin = round((WIDTH - ink) / 2)
    g.width = WIDTH
    print(name, "sekarang", g.width, "lebarnya")
```

- Nama yang ditulis dengan huruf kapital (`FIGURES`, `WIDTH`) adalah pengaturan. Ganti `600` dengan lebar yang Anda inginkan.
- `ink` adalah lebar gambarnya sendiri: advance width dikurangi kedua sidebearing.
- Mengisi `g.leftMargin` menggeser gambar sehingga sidebearing kiri sama dengan separuh ruang kosong; mengisi `g.width` kemudian membereskan sisi kanan.
- Angka yang masih kosong hanya diberi lebar.

### Contoh 3: menambah pasangan kerning dari daftar

[Kerning](/reference/glossary/#kerning) (pengaturan jarak antar pasangan huruf) menyesuaikan ruang di antara dua huruf tertentu. Kalau seseorang memberi Anda daftar pasangan, Anda tidak perlu mengetiknya satu per satu di jendela Kerning.

```python
import fonteasy as fe

PAIRS = """
A V -80
V A -80
T o -70
L T -90
"""

f = fe.CurrentFont()
for line in PAIRS.strip().splitlines():
    left, right, value = line.split()
    if left in f and right in f:
        f.kerning[(left, right)] = int(value)
        print("di-kern", left, right, value)
    else:
        print("dilewati", left, right)
```

- Teks di antara tiga tanda kutip adalah daftarnya: glyph kiri, glyph kanan, nilai. Nilai negatif mendekatkan kedua huruf.
- `line.split()` memotong setiap baris menjadi tiga bagian.
- `f.kerning[(left, right)] = int(value)` mengatur pasangan itu. Pasangan yang glyph-nya tidak ada dilewati, sehingga skrip tidak berhenti.

Buka jendela Kerning (**Kerning › Jendela Kerning**) untuk melihat pasangan barunya. Untuk membaca pasangan dari file teks, simpan skrip di samping file `pairs.txt` lalu ganti teks `PAIRS` dengan `open("pairs.txt", encoding="utf-8").read()`.

### Contoh 4: menggambar bentuk dengan pena

Skrip ini membuat glyph baru `box.test` dan menggambar persegi panjang di dalamnya dengan pen.

```python
import fonteasy as fe

f = fe.CurrentFont()
name = "box.test"
if name in f:
    g = f[name]
else:
    g = f.newGlyph(name, width=600)

g.clearContours()
pen = g.getPen()
pen.moveTo((50, 0))
pen.lineTo((550, 0))
pen.lineTo((550, 700))
pen.lineTo((50, 700))
pen.closePath()
g.update()
print(g.name, "punya", len(g.contours), "kontur")
```

- `if` membuat skrip aman dijalankan dua kali: kali kedua, glyph yang sudah ada dipakai lagi, bukan gagal.
- `clearContours()` menghapus gambar lama supaya persegi panjangnya tidak menumpuk.
- Setiap panggilan pen adalah satu langkah outline; `closePath()` menutupnya. `pen.curveTo(...)` menggambar kurva dengan cara yang sama, dengan dua handle dan satu titik akhir.
- `g.update()` menyimpan kontur baru ke font.

Cari `box.test` di ujung Ikhtisar lalu buka. Konturnya berputar berlawanan arah jarum jam, arah yang diharapkan FontEasy untuk bentuk luar (lihat [arah kontur](/reference/glossary/#contour-direction)).

### Contoh 5: menandai glyph kosong dengan warna merah

Warna tanda di Ikhtisar adalah daftar tugas yang sederhana. Skrip ini mewarnai setiap glyph yang belum punya gambar.

```python
import fonteasy as fe

f = fe.CurrentFont()
empty = [g.name for g in f if not g.contours and not g.components]
empty = [n for n in empty if n != "space"]
if empty:
    fe.run("glyph.markColor", names=empty, color="Red")
fe.message("%d glyph kosong ditandai merah" % len(empty))
```

- Glyph dianggap kosong kalau tidak punya kontur maupun komponen. `space` memang seharusnya kosong, jadi dikecualikan.
- `glyph.markColor` adalah perintah di balik **Glyph › Warna Tanda**. Nama warnanya ditulis dalam bahasa Inggris: `Red`, `Orange`, `Yellow`, `Green`, `Blue`, `Purple`, dan `Gray`; `color=None` menghapus tanda.
- `fe.message` menaruh hasilnya di bilah status.

Skrip ini membaca outline setiap glyph, jadi pada font besar butuh beberapa detik; penghitung di samping ikon berputar menunjukkan kemajuannya.

### Contoh 6: melihat isi font hasil kompilasi

Contoh ini memakai fontTools untuk melihat font yang sudah jadi, persis seperti yang akan dilihat aplikasi atau browser.

```python
import fonteasy as fe

font = fe.CurrentFont().ttfont()
print("Tabel:", " ".join(sorted(font.keys())))
print("Jumlah glyph:", font["maxp"].numGlyphs)
hmtx = font["hmtx"]
widest = max(font.getGlyphOrder(), key=lambda n: hmtx[n][0])
print("Glyph terlebar:", widest, hmtx[widest][0])
```

- `ttfont()` mengompilasi font ke TTF sementara lalu membukanya dengan fontTools.
- Font OpenType terdiri dari *tabel* bernama empat huruf seperti `cmap` (karakter), `glyf` (outline), dan `hmtx` (lebar). Baris pertama menampilkan semuanya.
- `hmtx[n][0]` adalah advance width glyph `n` di font hasil kompilasi.

## Undo dan skrip

Sebanyak apa pun perubahan yang dibuat sebuah skrip, satu kali jalan adalah **satu langkah** di riwayat undo. Di panel **Riwayat**, langkah itu bernama `Run Script: …` diikuti nama skrip (atau nama file-nya). Satu kali <kbd>Ctrl</kbd>+<kbd>Z</kbd> (**Edit › Batalkan**) membatalkan semua yang dilakukan skrip, dan <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>Z</kbd> mengembalikannya.

Hal yang sama berlaku kalau skrip gagal di tengah jalan atau kalau Anda menekan tombol berhenti: apa yang sudah dikerjakan menjadi satu langkah, dan satu kali undo menghapusnya. Kalau skrip mengubah beberapa font yang terbuka, setiap font mendapat satu langkah undo sendiri.

:::tip[Bereksperimen tanpa takut]
Karena satu kali jalan sama dengan satu langkah undo, cara belajar paling aman adalah: jalankan, lihat hasilnya, tekan <kbd>Ctrl</kbd>+<kbd>Z</kbd>, ubah skripnya, jalankan lagi.
:::

Ingat bahwa `f.save()` di dalam skrip benar-benar menulis font ke disk, dan `f.compile()` benar-benar menulis file. Undo mengubah font di FontEasy, bukan file yang sudah telanjur ditulis.

## Plugin

Plugin adalah skrip yang diberi label nama. Plugin tinggal di foldernya sendiri dan muncul di menu, jadi Anda bisa memakainya tanpa membuka panel Scripting. Plugin juga bekerja di Mode Sederhana.

Semua plugin berada di satu folder di dalam folder pengaturan Anda:

```
%APPDATA%\FontEasy\plugins\
```

Pertama kali FontEasy membutuhkan folder plugin, ia membuatnya dan mengisinya dengan tiga plugin contoh. Setiap plugin adalah folder berisi file `plugin.json` (label namanya) dan satu file Python atau lebih.

### Jendela Plugin

Pilih **Alat › Plugin…**, atau **Alat › Plugin › Kelola Plugin…**, atau klik tombol steker di panel Scripting.

![Jendela Plugin menampilkan tiga plugin contoh, masing-masing dengan kotak centang, versi, deskripsi, dan perintahnya; di bawahnya ada tombol Buka Folder Plugin dan Muat Ulang serta Python yang akan menjalankannya.](screen:plugins)

Di jendela Plugin Anda bisa:

- menyalakan atau mematikan plugin dengan kotak centangnya (plugin yang dimatikan hilang dari menu dan palet, tetapi foldernya tetap ada);
- membaca deskripsi setiap plugin dan perintah yang ditambahkannya;
- mengeklik **Buka Folder Plugin** untuk membuka folder itu di File Explorer;
- mengeklik **Muat Ulang** setelah menambah, menghapus, atau mengubah plugin;
- melihat di bagian bawah Python mana yang akan menjalankan plugin.

Kalau sebuah `plugin.json` mengandung kesalahan, masalahnya ditulis merah di akhir daftar, lengkap dengan nama file-nya, sehingga Anda tahu apa yang harus diperbaiki.

Untuk menjalankan perintah plugin, pilih dari **Alat › Plugin**. Plugin dengan satu perintah langsung tampil; plugin dengan beberapa perintah punya submenu sendiri. Anda juga bisa mengetik namanya di palet perintah (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>). Perintah plugin membutuhkan font yang terbuka, dan menjadi abu-abu selama skrip lain berjalan.

### Tiga plugin contoh

Nama plugin dan perintahnya berasal dari pembuatnya, jadi tetap berbahasa Inggris di antarmuka berbahasa Indonesia.

| Plugin | Perintah | Fungsinya |
|---|---|---|
| **Glyph Report** | **Glyph Report** | Menampilkan glyph kosong, glyph tanpa Unicode, dan lima glyph terlebar, lalu menaruh ringkasan di bilah status. |
| **Mirror** | **Flip Selected Glyphs Horizontally**, **Flip Selected Glyphs Vertically** | Membalik glyph yang dipilih (atau glyph di editor) di dalam advance width-nya, dan membalik arah konturnya supaya tetap benar. |
| **fontTools Table Sizes** | **Show Table Sizes (fontTools)** | Mengompilasi font dan menampilkan setiap tabel OpenType beserta ukurannya dalam byte, jumlah glyph, dan units per em. |

Apa yang dicetak plugin masuk ke keluaran panel Scripting (di Mode Pro). Kalau plugin gagal, muncul pesan **Plugin gagal**, dan error lengkapnya ada di keluaran panel Scripting. Sama seperti skrip, setiap kali plugin dijalankan menjadi satu langkah undo.

Plugin contoh juga titik awal yang baik: buka file `main.py`-nya untuk melihat cara menulisnya.

### Membuat plugin sendiri

Mari membuat plugin bernama "Hello" dengan satu perintah yang menyapa Anda di bilah status.

1. Pilih **Alat › Plugin…** lalu klik **Buka Folder Plugin**.
2. Buat folder baru bernama `hello` di dalamnya.
3. Di folder itu, buat file teks bernama `plugin.json` dengan isi berikut:

   ```json
   {
     "id": "hello",
     "name": "Hello",
     "version": "1.0",
     "description": "Menyapa font yang sedang dibuka.",
     "commands": [
       { "id": "greet", "label": "Ucapkan Halo", "script": "main.py",
         "function": "greet", "shortcut": "Cmd+Alt+H" }
     ]
   }
   ```

4. Di sampingnya, buat file bernama `main.py`:

   ```python
   import fonteasy as fe


   def greet():
       f = fe.CurrentFont()
       fe.message("Halo dari %s!" % f.name)
   ```

5. Kembali ke jendela Plugin, klik **Muat Ulang**.

Sekarang **Hello** tampak di jendela Plugin dan **Ucapkan Halo** ada di **Alat › Plugin**. Pilih perintah itu, atau tekan <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>H</kbd>, dan bilah status menyapa font Anda.

Arti bagian-bagian `plugin.json`:

| Kunci | Artinya |
|---|---|
| `id` | Nama pendek yang unik: hanya huruf, angka, `-`, dan `_`. |
| `name`, `version`, `description` | Yang ditampilkan jendela Plugin. |
| `commands` | Satu entri untuk setiap item menu. |
| `id` (milik perintah) | Huruf, angka, `-`, dan `_`. Perintah lengkapnya menjadi `plugin.hello.greet`. |
| `label` | Teks di menu dan palet. |
| `script` | File Python yang dijalankan (`main.py` kalau dikosongkan). |
| `function` | Fungsi yang dipanggil setelah file dimuat. Kosongkan untuk sekadar menjalankan file-nya. |
| `shortcut` | Shortcut tambahan, boleh tidak ada. `Cmd` berarti <kbd>Ctrl</kbd> di Windows, misalnya `Cmd+Alt+H`. |

:::caution
Pilih shortcut plugin yang belum dipakai FontEasy: shortcut bawaan diperiksa lebih dulu, jadi shortcut plugin yang bentrok dengan salah satunya tidak akan pernah jalan. [Daftar shortcut](/reference/shortcuts/) menunjukkan mana yang sudah terpakai.
:::

Selama plugin berjalan, foldernya sendiri juga menjadi folder kerja dan ikut masuk jalur impor Python, jadi plugin bisa menyimpan file bantuan dan modul Python tambahan di samping `main.py`.

## Catatan keamanan

:::danger[Skrip bisa melakukan apa saja yang bisa dilakukan akun Anda]
Skrip Python adalah program sungguhan. Skrip berjalan dengan hak yang sama seperti akun pengguna Windows Anda: ia bisa membaca, mengubah, dan menghapus file Anda, serta memakai internet. FontEasy tidak bisa membatasi apa yang dilakukan skrip di luar font. Jalankan skrip dan pasang plugin hanya dari orang yang Anda percayai, dan baca kodenya lebih dulu kalau bisa. Langkah undo melindungi font yang sedang terbuka, bukan file-file Anda yang lain.
:::

Skrip di bab ini, skrip di menu **Contoh**, dan ketiga plugin contoh hanya bekerja pada font yang terbuka dan mencetak laporan. Contoh fontTools juga menulis file font sementara di folder Temp Anda.

## Jika terjadi masalah

Berikut pesan yang paling sering ditemui pemula, beserta apa yang harus dilakukan.

| Pesan | Artinya dan apa yang harus dilakukan |
|---|---|
| **Python tidak ditemukan. Pasang Python 3 dari python.org, atau pilih python.exe di Preferences › Scripting.** | FontEasy tidak menemukan Python. Python bawaan hilang (misalnya hanya `FontEasy.exe` yang disalin tanpa folder `python`-nya). Pasang ulang FontEasy, atau pilih Python di Preferensi. |
| **Python yang dipilih di Preferences (…) tidak ada.** | `python.exe` yang Anda pilih sudah dipindah atau dihapus. Pilih lagi, atau klik **Atur Ulang** untuk memakai Python bawaan. |
| `AttributeError: 'NoneType' object has no attribute ...` | Biasanya `fe.CurrentFont()` atau `fe.CurrentGlyph()` menghasilkan `None`: tidak ada font yang terbuka, atau tidak ada glyph yang dibuka atau dipilih. |
| `KeyError: 'Q'` | Anda meminta `f["Q"]` padahal font tidak punya glyph bernama `Q`. Periksa dulu dengan `"Q" in f`. |
| `FontEasyError: glyph.set: …` | Perintah FontEasy menolak. Teks setelah titik dua menjelaskan alasannya. |
| `SyntaxError` / `IndentationError` | Python tidak bisa membaca skrip: ada `:` atau tanda kurung yang hilang, atau spasi di awal baris yang tidak sejajar. Garis bawah merah menunjukkan barisnya. |
| `ModuleNotFoundError: No module named 'fontTools'` | Python yang Anda pilih tidak punya fontTools. Pasang di sana, atau kembali ke Python bawaan. |
| Skrip tidak pernah selesai | Mungkin skrip berputar tanpa akhir, atau menunggu `input()`, yang tidak bisa dipakai skrip. Tekan tombol berhenti. |

Python peduli pada indentasi (jarak di awal baris): baris-baris di dalam `for`, `if`, atau `def` harus diawali jumlah spasi yang sama (pakai empat).

:::tip
Untuk mencari kesalahan, tambahkan baris `print()` yang menampilkan nilai yang Anda ragukan, jalankan skrip, lalu lihat keluarannya.
:::

## Ringkasan

- Skrip mengotomatiskan pekerjaan berulang, pemeriksaan, dan perubahan yang harus tepat. Skrip ditulis dalam Python.
- Buka panel Scripting dengan **Alat › Scripting** (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>P</kbd>, Mode Pro). Jalankan dengan <kbd>Ctrl</kbd>+<kbd>Enter</kbd>; hentikan dengan tombol kotak.
- Keluaran menampilkan teks `print()` dan error; klik baris traceback merah untuk melompat ke barisnya.
- **Contoh** berisi enam skrip siap pakai; **Rekam makro** mengubah perintah menu Anda menjadi skrip.
- Skrip berjalan di Python terpisah: Python 3.14 bawaan dengan fontTools, atau Python pilihan Anda di **Edit › Preferensi… › Umum › Scripting**.
- `fe.CurrentFont()`, `fe.CurrentGlyph()`, dan `fe.SelectedGlyphs()` memberi Anda font dan glyph; lebar dan Unicode langsung tersimpan, bentuk tersimpan saat `g.update()` atau di akhir skrip.
- `fe.run()` menjalankan perintah FontEasy apa pun; `f.compile()` dan `f.ttfont()` menyerahkan font jadi ke fontTools.
- Satu kali menjalankan skrip sama dengan satu langkah undo.
- Plugin adalah folder berisi `plugin.json` dan Python di `%APPDATA%\FontEasy\plugins`; kelola lewat **Alat › Plugin…**.
- Skrip bisa melakukan apa saja yang bisa dilakukan akun Anda: jalankan hanya kode yang Anda percayai.

## Coba sendiri

1. Buka sebuah font, jalankan [contoh 1](#contoh-1-mencari-glyph-tanpa-unicode), lalu ubah skripnya sehingga hanya mencetak glyph yang namanya mengandung titik (petunjuk: `"." in g.name`).
2. Rekam makro: di Ikhtisar pilih tiga glyph, pilih **Glyph › Kontur › Tambah Titik Ekstrem** (Mode Pro) dan **Glyph › Kontur › Perbaiki Arah**, hentikan rekaman, lalu simpan skripnya. Setelah itu, jadikan plugin: taruh baris-baris rekaman di dalam fungsi `def run():` di sebuah folder plugin, ganti daftar glyph dengan `[g.name for g in fe.SelectedGlyphs()]`, dan beri label "Rapikan Glyph Terpilih".
