<!-- Footer-->
<footer class="footer text-center">
    <div class="container">
        <div class="row">
            <!-- Footer Location-->
            <div class="col-lg-4 mb-5 mb-lg-0">
                <h4 class="text-uppercase mb-4">Location</h4>
                <p class="lead mb-0">
                    <?php
                    $sql = "SELECT * FROM site_settings WHERE setting_key = 'business_address'";
                    $result = $conn->query($sql);
                    $business_address = 'Zahir Pir, Sadat Colony.';

                    if ($result->num_rows > 0) {
                    // output data of each row
                    while($row = $result->fetch_assoc()) {
                    //        echo "id: " . $row["id"]. " - Name: " . $row["setting_key"]. " " . $row["setting_value"]. "<br>";
                        $business_address = $row["setting_value"];
                    }
                    }

                    echo $business_address;
                    ?>
                </p>
            </div>
            <!-- Footer Social Icons-->
            <div class="col-lg-4 mb-5 mb-lg-0">
                <h4 class="text-uppercase mb-4">Around the Web</h4>
                <?php
                $sql = "SELECT * FROM site_settings WHERE id in (5,6,7,8)";// mysql conditions queries, learn
                $result = $conn->query($sql);
                $social_icons = array();
                if ($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) {
                        $social_icons[] = $row["setting_value"];
                    }
                }
                ?>
                <a class="btn btn-outline-light btn-social mx-1" href="https://<?php echo $social_icons[0]; ?>"><i class="fab fa-fw fa-facebook-f"></i></a>
                <a class="btn btn-outline-light btn-social mx-1" href="https://<?php echo $social_icons[1]; ?>"><i class="fab fa-fw fa-twitter"></i></a>
                <a class="btn btn-outline-light btn-social mx-1" href="https://<?php echo $social_icons[2]; ?>"><i class="fab fa-fw fa-linkedin-in"></i></a>
                <a class="btn btn-outline-light btn-social mx-1" href="https://<?php echo $social_icons[3]; ?>"><i class="fab fa-fw fa-dribbble"></i></a>
            </div>
            <!-- Footer About Text-->
            <div class="col-lg-4">
                <h4 class="text-uppercase mb-4">About Freelancer</h4>
                <p class="lead mb-0">
                    <?php
                    $sql = "SELECT * FROM site_settings WHERE setting_key = 'about_freelancer'";
                    $result = $conn->query($sql);
                    $about_freelancer = 'Freelance is a free to use';
                    if ($result->num_rows > 0) {
                        while($row = $result->fetch_assoc()) {
                            $about_freelancer = $row["setting_value"];
                        }
                    }

                    ?>
                    <?php echo $about_freelancer; ?>, MIT licensed Bootstrap theme created by
                    <a href="http://startbootstrap.com">Start Bootstrap</a>
                    .
                </p>
            </div>
        </div>
    </div>
</footer>
<!-- Copyright Section-->
<div class="copyright py-4 text-center text-white">
    <?php
    $sql = "SELECT * FROM site_settings WHERE setting_key = 'copyright_text'";
    $result = $conn->query($sql);
    $copyright_text = 'A software';
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $copyright_text = $row["setting_value"];
        }
    }

    ?>
    <div class="container"><small>Copyright &copy; <?php echo $copyright_text; ?> 2023</small></div>
</div>

<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="./js/scripts.js"></script>
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<!-- * *                               SB Forms JS                               * *-->
<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>