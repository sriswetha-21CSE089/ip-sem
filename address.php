<form action="<?php  echo $_SERVER['PHP_SELF']; ?>" method="post">
address<input type="text" name="t1">
city<input type="text" name="t2">
state<input type="text" name="t3">
<input type="submit">
</form>
<?php  
$lh="localhost";
$un="root";
$pw="";
$db="mydb";
$conn=new mysqli($lh,$un,$pw,$db);
if($conn->connect_error)
{
    die($conn->connect_error);
}
echo "connected";
/*$s="create table addressess(address varchar(50),state varchar(10), city varchar(10))";
if($conn->query($s)==true)
{
    echo "table created";
}
else
{
    echo "table  not created";
}*/
if($_SERVER["REQUEST_METHOD"]=="POST")
{
   $a=$_REQUEST['t1'];
   $c=$_REQUEST['t2'];
   $s=$_REQUEST['t3'];
   if(empty($a))
   {
     echo "<br>enter add details";
   }
  // $p="/^[a-zA-Z]{2}$/";
  if(empty($c))
   {
     echo "<br>enter city details";
   }
   if(empty($s))
   {
     echo "<br>enter state details";
   }
   if(strlen($s)==0)
   {
          echo "<br>enter valid state";
   }
   else
   {
     $s1="insert into addressess values('$a','$s','$c')";
     if($conn->query($s1)==true)
     {
      echo "inserted";
     }
     
   }
}



?>