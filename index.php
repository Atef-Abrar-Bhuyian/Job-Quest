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
                <li><a href="interviewprep.php">Interview Preparation</a></li>
                <li><a href="login.php" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@getbootstrap" id="text-white" aria-current="page">Sign in/ Log in</a></li>
            </ul>
        </nav>
        <a class="cta" href="contact.php"><button type="">Contact Us</button></a>
    </header>

    <section id="middle">
        <div class="middle-text">
            <h4>Find the right job</h4><br>
            <h2>Search Jobs From Home</h2><br>
            <h1>Website name</h1><br>
            <p>Save more time & get the right job</p><br>
            <button class="glow-search-btn" id="search-icon" onclick="window.location.href='search_jobs.php';">Search
                Now</button>
        </div>
    </section>

    <div class="h1-middle">
        <h1><i class="fa-solid fa-magnifying-glass"></i> Browse Category</h1>
    </div>

    <section class="job-category">
        <div class="category-div">
            <div class="category">
                <ul type="none">
                    <li>
                        <a href="c_acc_fin.php">
                            Accounting/Finance
                        </a>
                    </li>
                    <li>
                        <a href="c_data_oper.php">
                            Data Entry/Operator
                        </a>
                    </li>
                    <li>
                        <a href="c_edu_train.php">
                            Education/Training
                        </a>
                    </li>
                    <li>
                        <a href="c_eng_arch.php">
                            Engineer/Architects
                        </a>
                    </li>
                    <li>
                        <a href="c_garm_tex.php">
                            Garments/Textile
                        </a>
                    </li>

                </ul>
            </div>
            <div class="category">
                <ul type="none">
                    <li>
                        <a href="c_des_creat.php">
                            Design/Creative
                        </a>
                    </li>
                    <li>
                        <a href="c_pro_op.php">
                            Production/Operation
                        </a>
                    </li>
                    <li>
                        <a href="c_commer.php">
                            Commercial
                        </a>
                    </li>
                    <li>
                        <a href="c_mark_sal.php">
                            Marketing/Sales
                        </a>
                    </li>
                    <li>
                        <a href="c_it_tele.php">
                            IT & Telecommunication
                        </a>
                    </li>

                </ul>
            </div>
            <div class="category">
                <ul type="none">
                    <li>
                        <a href="c_medi_phar.php">
                            Medical/Pharma
                        </a>
                    </li>
                    <li>
                        <a href="c_agro.php">
                            Agro
                        </a>
                    </li>
                    <li>
                        <a href="c_law_leg.php">
                            Law/Legal
                        </a>
                    </li>
                    <li>
                        <a href="c_ngo_deve.php">
                            NGO/Development
                        </a>
                    </li>
                    <li>
                        <a href="c_res_con.php">
                            Research/Consultancy
                        </a>
                    </li>

                </ul>
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

                <i class="fa-sharp fa-solid fa-link"></i> <a href="https://www.myperfectresume.com/">MyPerfectResume</a><br>
                <i class="fa-sharp fa-solid fa-link"></i> <a href="https://www.visualcv.com/">VisualCV</a> <br>
                <i class="fa-sharp fa-solid fa-link"></i> <a href="https://www.resume.com/">resume.com</a> <br>
                <i class="fa-sharp fa-solid fa-link"></i> <a href="https://zety.com/">zety</a> <br>
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

    <section>
        <div class="info-main">
            <div class="info">
                <span class="material-symbols-outlined" style="color: #5F9EA0;">
                    location_city
                </span>
                <p>134,719+ Companies</p>
            </div>
            <div class="info">
                <span class="material-symbols-outlined" style="color: #5F9EA0;">
                    work
                </span>
                <p>452,5481+ Jobs</p>
            </div>
            <div class="info">
                <span class="material-symbols-outlined" style="color: #5F9EA0;">
                    ads_click
                </span>
                <p>21,548 Live Jobs</p>
            </div>
            <div class="info">
                <i class="fa-regular fa-building" style="color: #5F9EA0;"></i>
                <p> 1000+ Available Organization</p>
            </div>
            <div class="info">
                <span class="material-symbols-outlined" style="color: #5F9EA0;">
                    enhanced_encryption
                </span>
                <p>100% Safe Journey</p>
            </div>
        </div>
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
                            <button name='Login' class="w-100 mb-2 btn btn-lg glow rounded-3 bg-darkgreen text-light" type="submit">Log
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
                            <button name="signup" class="w-100 mb-2 btn btn-lg glow rounded-3 bg-darkgreen text-light" type="submit">Sign
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


</html>