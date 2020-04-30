<?php
include 'conn.php';



if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['saveSeller'])){
   $hash = password_hash($_POST['Password'], PASSWORD_DEFAULT);
    $email=htmlentities($_POST['email']);
    $last_name= htmlentities($_POST['Last_Name']);
    $frist_name= htmlentities($_POST['First_Name']);
    $Username= htmlentities($_POST['Username']);
    $confiremEmail= htmlentities($_POST['confiremEmail']);
    $emailForrefernce= htmlentities($_POST['emailForrefernce']);
    $city= htmlentities($_POST['city']);
    $countery= htmlentities($_POST['countery']);
    $zip= htmlentities($_POST['zip']);
    $resperson= htmlentities($_POST['resperson']);
    $Zip_Code= htmlentities($_POST['Zip_Code']);
    $filename1=  upload("filefees");
    $numberFees= htmlentities($_POST['numberFees']);
    $companyName= htmlentities($_POST['companyName']);
    $filename2=  upload("fileimagefees");
    $filename3=  upload("idcard");
    $address1= htmlentities($_POST['address1']);
    $address2= htmlentities($_POST['address2']);
    $numberBulding= htmlentities($_POST['numberBulding']);
    $door= htmlentities($_POST['door']);
    $bankname1= htmlentities($_POST['bankname1']);
    $banksymblo= htmlentities($_POST['banksymblo']);
    $softcode= htmlentities($_POST['softcode']);
     $namebankaccount= htmlentities($_POST['namebankaccount']);
     $saveSeller= htmlentities($_POST['saveSeller']);
    
    
 $SQL="INSERT INTO users(first_name,last_name,user_name,email,password,role_id,	status)values('$frist_name','$last_name','$Username','$email','$hash',11,'0')";
if ($conn->query($SQL) === TRUE) {
     $latest_id = $conn->insert_id;  
  $SQL2="INSERT INTO sellerdetails(	First_Name,Last_Name,	Username,email,confiremEmail,emailForrefernce,password,ConfirmPassword,city,countery,	zip,resperson,Zip_Code,filefees,fileimagefees,numberFees,companyName,idcard,address1,address2,	numberBulding,door,bankname1,banksymblo,softcode,iban,	namebankaccount,users_id)values('$frist_name','$last_name','$Username',
  '$email','$confiremEmail','$emailForrefernce','$hash','$hash','$city','$countery','$zip','$resperson','$Zip_Code','$filename1','$filename2','$numberFees','$companyName','$filename3','$address1','$address2','$numberBulding','$door','$bankname1','$banksymblo','$softcode','$namebankaccount','$saveSeller','$latest_id')";
    if ($conn->query($SQL2) === TRUE) { 
        
  echo'
  <html lang="en" dir="rtl">
   <head>
    <meta charset="UTF-8">
    <title>CodePen - Employee Account | Form Wizard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet"href="message.css">
</head>
       <body class="back"><div class="back_main">
                 <div class="margin_data">

                                تم التسجيل بنجاح
                            </div>
                            <div class="margin_data">
                                <h3 >شكرا على تسجيلك معنا !</h3>
                                <h3 >سوف يتم مراجعة بيانتك وارسال ايميل بالحساب الخاص بك</h3>
                            </div>
                        </div></body></html>';
                                      header("Refresh: 3; URL=index.php");
                                      }
} else {
    echo "Error: " . $SQL . "<br>" . $conn->error;
}

    

    
}


function upload($fname) {
       $filetmp = $_FILES["$fname"]["tmp_name"];
		$filename = $_FILES["$fname"]["name"];
		$filetype = $_FILES["$fname"]["type"];
		$filepath = "photo/".$filename;
	
	move_uploaded_file($filetmp,$filepath);
    return $filepath;
    
}

     