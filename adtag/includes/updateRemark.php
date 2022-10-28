<?php 
session_start();
include_once 'connection.php';
include_once 'db-functions.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
if(isset($_POST['id'])){
    $id = $_POST['id'];
    $remark = $_POST['remark'];
    $status_v = $_POST['status_v'];
    $done = updateRemark($connectDB,$id,$remark,$status_v,$_SESSION['username']);
    echo json_encode($done);
}
}

//EMAIL FUNCTION FOR VEENA
if ($_SESSION['role'] == 3){

$sql="SELECT * FROM `adtagdata` WHERE id=$id LIMIT 1";
      $result=mysqli_query($connectDB,$sql);
      $row=mysqli_fetch_assoc($result);
      
      
    $to = "jasmeet.singh@hockeycurve.com";
    $message = "Hi team, <br> \r\n\r\n";
    if ($status_v=="active"){
        $message .="Approved by Veena";
    }
    $message .="Remark - " . $row['remark']."<br><br> \r\n\r\n".
    
    " <b>Requesting you to please give approval on above campaign using campaign manager tool </b><br><br> \r\n\r\n".
    "Link for tool- https://publisherplex.io/Adtag/index.php<br><br>\r\n\r\n";
    $message .="Thanks and Regards  <br>\r\n";
    $message .="HC Team";
     $subject ="Veena - Approval -" . $row['campaign_name'];
    $header = "From:bizops@hockeycurve.com \r\n";
    $header .= "MIME-Version: 1.0\r\n";
                 $header .= "Content-type: text/html\r\n";
    
// "CC: priya.rajput@hockeycurve.com";
                     
                     $retval = mail ($to,$subject,$message,$header);
                    //  echo $header;
                     if( $retval == true ) {
                        echo "Email was send successfully please close the window";
                        exit;
                     }else {
                        echo "Message could not be sent...";
                     }
}
 ?>