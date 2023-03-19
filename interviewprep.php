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
                <li><a class="active" href="interviewprep.php">Interview Preparation</a></li>
                <li><a href="login.php" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@getbootstrap" id="text-white" aria-current="page">Sign in/ Log in</a></li>
            </ul>
        </nav>
        <a class="cta" href="contact.php"><button type="">Contact Us</button></a>
    </header>

    <section>
        <div class="head-title">
            <h1 class="glow-heading"><span class="auto-input1"></span></h1>
        </div>
        <div class="prepare-div">
            <div class="half-video"><iframe width="560" height="315" src="https://www.youtube.com/embed/wexzvClUcUk?start=3" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen controls=1></iframe>
            </div>
            <div class="half-text">
                <h3><i class="fa-solid fa-video"></i> How To Introduce Yourself In An Interview!
                    (The BEST ANSWER!)
                </h3>
                <br>
                <p><i class="fa-brands fa-youtube" style="color: red;"></i> CareerVidz</p>
                <span>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos soluta ut fugiat at cumque
                    vitae, possimus sunt commodi minima neque fuga. Deserunt sed aperiam sint soluta. Tempora vel atque
                    quae.</span><br><br><br><br>
                <p style="padding-left: 150px;"><button class="glow-btn-preapare">Show More <i class="fa-solid fa-forward" style="color: cyan;"></i> </button></p>
            </div>
        </div>

        <div class="prepare-div">
            <div class="half-video"><iframe width="560" height="315" src="https://www.youtube.com/embed/TwZ7LgrPwR0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

            </div>
            <div class="half-text">
                <h3><i class="fa-solid fa-video"></i> How to Introduce Yourself in English | Tell Me Something About
                    Yourself? - Interview Tips | ChetChat
                </h3>
                <br>
                <p><i class="fa-brands fa-youtube" style="color: red;"></i> ChetChat </p>
                <span>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos soluta ut fugiat at cumque
                    vitae, possimus sunt commodi minima neque fuga. Deserunt sed aperiam sint soluta. Tempora vel atque
                    quae.</span><br><br><br>
                <p style="padding-left: 150px;"><button class="glow-btn-preapare">Show More <i class="fa-solid fa-forward" style="color: cyan;"></i> </button></p>
            </div>
        </div>

        <div class="prepare-div">
            <div class="half-video"><iframe width="560" height="315" src="https://www.youtube.com/embed/KCm6JVtoRdo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

            </div>
            <div class="half-text">
                <h3><i class="fa-solid fa-video"></i> Interview Questions and Answers! (How to PASS a JOB INTERVIEW!)
                </h3>
                <br>
                <p><i class="fa-brands fa-youtube" style="color: red;"></i> CareerVidz</p>
                <span>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos soluta ut fugiat at cumque
                    vitae, possimus sunt commodi minima neque fuga. Deserunt sed aperiam sint soluta. Tempora vel atque
                    quae.</span><br><br><br><br><br>
                <p style="padding-left: 150px;"><button class="glow-btn-preapare">Show More <i class="fa-solid fa-forward" style="color: cyan;"></i> </button></p>
            </div>
        </div>

        <div class="prepare-div">
            <div class="half-video"><iframe width="560" height="315" src="https://www.youtube.com/embed/JrbnTZPjg0k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

            </div>
            <div class="half-text">
                <h3><i class="fa-solid fa-video"></i> 12 Things That Ruin a First Impression Immediately
                </h3>
                <br>
                <p><i class="fa-brands fa-youtube" style="color: red;"></i> BRIGHT SIDE</p>
                <span>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos soluta ut fugiat at cumque
                    vitae, possimus sunt commodi minima neque fuga. Deserunt sed aperiam sint soluta. Tempora vel atque
                    quae.</span><br><br><br><br>
                <p style="padding-left: 150px;"><button class="glow-btn-preapare">Show More <i class="fa-solid fa-forward" style="color: cyan;"></i> </button></p>
            </div>
        </div>

        <div class="prepare-div">
            <div class="half-video"><iframe width="560" height="315" src="https://www.youtube.com/embed/8OGDhlUvSK4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

            </div>
            <div class="half-text">
                <h3><i class="fa-solid fa-video"></i> Eye Contact Tips for Showing Confidence
                </h3>
                <br>
                <p><i class="fa-brands fa-youtube" style="color: red;"></i> Communication Coach Alexander Lyon</p>
                <span>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dignissimos soluta ut fugiat at cumque
                    vitae, possimus sunt commodi minima neque fuga. Deserunt sed aperiam sint soluta. Tempora vel atque
                    quae.</span><br><br><br><br>
                <p style="padding-left: 150px;"><button class="glow-btn-preapare">Show More <i class="fa-solid fa-forward" style="color: cyan;"></i> </button></p>
            </div>
        </div>
    </section>

    <section class="fourth-section">
        <div class="flexible-container">
            <div class="box-shadow">
                <div class="img-wrapper">
                    <a href="interviewprep.php">
                        <img class="zoom-effect" src="./media/img/resume.jpg" alt="">
                    </a>
                </div><br>
                <h3>Create Your Resume</h3><br>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Obcaecati voluptatibus blanditiis nemo fugit aspernatur.
                    <br> <b>Wtih the help of these websites you can create your own resume.</b>
                </p>
                <div class="a-link">
                    <i class="fa-sharp fa-solid fa-link"></i> <a href="https://www.myperfectresume.com/">MyPerfectResume</a><br>
                    <i class="fa-sharp fa-solid fa-link"></i> <a href="https://www.visualcv.com/">VisualCV</a> <br>
                    <i class="fa-sharp fa-solid fa-link"></i> <a href="https://www.resume.com/">resume.com</a> <br>
                    <i class="fa-sharp fa-solid fa-link"></i> <a href="https://zety.com/">zety</a> <br>
                </div>
            </div>
            <div class="box-shadow">
                <div class="img-wrapper">
                    <a href="search_jobs.php">
                        <img class="zoom-effect" src="./media/img/for hire.jpg" alt="">
                    </a>
                </div><br>
                <h3>Apply Jobs</h3><br>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Velit aut fuga ipsum
                    perspiciatis,
                    sapiente officiis voluptate et! Nam maiores placeat quaerat aperiam tempore esse porro
                    voluptatibus, quibusdam illo commodi velit.</p>
            </div>
        </div>
        </a>
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

    <?php
    include('footer.php');
    ?>



    <!-- Bootstrap JavaScript Libraries -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

<script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>
<script>
    var typed = new Typed(".auto-input1", {
        strings: ["PREPARE YOURSELF TO BUILT A FABULOUS CAREER"],
        typeSpeed: 130
    })
</script>

</html>