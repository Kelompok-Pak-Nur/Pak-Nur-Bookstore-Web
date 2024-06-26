<?php

session_start();

// cek apakah cust sudah login
if (!isset($_SESSION['customer_id'])) {
  header("Location: ./login.php");
  exit();
}

// JIKA TIDAK TERDETEKSI PRODUK YANG AKAN DIHAPUS
if (!isset($_POST['book_id'])) {
  header("Location: ./products.php");
  exit();
}

require_once('data/cart-item.php');

// ID CUST, ID PRODUK
$customer_id = $_SESSION['customer_id'];
$book_id = $_POST['book_id'];

// CARI PRODUK YANG AKAN DIHAPUS UNTUK USER X
$cart_item = find_cart_item($customer_id, $book_id);
// HAPUS PRODUK
delete_cart_item($customer_id, $book_id);

$previous_page = $_SERVER['HTTP_REFERER'];
header("Location: $previous_page");
exit();
