<?php

error_reporting(E_ALL);

require_once(__DIR__ . '/../config/database.php');

// fungsi untuk mencari tanaman
function find_book($id)
{
  try {
    $db = new PDO('mysql:host=localhost;dbname=' . DB_NAME, DB_USERNAME, DB_PASSWORD, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
    $statement = $db->prepare("SELECT * FROM books WHERE book_id = :id");
    $statement->bindValue(":id", $id);
    $statement->execute();

    $book = $statement->fetch(PDO::FETCH_ASSOC);

    return $book;
  } catch (PDOException $error) {
    echo $error->getMessage();
  }
}

// fungsi untuk mencari seluruh tanaman yang dijoinkan dengan kategori
function search_books_with_category($keyword = '', $category_id = '', $only_available = false)
{
  try {
    $db = new PDO('mysql:host=localhost;dbname=' . DB_NAME, DB_USERNAME, DB_PASSWORD, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);

    $query = "SELECT * FROM books INNER JOIN categories ON categories.category_id = books.category_id WHERE book_name LIKE :keyword";
    if ($category_id != '') {
      $query .= " AND books.category_id = :category_id";
    }
    if ($only_available) {
      $query .= " AND book_stock > 0";
    }
    $query .= ' ORDER BY book_id DESC';

    $statement = $db->prepare($query);
    $statement->bindValue(':keyword', "%$keyword%");
    if ($category_id != '') {
      $statement->bindValue(':category_id', $category_id);
    }
    $statement->execute();

    $books = $statement->fetchAll(PDO::FETCH_ASSOC);

    return $books;
  } catch (PDOException $error) {
    echo $error->getMessage();
  }
}

// fungsi untuk mendapatkan seluruh tanaman yang dijoinkan dengan kategori
function get_books_with_category()
{
  try {
    $db = new PDO('mysql:host=localhost;dbname=' . DB_NAME, DB_USERNAME, DB_PASSWORD, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
    $statement = $db->prepare("SELECT * FROM books INNER JOIN categories ON categories.category_id = books.category_id ORDER BY book_id DESC");
    $statement->execute();

    $books = $statement->fetchAll(PDO::FETCH_ASSOC);

    return $books;
  } catch (PDOException $error) {
    echo $error->getMessage();
  }
}

// fungsi untuk menyimpan tanaman
function save_book($book)
{
  try {
    $db = new PDO('mysql:host=localhost;dbname=' . DB_NAME, DB_USERNAME, DB_PASSWORD, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
    $statement = $db->prepare("INSERT INTO books (supplier_id, category_id, book_name, book_price, book_stock, book_photo) VALUES (:supplier_id, :category_id, :name, :price, :stock, :photo)");
    $statement->bindValue(":supplier_id", trim($book['supplier_id']));
    $statement->bindValue(":category_id", trim($book['category_id']));
    $statement->bindValue(":name", htmlspecialchars(trim($book['name'])));
    $statement->bindValue(":price", trim($book['price']));
    $statement->bindValue(":stock", trim($book['stock']));
    $statement->bindValue(":photo", trim($book['photo']));
    $statement->execute();
  } catch (PDOException $error) {
    echo $error->getMessage();
  }
}

// fungsi untuk memperbarui tanaman
function update_book($id, $book)
{
  try {
    $db = new PDO('mysql:host=localhost;dbname=' . DB_NAME, DB_USERNAME, DB_PASSWORD, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
    $statement = $db->prepare("UPDATE books SET supplier_id = :supplier_id, category_id = :category_id, book_name = :name, book_price = :price, book_stock = :stock, book_photo = :photo WHERE book_id = :id");
    $statement->bindValue(":id", $id);
    $statement->bindValue(":supplier_id", trim($book['supplier_id']));
    $statement->bindValue(":category_id", trim($book['category_id']));
    $statement->bindValue(":name", htmlspecialchars(trim($book['name'])));
    $statement->bindValue(":price", trim($book['price']));
    $statement->bindValue(":stock", trim($book['stock']));
    $statement->bindValue(":photo", trim($book['photo']));
    $statement->execute();
  } catch (PDOException $error) {
    echo $error->getMessage();
  }
}

// fungsi untuk menghapus tanaman
function delete_book($id)
{
  try {
    $db = new PDO('mysql:host=localhost;dbname=' . DB_NAME, DB_USERNAME, DB_PASSWORD, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
    $statement = $db->prepare("DELETE FROM books WHERE book_id = :id");
    $statement->bindValue(":id", $id);
    $statement->execute();
  } catch (PDOException $error) {
    echo $error->getMessage();
  }
}

// fungsi untuk mendapatkan total tanaman berdasarkan kategori
function count_related_books_based_on_category($category_id)
{
  try {
    $db = new PDO('mysql:host=localhost;dbname=' . DB_NAME, DB_USERNAME, DB_PASSWORD, [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
    $statement = $db->prepare("SELECT COUNT(*) AS count_related_books FROM books WHERE category_id = :category_id");
    $statement->bindValue(":category_id", $category_id);
    $statement->execute();

    $book = $statement->fetch(PDO::FETCH_ASSOC);

    return $book;
  } catch (PDOException $error) {
    echo $error->getMessage();
  }
}
