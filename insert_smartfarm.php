<?php

include "connect.php";

$zone = $_GET['zone'];

$sql = "INSERT INTO tbl_smartfarm_iot (zone, board, temp, humid, dmy)
VALUES ('$zone', '$_GET[board]', '$_GET[temp]', '$_GET[humid]', now())";

if ($conn->query($sql) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>