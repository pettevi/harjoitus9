<?php
include "book_model.php";
include "book_view.php";
$books=get_books();
show_books($books);
?>
