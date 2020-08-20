<?php

header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method, Authorization");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");

define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'textbook');

function connect()
{
  $connect = mysqli_connect(DB_HOST ,DB_USER ,DB_PASS ,DB_NAME);

  if (mysqli_connect_errno($connect)) {
    die("Failed to connect:" . mysqli_connect_error());
  }

  mysqli_set_charset($connect, "utf8");

  return $connect;
}

$con = connect();

$postdata = file_get_contents("php://input");
if(isset($postdata) && !empty($postdata))
{  
  $request = json_decode($postdata);
  // Sanitize.
  $id = mysqli_real_escape_string($con, trim($request->id));    
}

$download = [];
$sql = "SELECT * FROM subject WHERE classId = '$id' ";

if($result = mysqli_query($con,$sql))
{
  $i = 0;
  while($row = mysqli_fetch_assoc($result))
  {
      $classId = $row['classId']; 
      $classQuery = "SELECT * FROM class WHERE id = '$classId'";
      $classrun = mysqli_query($con,$classQuery);
      $rowClass = mysqli_fetch_assoc($classrun);
      
      
            
    
      $download[$i]['id'] = $row['id']; 
      $download[$i]['subjectName'] = $row['subjectName'];
      $download[$i]['pdfLink'] = $row['pdfLink'];
      $download[$i]['image'] = $row['image'];
      $download[$i]['className'] = $rowClass['className']; 
      $i++;
  }

  echo json_encode($download);
}
else
{
  http_response_code(404);
}