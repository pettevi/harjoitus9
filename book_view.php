<html>
<head>
    <title>MVC example</title>
</head>
<body>
    <h2>Books from the database</h2>
    <?php
    function show_books($a)
    {
      foreach ($a as $key => $value)
      {
        echo "ID ".a['book_id']."<br>";
        echo "Nimi ".a['book_name']."<br>";
        echo "Kirjailija ".a['author']."<br>";
        echo "ISBN ".a['isbn']."<br>";
      }

      <p>
        print_r($a);
      </p>
    }
 ?>
</body>
</html>
