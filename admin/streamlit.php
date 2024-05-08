</html>

<div class="admin">
    <div class="admin__header">
        <div class="admin__back">
            <i class="ph-bold ph-arrow-left"></i>
            <a href="./streamlit.php">Kembali</a>
        </div>

        <?php

        error_reporting(E_ALL);
        session_start();

        // cek apakah user belum login
        if (!isset($_SESSION['staff_id'])) {
            header("Location: ./login.php");
            exit();
        }

        // cek apakah peran user bukan manager
        if ($_SESSION['role_name'] != 'manager') {
            header("Location: ./index.php");
            exit();
        }

        // inisialisasi variabel untuk halaman dan komponen header
        $page = 'streamlit';
        $title = 'Streamlit';
        require('layouts/header.php');

        ?>
        <!-- your content in here -->
        <div class="admin">
            <div class="admin__header">
                <h1 class="admin__title">Streamlit<h1>
            </div>
            <div class="admin__body">
                <iframe src="https://paknur-bookstore-analysis.streamlit.app/?embed=true" width="105%" height="1000px" frameborder="0" allowfullscreen></iframe>


                <?php

                // komponen footer
                require('layouts/footer.php');

                ?>