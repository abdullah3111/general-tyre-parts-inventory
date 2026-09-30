<?php
session_start(); 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script>
window.addEventListener("beforeunload", function (e) {
    
    var url = "logout.php";
    navigator.sendBeacon(url); 
});
</script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
    
.table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
    font-size: 18px;
    color: #333;
}

.table thead {
    background-color: #f8f9fa; 
}

.table th, .table td {
    padding: 15px;
    text-align: left;
    border-bottom: 1px solid #dee2e6;
}

.table th {
    font-weight: bold;
    color: #495057; 
}

.table tbody tr:hover {
    background-color: #f1f1f1; 
}

.table img {
  max-width: 130px;
    height: auto;
    border-radius: 5px;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 0px 10px;

}


.btn {
    text-decoration: none;
    padding: 10px 15px;
    border-radius: 5px;
    transition: background-color 0.3s;
}

.btn-warning {
    background-color: #ffc107; 
    color: #fff;
}

.btn-warning:hover {
    background-color: #e0a800; 
}

h5 {
    margin: 0; 
    color: #dc3545; 
}

    </style>
</head>
<body>
    <?php
    include 'connection.php';
    if(isset($_POST['input'])){
        $input = $_POST['input'];
        $sql = "SELECT * FROM parts where part_no like '{$input}%' OR description like '{$input}%'  ";
        $result = mysqli_query($conn ,$sql);
       if (mysqli_num_rows($result)) {
        ?>
        <table style="" class="table table-light"  >
  <thead>
    <tr>
      <th scope="col">Part No</th>
      <th scope="col">Description</th>
      <th scope="col">Picture of Sample</th>
      <th scope="col">Action</th>
       
    </tr>
  </thead>
  <tbody>
    <?php
    while($row=mysqli_fetch_assoc($result)){

        ?>
        <tr>
      <td><?php echo $row['part_no'] ?></td>
      <td><?php echo $row['description'] ?></td>
      <td>
        <img src="Images/<?php echo htmlspecialchars($row['image']); ?>" alt="">
    </td>
    <td>
    <?php
                
                if (isset($_COOKIE['logged_in']) && $_COOKIE['logged_in'] === '1'): ?>
                   
                   <a href="edit.php?id=<?php echo $row['id'] ?>" class="btn btn-warning btn-sm">Edit</a>
                    
                <?php else: ?>
                    <h5>log in to access the Edit button.</h5>
                <?php endif; ?>
</td>
    </tr>
    <?php 
    }
    ?>
    <?php
       }else{
        echo "No result found";
      } 
    }
    ?>
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
       
</body>
</html>