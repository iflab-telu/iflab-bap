<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- SEO Meta Tags -->
    <meta name="description" content="Just an Informatics Lab Offline Website">
    <meta name="author" content="Rifky Lovanto">

    <!-- OG Meta Tags to improve the way the post looks when you share the page on LinkedIn, Facebook, Google+ -->
    <meta property="og:site_name" content="" /> <!-- website name -->
    <meta property="og:site" content="" /> <!-- website link -->
    <meta property="og:title" content="" /> <!-- title shown in the actual shared post -->
    <meta property="og:description" content="" /> <!-- description shown in the actual shared post -->
    <meta property="og:image" content="" /> <!-- image link, make sure it's jpg -->
    <meta property="og:url" content="" /> <!-- where do you want your post to link to -->
    <meta name="twitter:card" content="summary_large_image">

    <!-- Webpage Title -->
    <title>IFLAB Offline Dashboard</title>

    <!-- Styles -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <link href="css/swiper.css" rel="stylesheet">
    <link href="css/magnific-popup.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="css/card.css">

    <!-- Favicon  -->
    <link rel="icon" href="images/favicon.ico">
</head>

<body data-spy="scroll" data-target=".fixed-top">
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark" style="padding-top: 20px; padding-bottom: 20px;">
        <div class="container">

            <!-- Image Logo -->
            <a class="navbar-brand logo-image" href="index.html">
                <img src="images/subicon.png" alt="alternative">
                <!-- Informatics Lab -->
            </a>

            <button class="navbar-toggler p-0 border-0" type="button" data-toggle="offcanvas">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ml-auto">
                    <?php
                    include './conn.php';
                    $sql = "SELECT * FROM menu";
                    $menu = mysqli_query($conn, $sql);	
                    while ($row = mysqli_fetch_array($menu)) { ?>
                        <li class="nav-item">
                            <a class="nav-link page-scroll" href="<?= $row['link'] ?>"><?= $row['nama'] ?></a>
                        </li>
                    <?php }
                    $conn->close();
                    ?>
                </ul>
            </div> <!-- end of navbar-collapse -->
        </div> <!-- end of container -->
    </nav> <!-- end of navbar -->
    <!-- end of navigation -->

    <!-- Header -->
    <div class="header">
        <div class="ocean">
            <div class="wave"></div>
            <div class="wave"></div>
        </div>
        <div class="container" style="padding-top: 20%;">
            <a href="#course"><button class="btn" style="margin-right: 45%;">Scroll Down</button></a>
        </div> <!-- end of container -->
    </div> <!-- end of header -->

    <div id="course" class="form-1" style="padding-top: 200px; padding-bottom: 150px;">
        <div class="row">
            <div class="col-lg-12">
                <h2 class="h2-heading">Semua Mata Kuliah</h2>
                <p class="p-heading">Kumpulan link penting semua mata kuliah praktikum IFLAB ganjil 22/23</p>
            </div> <!-- end of col -->
        </div> <!-- end of row -->
        <div class="container">
            <div class="row">


                <?php
                include './conn.php';
                $sql = "SELECT * FROM course";
                $course = mysqli_query($conn, $sql);
                while ($row = mysqli_fetch_array($course)) { ?>
                    <div class="courses-container col-md-4">
                        <div class="course" style="height: 175px;">
                            <div class="course-preview" style="width: 280px;">
                                <h6 style="color: white !important;">Course</h6>
                                <h4 style="color: white !important;"><?= $row['singkatan'] ?></h4>
                            </div>
                            <div class="course-info">
                                <h5 style="color: black !important;">Link Penting</h5>
                                <?php
                                $sql = "SELECT * FROM link WHERE parent_id = " . $row['id'];
                                $link = mysqli_query($conn, $sql);
                                while ($row = mysqli_fetch_array($link)) { ?>
                                    <a href="<?= $row['content'] ?>" target="_blank">
                                        <h6 style="color: black !important;"><?= $row['name'] ?></h6>
                                    </a>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                <?php }
                $conn->close();
                ?>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer bg-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="social-container">
                        <span class="fa-stack">
                            <a href="https://t.me/informaticslab">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-telegram fa-stack-1x"></i>
                            </a>
                        </span>
                        <span class="fa-stack">
                            <a href="https://www.instagram.com/informaticslab_telu/">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-instagram fa-stack-1x"></i>
                            </a>
                        </span>
                        <span class="fa-stack">
                            <a href="https://page.line.me/?accountId=dky2921g">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fab fa-line fa-stack-1x"></i>
                            </a>
                        </span>
                        <span class="fa-stack">
                            <a href="https://informatics.labs.telkomuniversity.ac.id/">
                                <i class="fas fa-circle fa-stack-2x"></i>
                                <i class="fa fa-globe fa-stack-1x"></i>
                            </a>
                        </span>
                    </div> <!-- end of social-container -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of footer -->
    <!-- end of footer -->

    <!-- Copyright -->
    <div class="copyright bg-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p class="p-small">Copyright © <a class="no-line" href="#your-link">Informatics Lab Tel-U</a></p>
                </div> <!-- end of col -->
            </div>
        </div> <!-- end of container -->
    </div> <!-- end of copyright -->
    <!-- end of copyright -->

    <!-- Scripts -->
    <script src="js/jquery.min.js"></script> <!-- jQuery for Bootstrap's JavaScript plugins -->
    <script src="js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
    <script src="js/jquery.easing.min.js"></script> <!-- jQuery Easing for smooth scrolling between anchors -->
    <script src="js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
    <script src="js/jquery.magnific-popup.js"></script> <!-- Magnific Popup for lightboxes -->
    <script src="js/scripts.js"></script> <!-- Custom scripts -->
</body>

</html>