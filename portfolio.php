<!-- Portfolio Section-->
<section class="change-test page-section portfolio" id="portfolio">
    <div class="container">
        <!-- Portfolio Section Heading-->
        <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Portfolio</h2>
        <!-- Icon Divider-->
        <div class="divider-custom">
            <div class="divider-custom-line"></div>
            <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
            <div class="divider-custom-line"></div>
        </div>
        <!-- Portfolio Grid Items-->
        <div class="row justify-content-center">

            <?php
            $sql = "SELECT * FROM projects WHERE deleted_at IS NULL";
            $result = $conn->query($sql);
            if ($result->num_rows > 0) {
                while($row = $result->fetch_assoc()) { ?>
                    <!-- Portfolio Item <?php echo $row['id']; ?>-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal<?php echo $row['id']; ?>">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="<?php echo $row['image_url']; ?>" alt="..." />
                        </div>
                    </div>
                    <!-- Portfolio Modal 1-->
                    <div class="portfolio-modal modal fade" id="portfolioModal<?php echo $row['id']; ?>" tabindex="-1" aria-labelledby="portfolioModal1" aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                                <div class="modal-body text-center pb-5">
                                    <div class="container">
                                        <div class="row justify-content-center">
                                            <div class="col-lg-8">
                                                <!-- Portfolio Modal - Title-->
                                                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0"><?php echo $row['name']; ?></h2>
                                                <!-- Icon Divider-->
                                                <div class="divider-custom">
                                                    <div class="divider-custom-line"></div>
                                                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                                    <div class="divider-custom-line"></div>
                                                </div>
                                                <!-- Portfolio Modal - Image-->
                                                <img class="img-fluid rounded mb-5" src="<?php echo $row['image_url']; ?>" alt="..." />
                                                <!-- Portfolio Modal - Text-->
                                                <p class="mb-4"><?php echo $row['description']; ?></p>
                                                <button class="btn btn-primary" data-bs-dismiss="modal">
                                                    <i class="fas fa-xmark fa-fw"></i>
                                                    Close Window
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php    }
            }
            ?>
        </div>
    </div>
</section>