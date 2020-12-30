<?php
        // Truy vấn database để lấy danh sách
        // 1. Include file cấu hình kết nối đến database, khởi tạo kết nối $conn
        include_once(__DIR__. '/dbconnect.php');

        $truyen_id = $_GET['truyen_id'];
        $chuong_id = $_GET['chuong_id']

        // 2. Chuẩn bị câu truy vấn $sql
        $sql = "SELECT chuong_hinhanh_id, chuong_id, chuong_hinhanh_tenhinh	FROM chuong_hinhanh WHERE chuong_id = $chuong_id;";

        // 3. Thực thi câu truy vấn SQL để lấy về dữ liệu
        $result = mysqli_query($conn, $sql);
        
        $ds_hinhanh = [];
        while($cot = mysqli_fetch_array($result, MYSQLI_ASSOC)){
          $ds_hinhanh[] = array(
            'chuong_hinhanh_id' => $cot['chuong_hinhanh_id'],
            'chuong_id' => $cot['chuong_id'],
            'chuong_hinhanh_tenhinh' => $cot['chuong_hinhanh_tenhinh']
            
          );
        }
        ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Nhúng file quản lý phần HEAD -->
    <?php include_once(__DIR__ . '/backend/layouts/head.php'); ?>
    
</head>
    
<body>

    <div class="container">
        <?php
            include_once(__DIR__ . '/backend/layouts/partials/header.php');
        ?>
        <div class="row">
            <h1 style="color: red">
               Thông tin
            </h1>
        </div>
        <div class="row border border-primary p-2">
            <div class="col-md-3">
                <div class="row">
                    <img src="<?= $row['truyen_hinhdaidien'];?>" class="img-fluid"alt="" srcset="">
                </div>
                <div class="row">
                    <b>
                        Tác giả: 
                    </b>
                    <?= $row['truyen_tacgia'];?>
                </div>
                <div class="row">
                    <b>
                        Thể loại: 
                    </b>
                    <?= $row['truyen_theloai'];?>
                </div>
                <div class="row">
                    <b>
                        Ngày đăng: 
                    </b>
                    <?= $row['truyen_ngaydang'];?>
                </div>
                
            </div>
            <div class="col-md-9">
                <div class="row">
                    <div class="col">
                        <h1 class="text-center"><?= $row['truyen_ten'];?></h1>
                    </div>
                    
                </div>
                <div class="row border border-dark p-2">
                    <?= $row['truyen_mota_ngan'];?>
                </div>
            </div>
        </div>
        <div class="row">
            <h2>
                Danh sách chương truyện <?= $row['truyen_ten']?>    
            </h2>
        </div>
        <div class="row">
            <ul>
                <?php
                    foreach ($ds_hinhanh as $chuong):?>
                        <li>
                            <a href="truyentranh_noidung.php?truyen_id=<?=$chuong['truyen_id'] ?>&chuong_id=<?=$chuong['chuong_id'] ?>">
                                <?php echo $chuong['chuong_so'] ." - " . $chuong['chuong_ten']?>
                            </a>
                            
                        </li>
                    <?php endforeach ?>
            </ul>
        </div>
        

        
            
    </div>

    <!-- Nhúng file quản lý phần SCRIPT JAVASCRIPT -->
  <?php include_once(__DIR__ . '/backend/layouts/scripts.php'); ?>
</body>
</html>
