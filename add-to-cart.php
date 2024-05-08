<?php

// mulai sesi
session_start();

// cek apakah cust sudah login
if (!isset($_SESSION['customer_id'])) {
  header("Location: ./login.php");
  exit();
}

// cek apakah mengklik tambah ke keranjang
if (!isset($_POST['book_id'])) {
  header("Location: ./products.php");
  exit();
}

// import func untuk CRUD informasi dari cart
require_once('data/cart-item.php');

// set cust id dan book id
$customer_id = $_SESSION['customer_id'];
$book_id = $_POST['book_id'];

// cek apakah tumbuhan tersebut sudah pernah ada di keranjang
$cart_item = find_cart_item($customer_id, $book_id);

// jika tumbuhan tersebut belum pernah ditambahkan maka masukkan ke keranjang. jika sudah pernah ditambahkan ke keranjang maka update nilainya + x
if (!$cart_item) {
  save_cart_item($customer_id, $book_id);
} else {
  update_cart_item($customer_id, $book_id, $cart_item['cart_item_qty'] + 1);
}

// jika klik beli
if (isset($_POST['buy_now'])) {
  header('Location: ./cart.php');
  exit();
}

$previous_page = $_SERVER['HTTP_REFERER'];
header("Location: $previous_page");
exit();
