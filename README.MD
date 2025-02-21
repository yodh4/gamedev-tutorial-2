CYRILUS YODHA MAHESWARA

2206083722

## Latihan: Playtest
- Apa saja pesan log yang dicetak pada panel <b>output</b>

    Terdapat dua pesan yang dicetak pada panel output yaitu "Platform initialized" dan "Reached objective!"

- Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel <b>Output</b>?

    Pesan yang dicetak ketika kita menggerakan landasan ke batas area atas
    adalah "Reached objective!"

- Buka scene `MainLevel` dengan tampilan workspace 2D. Apakah lokasi scene `ObjectiveArea` memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?

    Lokasi scene `ObjectiveArea` memiliki kaitan dengan pesan log yang dicetak pada percobaan selanajutnya karena jika kita melihat kode yang ada di file `ObejectiveArea.gd`
    ```
    func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip"):
		print("Reached objective!")
    ```
    Berdasarkan kode tersebut, jika terdapat objek `RigidBody2D` dengan attribut `name` == `BlueShip` memasuki area dari `ObjectiveArea` maka akan mencetak "Reached objective!" ke panel output

<br></br>
## Latihan: Memanipulasi Node dan Scene

- Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node     bertipe Sprite. Apa fungsi dari node bertipe Sprite?

    Node bertipe Sprite berfungsi untuk menampilkan texture 
    <br></br>

- Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?

    Node RigidBody2D adalah objek yang mengimplementasikan elemen fisika
    secara otomatis yang artinya objek ini tidak dapat digerakan secara manual melainkan
    harus digerakan dengan mengaplikasikan suatu gaya terhadap objek tersebut.

    Node StaticBody2D adalah node yang digunakan untuk objek yang tidak bergerak
    seperti dinding, lantai, ataupun rintangan yang harus tetap diam namun harus
    berinteraksi dengan objek lainnya
    <br></br>

- Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel.
    Apa yang terjadi?

    Tidak ada perbedaan karena gaya jatuh RigidBody2D dipengaruhi oleh gravitai
    dan gravitasi tidak dipengaruhi oleh massa benda<br></br>    

- Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, 
lalu coba jalankan scene MainLevel. Apa yang terjadi?

    Objek pesawat tidak akan berinteraksi dengan StonePlatform sehingga akan menembus
StonePlatform dan jatuh ke bawah <br></br> 

- Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas.
Apa yang terjadi pada visualisasi BlueShip di Viewport?

    Mengubah position akan mengubah posisi BlueShip di viewport, mengubah rotation akan
    merotasi BlueShip di viewport, dan mengubah Scale akan mengubah ukuran Blueship <br></br> 

- Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2.
Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai 
dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?

    Karena nilai atribut position node StonePlatform dan StonePlatform2 yang ada di Inspector
    adalah nilai dari posisi relatif StonePlatform dan StonePlatform2 terhadap parent nodenya yaitu
    PlatformBlue.