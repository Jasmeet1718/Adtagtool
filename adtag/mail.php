<?php
include "includes/connection.php";
$id=$_GET['id'];
if(isset($_POST['id'])) {
    $id=$_GET['id'];
}

$sql="SELECT * FROM `adtagdata` WHERE id=$id LIMIT 1";
      $result=mysqli_query($connectDB,$sql);
      $row=mysqli_fetch_assoc($result);
      
      
    $to = "jasmeet.singh@hockeycurve.com";
    $message = "Hi team, <br> \r\n\r\n";

    $message .="PFB adtags and previews for " .  $row['campaign_name'] . "<br><br> \r\n\r\n";
    
    $message .="Adtag - https://publisherplex.io/Adtag/adtags.php?id=".$row['id']."<br><br> \r\n\r\n";
    
    $message .="Preview - https://publisherplex.io/Adtag/previews.php?id=".$row['id']."<br><br> \r\n\r\n".
    
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
?>
