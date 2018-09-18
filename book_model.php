<?php
function get_books(){
    include "../connection.php";
    $sql = "SELECT * FROM book";

    $resultObject = $db->query($sql);

    $resultArray = $resultObject->fetchAll(PDO::FETCH_ASSOC);

    return $resultArray;
}
?>
