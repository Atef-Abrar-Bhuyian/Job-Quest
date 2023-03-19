<?php
session_start();
error_reporting(0);
include('dbconnect.php');

if (isset($_POST['Login'])) {
    $Email = $_POST['Email'];
    $Password = $_POST['Password'];
    $query = mysqli_query($con, "select User_ID from signup where  email='$Email' && pass='$Password' ");
    $ret = mysqli_fetch_array($query);
    if ($ret > 0) {
        $_SESSION['uid'] = $ret['User_ID'];
        header('location:user_profile.php');
    } else {
        $msg = "Invalid Details.";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="shortcut icon" href="./media/logo/favicon.png" type="image/x-icon">
    <script src="https://kit.fontawesome.com/49c2b39c0f.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Bodoni+Moda:ital,opsz@1,6..96&family=Explora&family=Josefin+Sans&family=Montserrat&family=Moon+Dance&family=Poppins&family=Ramabhadra&family=Roboto+Condensed&family=Rubik&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="style.css">
    <title>Job Search</title>
</head>

<body>
    <header>
        <span class="logo"><a href="index.php"><img src="./media/logo/logo.png" alt=""></a></span>
        <nav class="header">
            <ul class="nav_links">
                <li><a href="index.php">Home</a></li>
                <li><a href="search_jobs.php">Search Jobs</a></li>
                <li><a href="interviewprep.php">Interview Preparation</a></li>
                <li><a class="active" href="user_profile.php">My Profile</a></li>
            </ul>
        </nav>
        <a class="cta" href="contact.php"><button type="">Contact Us</button></a>
    </header>

    <section>
        <div class="user-section">

            <div class="user-site">
                <h3>ID:<?php echo $result1['User_ID']; ?> </h3>
                <h3>User's Name: <?php echo $result1['user_name']; ?></h3>
                <h3>Email: <?php echo $result1['email']; ?></h3>
                <h3>Mobile Number: <?php echo $result1['mobile_number']; ?></h3>
            </div>
            <div class="jobs-site">
                <h1 class="apply-heading">Apply Later</h1>
                <a href="">
                    <div class="bookmark-jobs-divs">
                        <h3>Tittle</h3><br>
                        <p>little description</p><br>
                        <span class="material-symbols-outlined">
                            location_on
                        </span>
                        <span>
                            Location
                        </span><br>
                        <br><span class="material-symbols-outlined">
                            work
                        </span>Experience
                    </div>
                </a>
            </div>

        </div>
    </section>

    <?php
    include('footer.php');
    ?>
</body>