<?php
include "includes/connection.php";
$id=$_GET['id'];
if(isset($_POST['id'])) {
    $id=$_GET['id'];
}

error_reporting(E_ERROR | E_PARSE);

session_start();
if(!$_SESSION["username"]){
  header("location: index.php");
}
date_default_timezone_set('Asia/Kolkata');
$time = date('Y-m-d H:i:s');
if(isset($_POST['submit_update'])){
    $adtag_type=$_POST['adtag_type'];
    $geo=$_POST['geo'];
    $fcat_n=$_POST['fcat_n'];
    $campaign_name=$_POST['campaign_name'];
    $client=$_POST['client'];
    $fcat=$_POST['fcat'];
    $publisher=$_POST['publisher'];
    $dims=$_POST['dims'];
    $master_client=$_POST['master_client'];
    $dev_name=$_SESSION["username"];
    $sql= " UPDATE `adtagdata` SET `fcat_n` = '$fcat_n' , `update_time` = '$time' , `update_developer_name` = '$dev_name' , `adtag_type` = '$adtag_type' , `geo` = '$geo' , `campaign_name` = '$campaign_name' , `master_client` = '$master_client' , `client` = '$client' , `fcat` = '$fcat' , `publisher` = '$publisher' , `dims` = '$dims'  WHERE id=$id LIMIT 1 ";
    

    $result=mysqli_query($connectDB,$sql);
    if($result){
        header("location: updateconsole.php?id=$id");
    }
    else{
        // echo "Failed: ".mysqli_error($conn);
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Page</title>
    <style>
        #box {
            padding: 5px;
            border: 3px solid black;
            border-radius: 5px;
            cursor: pointer;
            overflow: hidden;
            box-sizing: border-box;
        }
    </style>
</head>

<body>
    <div id="box">
    <?php 
      $sql="SELECT * FROM `adtagdata` WHERE id=$id LIMIT 1";
      $result=mysqli_query($connectDB,$sql);
      $row=mysqli_fetch_assoc($result);
    ?>
        <form action="" method="post" >
            <!-- <label for="Adtag Type :"><input type="text" name="Name" id=""></label> <br> -->
            Adtag Type: <select id="ad" name="adtag_type" >
                <option id="typ1" value="DCM">DCM</option>
                <option id="typ3" value="Dv360" >Dv360</option>
                <option id="typ2" value="Dv360Dbmc">Dv360Dbmc</option>
                <option value="DFP">DFP</option>
                <option value="CRITEO">CRITEO</option>
                <option value="Sports">Sports</option>
            </select><br><br>
            <?php if($row['fcat_n']=="fcat_nan"){
?><input type="checkbox" id="fcat_nan" name="fcat_n" value="fcat_nan" checked="checked"> <?php
            } else {
                ?> <input type="checkbox" id="fcat_nan" name="fcat_n" value="fcat_nan"> <?php
            } ?>
            <label for="fcat_nan">Fcat not required</label><br><br>
            <?php if($row['geo']=="true"){
?><input type="radio" id="geocity" name="geo" value="true" checked><?php
            } else {
                ?> <input type="radio" id="geocity" name="geo" value="true" > <?php
            } ?>
            <label for="city">Geo City / Weather</label><br><br>
            <?php if($row['geo']=="bcamp"){
?><input type="radio" id="geobcammp" name="geo" value="bcamp" checked><?php
            } else {
                ?> <input type="radio" id="geobcammp" name="geo" value="bcamp" > <?php
            } ?>
            <label for="bcamp">Geo Bcamp (used to provide city data and store it) / Weather</label><br><br><br>
            Campaign Name:&nbsp; <input type="text" name="campaign_name" id="" value="<?php echo $row['campaign_name']?>" required> <br><br>
            Master-client: 
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <input type="text" name="master_client" id="" value="<?php echo $row['master_client']?>" required> <br><br>
           Client: 
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <input type="text" name="client" id="" value="<?php echo $row['client']?>" required> <br><br>
           <span id="fcat_g">Fcat:
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" name="fcat" id="fcat_v" value="<?php echo $row['fcat']?>"> <br><br></span>  
            Publisher:
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" name="publisher" id="" value="<?php echo $row['publisher']?>"> <br><br>
            Custom Dimension(s):[WidthxHeight format, separated with comma] 
            &nbsp;
            <input type="text" name="dims" id="" value="<?php echo $row['dims']?>" required><br><br>
            <button type="submit" name="submit_update">Submit</button> <button onclick="location='./'">Back</button><br><br>
        </form> <br><br>
        
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script>

        
        document.getElementById("ad").value="<?php echo $row['adtag_type']?>";
       
        var radi=document.getElementById("fcat_nan");
        if (radi.checked==true){
            document.getElementById("fcat_g").style.display="none";
    document.getElementById("typ1").disabled=true;
    document.getElementById("typ2").disabled=true;
    document.getElementById("typ3").selected=true;
    document.getElementById("fcat_v").value="";
        }else{
            document.getElementById("fcat_g").style.display="block";
    document.getElementById("ad").options[0].disabled=false;
    document.getElementById("ad").options[2].disabled=false;
        }
        radi.addEventListener('change', function() {
  if (this.checked) {
    document.getElementById("fcat_g").style.display="none";
    document.getElementById("typ1").disabled=true;
    document.getElementById("typ2").disabled=true;
    document.getElementById("typ3").selected=true;
  } else {
    document.getElementById("fcat_g").style.display="block";
    document.getElementById("ad").options[0].disabled=false;
    document.getElementById("ad").options[2].disabled=false;
  }
});

$(function(){
    $('input[name="geo"]').click(function(){
        var $radio = $(this);

        
        if ($radio.data('waschecked') == true)
        {
            $radio.prop('checked', false);
            $radio.data('waschecked', false);
        }
        else
            $radio.data('waschecked', true);
            $radio.siblings('input[name="geo"]').data('waschecked', false);
    });
});
    </script>
</body>

</html>