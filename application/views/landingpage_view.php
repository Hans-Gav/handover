<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Skanet - Solusi Internet Anda</title>
    <link rel="icon" href="<?= base_url('assets/img/skanet.jpeg') ?>" type="image/png">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

    <style>
        .hero-carousel img {
            height: 500px;
            object-fit: cover;
        }

        .produk-img {
            height: 200px;
            object-fit: cover;
        }

        .promo-section {
            background: url('<?= base_url("assets/img/banner-skanet.jpeg") ?>') center center/cover no-repeat;
            height: 900px;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
        }

        #particles-js {
            position: absolute;
            width: 100%;
            height: 100%;
            z-index: 0;
        }

        .overlay {
            background-color: transparent;
            padding: 40px;
            border-radius: 10px;
            z-index: 1;
        }
    </style>
</head>

<body>

    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
        <div class="container">
            <a class="navbar-brand fw-bold" href="#">Skanet</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <div class="ms-auto d-flex">
                    <a href="<?= base_url('auth') ?>" class="btn btn-outline-light">Login</a>
                </div>
            </div>
        </div>
    </nav>


    <section class="promo-section position-relative text-white text-center">
        <!-- Particles Background -->
        <div id="particles-js"></div>
    </section>


    <!-- About Us -->
    <section id="about" class="py-5 bg-light">
        <div class="container text-center">
            <h2 class="mb-4">Tentang Kami</h2>
            <p class="lead">Skanet adalah perusahaan teknologi yang berfokus pada solusi jaringan modern untuk berbagai sektor bisnis di Indonesia.</p>
        </div>
    </section>

    <!-- Layanan -->
    <section id="layanan" class="py-5">
        <div class="container">
            <h2 class="text-center mb-5">Layanan Kami</h2>
            <div class="row g-4 text-center">
                <div class="col-md-12">
                    <div class="card shadow h-100">
                        <div class="card-body">
                            <h5 class="card-title">Jaringan & Infrastruktur</h5>
                            <p class="card-text">Pembangunan dan pemeliharaan jaringan IT pendukung bisnis Anda.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Produk -->
    <section id="produk" class="py-5 bg-light">
        <div class="container">
            <h2 class="text-center mb-5">Produk Unggulan</h2>
            <div class="container py-5">
                <div class="row g-4">

                    <!-- Paket Corporate -->
                    <div class="col-lg-3 col-md-6">
                        <div class="card shadow-sm border-0 rounded-4 h-100">
                            <div class="bg-primary text-white py-4 text-center">
                                <i class="bi bi-building-check display-4"></i>
                            </div>
                            <div class="card-body text-center">
                                <h5 class="card-title fw-bold">Paket Corporate</h5>
                                <p class="card-text text-muted mb-1">
                                    <i class="bi bi-speedometer2 text-primary me-2"></i>Up to 40 Mbps
                                </p>
                                <p class="card-text text-muted mb-1">
                                    <i class="bi bi-shield-check text-primary me-2"></i>SLA min. 60%
                                </p>
                                <p class="card-text text-muted mb-2">
                                    <i class="bi bi-infinity text-primary me-2"></i>Unlimited Kuota
                                </p>
                                <p class="card-text">
                                    <i class="bi bi-cash-stack text-success me-2"></i>Pasang: <strong>Rp 500.000</strong>
                                </p>
                                <a href="https://wa.me/6282211523966?text=Halo%2C%20saya%20ingin%20berlangganan%20Paket%20Corporate%20Internet%20dari%20Skanet."
                                    target="_blank" class="btn btn-success rounded-pill px-4 mt-2">
                                    <i class="bi bi-whatsapp me-2"></i>Pesan Sekarang
                                </a>
                            </div>
                        </div>
                    </div>

                    <!-- Paket 15 Mbps -->
                    <div class="col-lg-3 col-md-6">
                        <div class="card shadow-sm border-0 rounded-4 h-100">
                            <div class="bg-info text-white py-4 text-center">
                                <i class="bi bi-wifi display-4"></i>
                            </div>
                            <div class="card-body text-center">
                                <h5 class="card-title fw-bold">Paket 15 Mbps</h5>
                                <p class="card-text text-muted mb-2">
                                    <i class="bi bi-speedometer2 text-info me-2"></i>Up to 15 Mbps
                                </p>
                                <p class="card-text text-muted mb-1">
                                    <i class="bi bi-shield-check text-primary me-2"></i>SLA min. 60%
                                </p>
                                <p class="card-text text-muted mb-2">
                                    <i class="bi bi-infinity text-info me-2"></i>Unlimited Kuota
                                </p>
                                <p class="card-text">
                                    <i class="bi bi-cash-coin text-success me-2"></i><strong>Rp 250.000</strong>/bulan
                                </p>
                                <a href="https://wa.me/6282211523966?text=Halo%2C%20saya%20ingin%20berlangganan%20Paket%2015Mbps%20dari%20Skanet."
                                    target="_blank" class="btn btn-success rounded-pill px-4 mt-2">
                                    <i class="bi bi-whatsapp me-2"></i>Pesan Sekarang
                                </a>
                            </div>
                        </div>
                    </div>

                    <!-- Paket 10 Mbps -->
                    <div class="col-lg-3 col-md-6">
                        <div class="card shadow-sm border-0 rounded-4 h-100">
                            <div class="bg-warning text-white py-4 text-center">
                                <i class="bi bi-wifi-2 display-4"></i>
                            </div>
                            <div class="card-body text-center">
                                <h5 class="card-title fw-bold">Paket 10 Mbps</h5>
                                <p class="card-text text-muted mb-2">
                                    <i class="bi bi-speedometer2 text-warning me-2"></i>Up to 10 Mbps
                                </p>
                                <p class="card-text text-muted mb-1">
                                    <i class="bi bi-shield-check text-primary me-2"></i>SLA min. 60%
                                </p>
                                <p class="card-text text-muted mb-2">
                                    <i class="bi bi-infinity text-warning me-2"></i>Unlimited Kuota
                                </p>
                                <p class="card-text">
                                    <i class="bi bi-cash-coin text-success me-2"></i><strong>Rp 200.000</strong>/bulan
                                </p>
                                <a href="https://wa.me/6282211523966?text=Halo%2C%20saya%20ingin%20berlangganan%20Paket%2010Mbps%20dari%20Skanet."
                                    target="_blank" class="btn btn-success rounded-pill px-4 mt-2">
                                    <i class="bi bi-whatsapp me-2"></i>Pesan Sekarang
                                </a>
                            </div>
                        </div>
                    </div>

                    <!-- Paket 5 Mbps -->
                    <div class="col-lg-3 col-md-6">
                        <div class="card shadow-sm border-0 rounded-4 h-100">
                            <div class="bg-secondary text-white py-4 text-center">
                                <i class="bi bi-wifi-1 display-4"></i>
                            </div>
                            <div class="card-body text-center">
                                <h5 class="card-title fw-bold">Paket 5 Mbps</h5>
                                <p class="card-text text-muted mb-2">
                                    <i class="bi bi-speedometer2 text-secondary me-2"></i>Up to 5 Mbps
                                </p>
                                <p class="card-text text-muted mb-2">
                                    <i class="bi bi-person-lines-fill text-secondary me-2"></i>Max 5 Perangkat
                                </p>
                                <p class="card-text">
                                    <i class="bi bi-cash-coin text-success me-2"></i><strong>Rp 150.000</strong>/bulan
                                </p>
                                <a href="https://wa.me/6282211523966?text=Halo%2C%20saya%20ingin%20berlangganan%20Paket%205Mbps%20dari%20Skanet."
                                    target="_blank" class="btn btn-success rounded-pill px-4 mt-2">
                                    <i class="bi bi-whatsapp me-2"></i>Pesan Sekarang
                                </a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </section>


    <!-- Footer -->
    <footer class="bg-dark text-white text-center py-3">
        <div class="container">
            <small>&copy; <?= date('Y') ?> Skanet. All rights reserved.</small>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        particlesJS("particles-js", {
            "particles": {
                "number": {
                    "value": 40,
                    "density": {
                        "enable": true,
                        "value_area": 800
                    }
                },
                "color": {
                    "value": "#ffffff"
                },
                "shape": {
                    "type": "circle",
                    "stroke": {
                        "width": 0,
                        "color": "#000000"
                    },
                    "polygon": {
                        "nb_sides": 5
                    }
                },
                "opacity": {
                    "value": 0.5,
                    "random": false,
                    "anim": {
                        "enable": false
                    }
                },
                "size": {
                    "value": 3,
                    "random": true,
                    "anim": {
                        "enable": false
                    }
                },
                "line_linked": {
                    "enable": true,
                    "distance": 150,
                    "color": "#ffffff",
                    "opacity": 0.4,
                    "width": 1
                },
                "move": {
                    "enable": true,
                    "speed": 2,
                    "direction": "none",
                    "random": false,
                    "straight": false,
                    "out_mode": "out",
                    "bounce": false
                }
            },
            "interactivity": {
                "detect_on": "canvas",
                "events": {
                    "onhover": {
                        "enable": true,
                        "mode": "grab"
                    },
                    "onclick": {
                        "enable": true,
                        "mode": "push"
                    },
                    "resize": true
                },
                "modes": {
                    "grab": {
                        "distance": 200,
                        "line_linked": {
                            "opacity": 1
                        }
                    },
                    "bubble": {
                        "distance": 400,
                        "size": 40,
                        "duration": 2,
                        "opacity": 8
                    },
                    "repulse": {
                        "distance": 200
                    },
                    "push": {
                        "particles_nb": 4
                    },
                    "remove": {
                        "particles_nb": 2
                    }
                }
            },
            "retina_detect": true
        });
    </script>
</body>

</html>