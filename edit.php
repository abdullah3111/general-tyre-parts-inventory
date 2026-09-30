<?php
require __DIR__ . "/connection.php";

$id = $_GET["id"];
$sql = "SELECT * FROM `parts` WHERE id=$id";
$result = mysqli_query($conn, $sql) or die(mysqli_error($conn));
$row = mysqli_fetch_assoc($result);

if (isset($_POST['update'])) {

    $part = $_POST["part_no"];
    $des = $_POST['description'];
    $quan = $_POST['quantity'];
   $image = $_FILES['image']['name'] ? $_FILES['image']['name'] : $row['image'];
    $tmp_name = $_FILES['image']['tmp_name'];

    if ($_FILES['image']['name']) {
        $destination = "Images/" . $image;
        move_uploaded_file($tmp_name, $destination);
    }

    $sql = "UPDATE `parts` SET `part_no`='$part',`description`='$des',`quantity`='$quan',`image`='$image' WHERE id='$id'";
    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));
    header("location:index.php");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">

    <title>Document</title>
</head>
<body>
<h1>Edit Part Entry Form</h1>
        <form action="<?php $_SERVER['PHP_SELF'] ?>" method="post" enctype="multipart/form-data">
            <label for="part_no">Part No:</label>
            <input type="text" id="part_no" name="part_no" value="<?php echo $row['part_no'] ?>" >

            <label for="description">Description:</label>
            <input type="text" id="description" name="description" value="<?php echo $row['description'] ?>">

            <label for="quantity">Quantity:</label>
            <input type="number" id="quantity" name="quantity" value="<?php echo $row['quantity'] ?>" >

            <label for="image">Image:</label>
            <input type="file" name="image" id=""><br>
            <?php if (!empty($row['image'])): ?>
                    <label>Current Image:</label><br>
                    <img src="Images/<?php echo $row['image'] ?>" alt="Image Preview" style="width: 100px; height: auto; margin-bottom:10px;"><br>
                <?php else: ?>
                    <p>No image available.</p>
                <?php endif; ?>

            <input type="submit" style="margin: 0 !important;" name="update" value="Submit" class="fancy-button">
        </form>
</body>
</html>