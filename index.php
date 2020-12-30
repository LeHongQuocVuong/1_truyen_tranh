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
                Danh sách truyện tranh
            </h1>
        </div>
        <?php
        // Truy vấn database để lấy danh sách
        // 1. Include file cấu hình kết nối đến database, khởi tạo kết nối $conn
        include_once(__DIR__. '/dbconnect.php');

        // 2. Chuẩn bị câu truy vấn $sql
        $sql = "SELECT truyen_id, truyen_ma, truyen_ten, truyen_hinhdaidien, truyen_loai, truyen_theloai, truyen_tacgia, truyen_mota_ngan, truyen_ngaydang FROM truyen WHERE truyen_loai=2;";

        // 3. Thực thi câu truy vấn SQL để lấy về dữ liệu
        $result = mysqli_query($conn, $sql);
        // 4. Khi thực thi các truy vấn 
        $ds_truyentranh = [];
        while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){
          $ds_truyentranh[] = array(
            'truyen_id' => $row['truyen_id'],
            'truyen_hinhdaidien' => $row['truyen_hinhdaidien'],
            'truyen_ten' => $row['truyen_ten'],
            'truyen_mota_ngan' => $row['truyen_mota_ngan']
          );
        }
        ?>

        
            <div class="row">
                <?php
                foreach ($ds_truyentranh as $truyen):?>
                    <div class="col-md-3">
                        <div class="card" style="width: 18rem;">
                                <img src="<?=$truyen['truyen_hinhdaidien'] ?>" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title"><?=$truyen['truyen_ten'] ?></h5>
                                    <p class="card-text"><?=$truyen['truyen_mota_ngan'] ?></p>
                                    <a href="truyentranh.php?truyen_id=<?=$truyen['truyen_id'] ?>" class="btn btn-primary">Đọc truyện</a>
                                </div>
                            </div>
                    </div>
                <?php endforeach ?>               
                
            </div>
        
        <!-- Tiểu thuyết _________________ -->
        <div class="row">
            <h1 style="color: red">
                Danh sách tiểu thuyết
            </h1>
        </div>
        <?php
        
        // 2. Chuẩn bị câu truy vấn $sql
        $sql = "SELECT truyen_id, truyen_ma, truyen_ten, truyen_hinhdaidien, truyen_loai, truyen_theloai, truyen_tacgia, truyen_mota_ngan, truyen_ngaydang FROM truyen WHERE truyen_loai=1;";

        // 3. Thực thi câu truy vấn SQL để lấy về dữ liệu
        $result = mysqli_query($conn, $sql);
        
        $ds_tieuthuyet = [];
        while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){
          $ds_tieuthuyet[] = array(
            'truyen_id' => $row['truyen_id'],
            'truyen_hinhdaidien' => $row['truyen_hinhdaidien'],
            'truyen_ten' => $row['truyen_ten'],
            'truyen_mota_ngan' => $row['truyen_mota_ngan']
          );
        }
        ?>

        <!-- Nút thêm mới, bấm vào sẽ hiển thị form nhập thông tin Thêm mới -->
            <div class="row">
                <?php
                foreach ($ds_tieuthuyet as $truyen):?>
                    <div class="col-md-3">
                        <div class="card" style="width: 18rem;">
                                <img src="<?=$truyen['truyen_hinhdaidien'] ?>" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title"><?=$truyen['truyen_ten'] ?></h5>
                                    <p class="card-text"><?=$truyen['truyen_mota_ngan'] ?></p>
                                    <a href="tieuthuyet.php?truyen_id=<?=$truyen['truyen_id'] ?>" class="btn btn-primary">Đọc truyện</a>
                                </div>
                            </div>
                    </div>
                <?php endforeach ?>               
                
            </div>
            
    </div>

    <!-- Nhúng file quản lý phần SCRIPT JAVASCRIPT -->
  <?php include_once(__DIR__ . '/backend/layouts/scripts.php'); ?>
</body>
</html>
