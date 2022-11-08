<?php require_once("config.php"); ?>

<!DOCTYPE html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="style2.css">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
   
   <div class="header">
       <div class="container">
            <?php include("navbar.php") ?>
           <div class="row">
                <div class="col-2">

                    <h1>This Website Is All<br>About Car Lifestyle.</h1>
                    <a href="products.php" class="btn">More Products &#8594;</a>
                </div>
                <div class="col-2">
                    <img src="images/dodge.png">
                </div>
               
           </div>
           
       </div>
       </div>
  
  
  <div class="small-container">
        <h2 class="title">Latest Products</h2>
             <div class="row">
             	<?php get_four_products(); ?>
           </div>
           
       </div>
         
   <div class="offer">
       <div class="small-container">
           <div class="row">
           <div class="col-2">
               <img src="images/baju1.png" class="offer-img">
           </div>
           <div class="col-2">
               <p>Exclusively Available on Website Only</p>
               <h1>NE X VALHALLA ROUND NECK T-SHIRT</h1>
               <small>100% Cotton And Comfy To Wear With Any Outfit.</small>
               <br>
               <a href="product_detail.php?id=4" class="btn">Buy Now &#8594;</a>
           </div>
       </div>
       </div>
       
   </div>  

   <br>
   <br>


    <?php include("footer.php") ?>


   
