<?php 

session_start();
$con = mysql_connect('localhost','aat_pro','h#(1!wn&9z@%45sS`g') or die('can not connect to server');
if($con)
{
	mysql_select_db('foodworld',$con) or die('Can not select database');
}



/* Login */
function loggedin() {
	
	if (isset($_SESSION['Username_fw']) || isset($_COOKIE['Username_fw']) ) {
		
		$loggedin = TRUE;
		return $loggedin;
	
	}
} 


/* User Information */
@$UserName_S= $_SESSION['Username_fw'];
@$UserName_C= $_COOKIE['Username_fw'];
$query = "SELECT * FROM `user_account` WHERE `UserName` = '$UserName_S' OR `UserName` = '$UserName_C' ";
if ($sql_query = mysql_query ($query)) {
	while ($rows = mysql_fetch_assoc ($sql_query)) {
		$FirstName = $rows['FirstName'];
		$LastName = $rows['LastName'];
		$Email = $rows['Email'];
		$UserName = $rows['UserName'];
		$Password = $rows['Password'];
		$UserLevel = $rows['UserLevel'];
	}
}

?>

<?php if(isset($_GET['page'])){ 
          
        $pages=array("products", "cart"); 
          
        if(in_array($_GET['page'], $pages)) { 
              
            $_page=$_GET['page']; 
              
        }else{ 
              
            $_page="products"; 
              
        } 
          
    }else{ 
          
        $_page="products"; 
          
    } 

?>
