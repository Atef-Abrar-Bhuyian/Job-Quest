<?php
session_start();
error_reporting(0);
include('dbconnect.php');

if (isset($_POST['Submit'])) {
    $name = $_POST['h_u_name'];
    $e_mail = $_POST['h_u_email'];
    $subject = $_POST['h_u_subject'];
    $message = $_POST['h_u_msg'];
    $query1 = mysqli_query($con, "insert into help_form(h_u_name,h_u_email,h_u_subject,h_u_msg) 
                                values ('$name','$e_mail','$subject','$message')");
    if ($query1) {
        echo "<script>alert('Your Response Sent');</script>";
        header('location:contact.php');
    } else {
        $msg = "Something Went Wrong. Please try again.";
    }
}

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

if (isset($_POST['signup'])) {
    $uname = $_POST['username'];
    $mnumber = $_POST['mobile_number'];
    $e_mail = $_POST['email'];
    $psw = $_POST['pass'];

    $query1 = mysqli_query($con, "insert into signup(user_name,mobile_number,email,pass) 
                                  values ('$uname','$mnumber','$e_mail','$psw')");
    if ($query1) {
        echo "<script>alert('Account Created Successfully');</script>";
        header('location:index.php');
    } else {
        $msg = "Something Went Wrong. Please try again.";
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
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
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
                <li><a href="login.php" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@getbootstrap" id="text-white" aria-current="page">Sign in/ Log in</a></li>
            </ul>
        </nav>
        <a class="cta" href="contact.php"><button type="">Contact Us</button></a>
    </header>

    <h2 class="glow-loc"> <span class="auto-input2"></span> <i class="fa-sharp fa-solid fa-location-dot"></i></h2>

    <section id="post-details">
        <form action="" method="post">
            <span>Want To Advertise You Job</span>
            <h2>Publish Your Job By Completing This Form</h2> <br>


            <div class="for-flex">
                <div>
                    <h4>User Information</h4>
                    <input type="text" name='' placeholder="Name">
                    <input type="text" name='' placeholder="Mobile Number">
                    <input type="text" name='' placeholder="NID Number">
                    <input type="text" name='' placeholder="Email">
                </div>

                <div>
                    <h4>About Job</h4>
                    <input type="text" name='' placeholder="Title">
                    <textarea name="h_u_msg" id="" cols="10" rows="5" placeholder="Descirption"></textarea>
                    <input type="text" name='' placeholder="Location">
                    <input type="text" name='' placeholder="Experience">
                </div>
            </div>
            <button class="glow-search-btn" name='Submit'>Publish</button>
        </form>
    </section>




    <!--######################### Modal ##########################-->
    <div class="modal py-5 fade" tabindex="-1" role="dialog" id="exampleModal" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content rounded-4 shadow bg-palegreen">
                <div class="modal-header flex-column w-100 p-5 pb-4 border-bottom-0">
                    <div class="modal-header border-0 px-0 py-2 w-100">
                        <ul class="nav nav-tabs w-75 border-new-color">
                            <li class="nav-item w-50">
                                <a class="nav-link active fw-bolder" data-bs-toggle="tab" aria-current="page" href="#log-in">LOGIN</a>
                            </li>
                            <li class="nav-item w-50">
                                <a class="nav-link fw-bolder" data-bs-toggle="tab" href="#sign-up">SIGNUP</a>
                            </li>
                        </ul>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                </div>

                <div class="tab-content">
                    <!-- log in  -->
                    <div id="log-in" class="modal-body tab-pane show active p-5 pt-0">
                        <div class="modal-header px-0 py-2 w-100 border-0">
                            <h1 class="fw-bold mb-0 fs-2">Log In</h1>
                            <h6 style="font-size:16px;margin-top:15px;margin-bottom:2px;color:red" align="center"> <?php if ($msg) {
                                                                                                                        echo $msg;
                                                                                                                    }  ?> </h6>
                        </div>
                        <form action="#" method="post" class="">
                            <!-- email -->
                            <div class="form-floating mb-3">
                                <input type="email" name="Email" class="form-control rounded-3" id="floatingInput" placeholder="name@example.com">
                                <label for="floatingInput">Email address</label>
                            </div>
                            <!-- password -->
                            <div class="form-floating mb-3">
                                <input type="password" name="Password" class="form-control rounded-3" id="floatingPassword" placeholder="Password">
                                <label for="floatingPassword">Password</label>
                            </div>
                            <button name='Login' class="w-100 mb-2 btn btn-lg rounded-3 bg-darkgreen text-light" type="submit">Log
                                in</button>
                            <span class="d-flex justify-content-between align-items-center my-3">
                                <hr style="width: 40%;">
                                <h2 class="fs-5 fw-bold w-25 text-center">Or</h2>
                                <hr style="width: 40%;">
                            </span>
                            <!-- google -->
                            <button class="w-100 py-2 mb-2 btn btn-outline-dark rounded-3" type="submit">
                                <i class="fa-brands fa-google"></i>
                                Log in with google
                            </button>
                            <!-- fb -->
                            <button class="w-100 py-2 mb-2 btn btn-outline-primary rounded-3" type="submit">
                                <i class="fa-brands fa-facebook"></i>
                                Log in with Facebook
                            </button>
                            <!-- github -->
                            <button class="w-100 py-2 mb-2 btn btn-outline-secondary rounded-3" type="submit">
                                <i class="fa-brands fa-github"></i>
                                Log in with GitHub
                            </button>
                        </form>
                    </div>
                    <!-- sign up -->
                    <div id="sign-up" class="tab-pane modal-body p-5 pt-0">
                        <div class="modal-header px-0 py-2 w-100 border-0">
                            <h1 class="fw-bold mb-0 fs-2">Sign up </h1>
                        </div>
                        <form class="" method="post">
                            <div class="form-floating mb-3">
                                <input name='username' type="text" class="form-control rounded-3" id="floatingInput" placeholder="name@example.com">
                                <label for="floatingInput">Name</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input name='mobile_number' type="text" class="form-control rounded-3" id="floatingInput" placeholder="01********">
                                <label for="floatingInput">Mobile Number</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input name='email' type="email" class="form-control rounded-3" id="floatingInput" placeholder="name@example.com">
                                <label for="floatingInput">Email address</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input name='pass' type="password" class="form-control rounded-3" id="floatingPassword" placeholder="Password">
                                <label for="floatingPassword">Password</label>
                            </div>
                            <button name="signup" class="w-100 mb-2 btn btn-lg rounded-3 bg-darkgreen text-light" type="submit">Sign
                                up</button>
                            <small class="text-muted">By clicking Sign up, you agree to the terms of
                                use.</small>
                            <!-- hr and or -->
                            <span class="d-flex justify-content-between align-items-center my-3">
                                <hr style="width: 40%;">
                                <h2 class="fs-5 fw-bold w-25 text-center">Or</h2>
                                <hr style="width: 40%;">
                            </span>
                            <button class="w-100 py-2 mb-2 btn btn-outline-dark rounded-3" type="submit">
                                <i class="fa-brands fa-google"></i>
                                Sign up with google
                            </button>
                            <button class="w-100 py-2 mb-2 btn btn-outline-primary rounded-3" type="submit">
                                <i class="fa-brands fa-facebook"></i>
                                Sign up with Facebook
                            </button>
                            <button class="w-100 py-2 mb-2 btn btn-outline-secondary rounded-3" type="submit">
                                <i class="fa-brands fa-github"></i>
                                Sign up with GitHub
                            </button>
                        </form>
                    </div>
                </div>


            </div>
        </div>
    </div>

    <!-- Bootstrap JavaScript Libraries -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>

    <?php
    include('footer.php');
    ?>

</body>

<script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>
<script>
    var typed = new Typed(".auto-input2", {
        strings: ["PUBLISH YOUR JOB"],
        typeSpeed: 150
    })
</script>

</html>