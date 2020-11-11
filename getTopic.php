<?php

header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method, Authorization");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");

define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'hajeri');

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
  $id = mysqli_real_escape_string($con, $request->id);      
}

$download = [];
$sql = "SELECT * FROM topic WHERE subjectId = '$id' ORDER BY chapterNumber ASC ";

if($result = mysqli_query($con,$sql))
{
  $i = 0;
  while($row = mysqli_fetch_assoc($result))
  {
         
      $download[$i]['id'] = $row['id']; 
      $download[$i]['classId'] = $row['classId']; 
      $download[$i]['subjectId'] = $row['subjectId']; 
      $download[$i]['chapterNumber'] = $row['chapterNumber']; 
      $download[$i]['topicName'] = $row['topicName']; 
      $i++;
  }

  echo json_encode($download);
}
else
{
  http_response_code(404);
}