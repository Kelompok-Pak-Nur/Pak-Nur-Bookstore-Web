<?php

session_start();

// cek apakah user belum login
if (!isset($_SESSION['staff_id'])) {
  header("Location: ./login.php");
  exit();
}

// cek apakah peran user bukan administrator
if ($_SESSION['role_name'] != 'administrator') {
  header("Location: ./index.php");
  exit();
}

// cek apakah id tanaman tidak ada
if (!isset($_GET['book_id'])) {
  header("Location: ./products.php");
  exit();
}

require_once('../data/book.php');
require_once('../libs/file.php');

$book = find_book($_GET['book_id']);

// cek apakah tanaman tidak ditemukan
if (!$book) {
  header("Location: ./products.php");
  exit();
}

delete_book($_GET['book_id']);
delete_file($book['book_photo'], 'books');

header('Location: ./products.php');
exit();
