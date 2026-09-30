
<?php
session_start(); 
include 'connection.php';
?>

<?php 

if(isset($_POST['submit'])) {

    $part = $_POST["part_no"];
    $des = $_POST['description'];
    $quan = $_POST['quantity'];
    $image = $_FILES['image']['name'];
    $tmp_name = $_FILES['image']['tmp_name'];
    $destination = "Images/".$image;
    // $date = date("d-m-y_h-i-s") . "_" . $image; 
    move_uploaded_file($tmp_name,$destination );
    
    $sql = "INSERT INTO `parts`(`part_no`, `description`, `quantity`, `image`) VALUES ('$part','$des','$quan','$image')";
    
    $result = mysqli_query($conn,$sql);
    
    if ($conn) {
        echo "<script>'Alert (Data Saved Successfully)'</script>";
    } else {
        echo "<script>'Alert (Please Try Again)'</script>";
    };
}

?>
<?php
if (isset($_POST['user'])) {
    $users = $_POST["username"];
    $psses = $_POST['pass'];

    $valid_username = "admin";
    $valid_password = "admin";

   
    if ($users === $valid_username && $psses === $valid_password) {
      
        setcookie('logged_in', '1', 0, "/"); // Cookie expires in 1 hour
        header("Location: index.php"); 
        exit(); 
    } else {
        $error_message = "Invalid username or password!";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="style.css">
    <title>Part Entry Form Modal</title>

    
</head>
<body>

<button id="openModalBtn" class="fancy-button">Open Part Entry Form</button>

<div id="myModal" class="modal">
    <div class="modal-content">
        <span class="close">&times;</span>
        <h1>Part Entry Form</h1>
        <form action="<?php $_SERVER['PHP_SELF'] ?>" method="post" enctype="multipart/form-data">
            <label for="part_no">Part No:</label>
            <input type="text" id="part_no" name="part_no" required>

            <label for="description">Description:</label>
            <input type="text" id="description" name="description" required>

            <label for="quantity">Quantity:</label>
            <input type="number" id="quantity" name="quantity" required>

            <label for="image">Image:</label>
            <input type="file" id="image" name="image" accept="image/*">

            <input type="submit" style="margin: 0 !important;" name="submit" value="Submit" class="fancy-button">
        </form>
    </div>
</div>


<div class="search-container">
    <input type="text" id="livesearch" class="search-input" placeholder="Search...">
    <button class="search-button">
        <i class="fas fa-search"></i>
    </button>
</div>


    <div id="searchresult">


    </div>
    <div id="sticky-login" class="sticky-login">
    <div class="arrow-button" id="toggle-button">&#9660;</div> 
    <div class="card" id="login-card">
        <h2>Login</h2>
        <form action="<?php $_SERVER['PHP_SELF'] ?>" method="post" class="form">
            <input type="text" placeholder="Username" name="username" required class="input-field">
            <input type="password" placeholder="Password" name="pass" required class="input-field">
            <button type="submit" name="user" class="login_btn">Login</button>
            
        </form>
        <form method="post" action="logout.php" style="display:inline;">
                        <button type="submit" style="margin: 10px;" name="logout" class="logout-button login_btn">Logout</button>
                    </form>
 

    </div>
</div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <script>
    $(document).ready(function(){
        $('#livesearch').keyup(function(){
            var input = $(this).val();

           
            if (input.length >= 1) {
                $.ajax({
                    url: 'i.php', 
                    method: 'post',
                    data: {input: input},
                    success: function(data) {
                        $('#searchresult').html(data);
                    }
                });
            } else {
                $('#searchresult').html(''); 
            }
        });
    });
</script>
    <script>
        
const loginCard = document.getElementById("login-card");
const toggleButton = document.getElementById("toggle-button");


toggleButton.addEventListener("click", () => {
   
    if (loginCard.style.display === "none" || loginCard.style.display === "") {
        loginCard.style.display = "flex"; 
        toggleButton.innerHTML = "&#9660;";
    } else {
        loginCard.style.display = "none";
        toggleButton.innerHTML = "&#9650;"; 
    }
});

    </script>
     <script>
  
        const modal = document.getElementById("myModal");


        const btn = document.getElementById("openModalBtn");

        
        const span = document.getElementsByClassName("close")[0];

       
        btn.onclick = function() {
            modal.style.display = "block";
        }

       
        span.onclick = function() {
            modal.style.display = "none";
        }

      
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }
    </script>
</body>
</html>