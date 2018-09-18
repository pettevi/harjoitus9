<html>
<head>
    <title>MVC example</title>
</head>
<body>
    <h2>Books from the database</h2>
    <?php
    function show_books($a)
    {
      foreach ($a as $key)
      {
        echo "ID ".key['book_id']."<br>";
        echo "Nimi ".key['book_name']."<br>";
        echo "Kirjailija ".key['author']."<br>";
        echo "ISBN ".key['isbn']."<br>";
      }
    }
 ?>

<p>

 <?php
 function show_books2($a)
 {
     print_r($a);
 }
?>

</p>

</body>
</html>
