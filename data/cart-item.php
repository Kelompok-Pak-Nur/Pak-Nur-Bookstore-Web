<?php

error_reporting(E_ALL);

require_once(__DIR__ . '/../config/database.php');

// fungsi untuk mendapatkan seluruh item keranjang yang dijoinkan dengan tanaman
function get_cart_items_with_book($customer_id)
{
  try {
    $db = new PDO('mysql:host=localhost;dbname=' . DB_NAME, DB_USERNAME, DB_PASSWORD, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
    $statement = $db->prepare("SELECT * FROM cart_items INNER JOIN books ON books.book_id = cart_items.book_id WHERE customer_id = :customer_id ORDER BY cart_items.book_id DESC");
    $statement->bindValue(":customer_id", $customer_id);
    $statement->execute();

    $cart_items = $statement->fetchAll(PDO::FETCH_ASSOC);

    return $cart_items;
  } catch (PDOException $error) {
    throw new Exception($error->getMessage());
  }
}

// fungsi untuk mendapatkan seluruh item keranjang yang dijoinkan dengan tanaman dan kategori
function get_cart_items_with_book_with_category($customer_id)
{
  try {
    $db = new PDO('mysql:host=localhost;dbname=' . DB_NAME, DB_USERNAME, DB_PASSWORD, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
    $statement = $db->prepare("SELECT * FROM cart_items INNER JOIN books ON books.book_id = cart_items.book_id INNER JOIN categories ON categories.category_id = books.category_id WHERE customer_id = :customer_id ORDER BY cart_items.book_id DESC");
    $statement->bindValue(":customer_id", $customer_id);
    $statement->execute();

    $cart_items = $statement->fetchAll(PDO::FETCH_ASSOC);

    return $cart_items;
  } catch (PDOException $error) {
    throw new Exception($error->getMessage());
  }
}

// fungsi untuk mencari item keranjang
function find_cart_item($customer_id, $book_id)
{
  try {
    $db = new PDO('mysql:host=localhost;dbname=' . DB_NAME, DB_USERNAME, DB_PASSWORD, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
    $statement = $db->prepare("SELECT * FROM cart_items WHERE customer_id = :customer_id AND book_id = :book_id");
    $statement->bindValue(":customer_id", $customer_id);
    $statement->bindValue(":book_id", $book_id);
    $statement->execute();

    $cart_item = $statement->fetch(PDO::FETCH_ASSOC);

    return $cart_item;
  } catch (PDOException $error) {
    throw new Exception($error->getMessage());
  }
}

// fungsi untuk menyimpan item ke keranjang
function save_cart_item($customer_id, $book_id)
{
  try {
    $db = new PDO('mysql:host=localhost;dbname=' . DB_NAME, DB_USERNAME, DB_PASSWORD, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
    $statement = $db->prepare("INSERT INTO cart_items (customer_id, book_id, cart_item_qty) VALUES (:customer_id, :book_id, 1)");
    $statement->bindValue(":customer_id", $customer_id);
    $statement->bindValue(":book_id", $book_id);
    $statement->execute();
  } catch (PDOException $error) {
    throw new Exception($error->getMessage());
  }
}

// fungsi untuk memperbarui item keranjang
function update_cart_item($customer_id, $book_id, $qty)
{
  try {
    $db = new PDO('mysql:host=localhost;dbname=' . DB_NAME, DB_USERNAME, DB_PASSWORD, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
    $statement = $db->prepare("UPDATE cart_items SET cart_item_qty = :qty WHERE customer_id = :customer_id AND book_id = :book_id");
    $statement->bindValue(":qty", $qty);
    $statement->bindValue(":customer_id", $customer_id);
    $statement->bindValue(":book_id", $book_id);
    $statement->execute();
  } catch (PDOException $error) {
    throw new Exception($error->getMessage());
  }
}

// fungsi untuk menghapus item keranjang
function delete_cart_item($customer_id, $book_id)
{
  try {
    $db = new PDO('mysql:host=localhost;dbname=' . DB_NAME, DB_USERNAME, DB_PASSWORD, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
    $statement = $db->prepare("DELETE FROM cart_items WHERE customer_id = :customer_id AND book_id = :book_id");
    $statement->bindValue(":customer_id", $customer_id);
    $statement->bindValue(":book_id", $book_id);
    $statement->execute();
  } catch (PDOException $error) {
    throw new Exception($error->getMessage());
  }
}

// fungsi untuk menghapus seluruh item keranjang
function delete_all_cart_items($customer_id)
{
  try {
    $db = new PDO('mysql:host=localhost;dbname=' . DB_NAME, DB_USERNAME, DB_PASSWORD, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
    $statement = $db->prepare("DELETE FROM cart_items WHERE customer_id = :customer_id");
    $statement->bindValue(":customer_id", $customer_id);
    $statement->execute();
  } catch (PDOException $error) {
    throw new Exception($error->getMessage());
  }
}
