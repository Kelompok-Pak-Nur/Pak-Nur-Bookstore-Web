<?php

session_start();

require('layouts/header.php');

?>

<!-- content -->
<main>
  <!-- hero -->
  <div class="hero container">
    <div class="hero__left">
      <h1 class="hero__title">Selamat datang di</h1>
      <h1 class="hero__title">Pak Nur Bookstore</h1>
      <p class="hero__subtitle">
        Temukan berbagai macam buku dengan harga yang murah pastinya!👍
      </p>
      <a href="./products.php" class="hero__button">Mulai sekarang</a>
    </div>
    <div class="hero__right">
      <div class="hero__img-group">
        <img src="./assets/img/heros/hero1.jpg" alt="Field" />
        <img src="./assets/img/heros/hero2.jpg" alt="Field" />
      </div>
      <div class="hero__img-group">
        <img src="./assets/img/heros/hero3.jpg" alt="Field" />
        <img src="./assets/img/heros/hero4.jpg" alt="Field" />
      </div>
    </div>
  </div>
  <!-- end hero -->
  <!-- promotion -->
  <div class="promotion">
    <div class="promotion__container container">
      <div class="promotion__left">
        <img src="./assets/img/promotions/promotion1.jpg" alt="Promotion" class="promotion__img" />
        <img src="./assets/img/promotions/promotion2.jpg" alt="Promotion" class="promotion__img" />
      </div>
      <div class="promotion__right">
        <h2 class="promotion__title">
          Dapatkan pengalaman berbelanja yang menyenangkan!
        </h2>
        <p class="promotion__description">
          Pak Nur Bookstore, tempatnya buku lengkap dengan harga yang terjangkau! Temukan ragam pilihan buku berkualitas tanpa harus menguras dompet Anda. Mulai jelajahi dunia pengetahuan dengan mudah di sini.
        </p>
      </div>
    </div>
  </div>
  <!-- end promotion -->
  <!-- how -->
  <div class="how container">
    <h2 class="how__header">3 Langkah Mudah Membeli Buku</h2>
    <div class="how__body">
      <div class="how__list">
        <div class="how__item">
          <img src="./assets/img/how/how-1.jpeg" alt="Step 1" class="how__img" />
          <h3 class="how__title">1. Pilih buku favorit anda</h3>
          <p class="how__description">
            Temukan keindahan literatur dengan menjelajahi koleksi kami yang beragam, lengkap dengan sinopsis dan ulasan untuk memudahkan pemilihan.
          </p>
        </div>
        <div class="how__item">
          <img src="./assets/img/how/how-2.jpeg" alt="Step 1" class="how__img" />
          <h3 class="how__title">
            2. Tambahkan ke keranjang belanja
          </h3>
          <p class="how__description">
            klik "+ Keranjang" untuk menyimpannya, dan pantau dengan mudah jumlah barang Anda di keranjang belanja.
          </p>
        </div>
        <div class="how__item">
          <img src="./assets/img/how/how-3.jpeg" alt="Step 1" class="how__img" />
          <h3 class="how__title">
            3. Selesaikan pembelian
          </h3>
          <p class="how__description">
            Selesaikan pembelian Anda dengan mudah menggunakan formulir pembayaran sederhana.
          </p>
        </div>
      </div>
      <a href="./products.php" class="how__button">Jelajahi buku</a>
    </div>
  </div>
  <!-- end how -->
  <!-- join -->
  <div class="join container">
    <div class="join__card join__card_admin">
      <h2 class="join__title">Pengelola</h2>
      <p class="join__description">
        Hanya orang-orang tertentu yang dapat akses*
      </p>
      <a href="./admin/login.php" class="join__button">Mulai sebagai staff</a>
    </div>
    <div class="join__card">
      <h2 class="join__title">Beli buku sekarang</h2>
      <p class="join__description">
        Mulai pengalaman belanja Anda sekarang - pilih, tambahkan ke keranjang, dan miliki buku pilihanmu!
      </p>
      <a href="./login.php" class="join__button join__button_primary">Mulai sebagai pelanggan</a>
    </div>
  </div>
  <!-- end join -->
</main>
<!-- end content -->

<?php

require('layouts/footer.php');

?>