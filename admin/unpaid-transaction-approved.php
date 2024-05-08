<?php

session_start();

// cek apakah user belum login
if (!isset($_SESSION['staff_id'])) {
  header("Location:./login.php");
  exit();
}

// cek apakah peran user bukan administrator
if ($_SESSION['role_name'] != 'administrator') {
  header("Location:./unpaid-transactions.php");
  exit();
}

// cek apakah id pesanan tidak ada
if (!isset($_GET['order_id'])) {
  header("Location:./unpaid-transactions.php");
  exit();
}

require_once('../data/transaction.php');

$find_order = find_order_admin($_GET['order_id']);

// cek apakah pesanan tidak ditemukan
if (!$find_order) {
  header('Location:./unpaid-transactions.php');
  exit();
}

approve_order($_GET['order_id']);

// decrease stock by 1
decrease_stock($_GET['order_id']);

header('Location:./unpaid-transactions.php');
exit();

function decrease_stock($order_id)
{
  require_once('../data/transaction.php');
  $order = find_order_admin($order_id);
  $book_id = $order['book_id'];
  $book_stock = get_book_stock($book_id);
  $new_stock = $book_stock - 1;
  update_book_stock($book_id, $new_stock);
}

function get_book_stock($book_id)
{
  // query to get book stock
  $conn = mysqli_connect("localhost", "root", "", "store");
  $query = mysqli_query($conn, "SELECT book_stock FROM books WHERE book_id = $book_id");
  $result = mysqli_fetch_assoc($query);
  return $result['book_stock'];
}

function update_book_stock($book_id, $new_stock)
{
  // query to update book stock
  $conn = mysqli_connect("localhost", "root", "", "store");
  $query = mysqli_query($conn, "UPDATE books SET book_stock = $new_stock WHERE book_id = $book_id");
}
