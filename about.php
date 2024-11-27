<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<!-- header section starts  -->
<?php include 'components/user_header.php'; ?>
<!-- header section ends -->

<div class="heading">
   <h3>about us</h3>
   <p><a href="home.php">home</a> <span> / about</span></p>
</div>

<!-- about section starts  -->

<section class="about">

   <div class="row">

      <div class="image">
         <img src="images/about.png" alt="">
      </div>

      <div class="content">
         <h3>why choose us?</h3>
         <p>The Gallery Café is a popular restaurant located in the heart of Colombo, known for its exquisite cuisine and excellent service. Our mission is to provide a memorable dining experience for all our guests by combining delicious food, a beautiful ambiance, and outstanding customer service.</p>
         <a href="menu.html" class="btn">our menu</a>
      </div>

      <div class="image">
         <img src="images/table.png" alt="">
      </div>

      <div class="content">
         <h3>Our Table Capacities</h3>
         <p>We offer a variety of table options to accommodate different party sizes and preferences. Our table capacities are as follows:</p>
         <p><strong>Two-Seater Tables:</strong> Ideal for couples or intimate dining experiences.</p>
         <p><strong>Four-Seater Tables:</strong> Perfect for small families or groups of friends.</p>
         <p><strong>Six-Seater Tables:</strong> Great for larger families or small gatherings.</p>
         <p><strong>Eight-Seater Tables:</strong> Suitable for medium-sized groups or celebrations.</p>
         <p><strong>Ten-Seater Tables:</strong> Ideal for large gatherings, parties, or corporate events.</p>
            
      </div>

      <div class="image">
         <img src="images/parking.jpg" alt="">
      </div>

      <div class="content">
         <h3>Our Parking Availability</h3>
         <p>We understand the importance of convenient parking for our guests. The Gallery Café offers ample on-site parking spaces directly at the restaurant. For added convenience, we provide valet parking services for a small fee. Additional parking is available at nearby lots within a short walking distance. We also have designated handicap accessible parking spaces close to the entrance for guests with disabilities, as well as secure bicycle racks for those who prefer eco-friendly transportation.</p>
      </div>

   </div>

</section>

<!-- about section ends -->

<!-- steps section starts  -->

<section class="steps">

   <h1 class="title">simple steps</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/step-1.png" alt="">
         <h3>choose order</h3>
         <p>Choose from our exquisite menu and place your order.</p>
      </div>

      <div class="box">
         <img src="images/step-2.png" alt="">
         <h3>reserve table</h3>
         <p>Reserve your table now for an unforgettable dining experience.</p>
      </div>

      <div class="box">
         <img src="images/step-3.png" alt="">
         <h3>enjoy food</h3>
         <p>Savor the delicious flavors and enjoy your meal.</p>
      </div>

   </div>

</section>

<!-- steps section ends -->

<!-- reviews section starts  -->

<section class="reviews">

   <h1 class="title">customer's reivews</h1>

   <div class="swiper reviews-slider">

      <div class="swiper-wrapper">

         <div class="swiper-slide slide">
            <img src="images/boypic.png" alt="">
            <p>The Gallery Café offers an exceptional dining experience. The food is exquisite, and the ambiance is perfect for both casual and special occasions. The staff is friendly and attentive. Highly recommend!</p>
            <div class="stars">
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>shane</h3>
         </div>

         <div class="swiper-slide slide">
            <img src="images/girlpic.png" alt="">
            <p>I absolutely love this place! The food is always fresh and delicious, and the service is top-notch. The new website makes it so easy to make reservations and pre-order our favorite dishes.</p>
            <div class="stars">
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Lia</h3>
         </div>

         <div class="swiper-slide slide">
            <img src="images/boypic.png" alt="">
            <p>A fantastic restaurant with a beautiful setting. The variety on the menu caters to all tastes, and the quality of the food is outstanding. The online reservation system is very convenient.</p>
            <div class="stars">
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>john</h3>
         </div>

         <div class="swiper-slide slide">
            <img src="images/girlpic.png" alt="">
            <p>Great food and friendly staff. Highly recommend!</p>
            <div class="stars">
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star"></i>
               <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Sarah</h3>
         </div>

      </div>

      <div class="swiper-pagination"></div>

   </div>

</section>

<!-- reviews section ends -->






<!-- footer section starts  -->
<?php include 'components/footer.php'; ?>
<!-- footer section ends -->=






<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>

<script>

var swiper = new Swiper(".reviews-slider", {
   loop:true,
   grabCursor: true,
   spaceBetween: 20,
   pagination: {
      el: ".swiper-pagination",
      clickable:true,
   },
   breakpoints: {
      0: {
      slidesPerView: 1,
      },
      700: {
      slidesPerView: 2,
      },
      1024: {
      slidesPerView: 3,
      },
   },
});

</script>

</body>
</html>