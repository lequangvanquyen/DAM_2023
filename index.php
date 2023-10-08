<?php
session_start();
ob_start();
if (!isset($_SESSION["giohang"])) {
    $_SESSION["giohang"] = [];
}
// nhúng kết nối csdl
include "dao/pdo.php";
include "dao/danhmuc.php";
include "dao/sanpham.php";
include "dao/giohang.php";
include "view/header.php";

//data dành cho trang chủ
$dssp_new = get_dssp_new(4);
$dssp_best = get_dssp_best(2);
$dssp_view = get_dssp_view(4);


if (!isset($_GET['pg'])) {
    include "view/home.php";
} else {
    switch ($_GET['pg']) {
        case 'sanpham':
            $dsdm = danhmuc_all();

            if (!isset($_GET['iddm'])) {
                $iddm = 0;
            } else {
                $iddm = $_GET['iddm'];
            }
            $dssp = get_dssp($iddm, 12);

            include "view/sanpham.php";
            break;
        case 'sanphamchitiet':
            if (isset($_GET['idpro'])) {
                $id = $_GET['idpro'];
                $spchitiet = get_sp_by_id($id);
                $dsdm = danhmuc_all();
                $iddm = $spchitiet['iddm'];
                $splienquan = get_dssp_lienquan($iddm, $id, 4);
                include "view/sanphamchitiet.php";
            } else {
                include "view/home.php";
            }
            break;
        case 'addcart':
            if (isset($_POST['addcart'])) {
                $name = $_POST['name'];
                $img = $_POST['img'];
                $price = $_POST['price'];
                $soluong = $_POST['soluong'];
                $sp = array("name" => $name, "img" => $img, "soluong" => $soluong, "price" => $price);
                array_push($_SESSION["giohang"], $sp);
                // echo var_dump($_SESSION["giohang"]);
                header('location: index.php?pg=viewcart');
            }
            // include "view/addcart.php";
            break;

        case 'viewcart':
            if (isset($_GET['del']) && ($_GET['del'] == 1)) {
                unset($_SESSION["giohang"]);
                // $_SESSION["giohang"]=[]; 
                header('location: index.php');
            } else {
                if (isset($_SESSION["giohang"])) {
                    $tongdonhang = get_tongdonhang();
                }
                $giatrivoucher = 0;
                if (isset($_GET['voucher']) && $_GET['voucher'] == 1) {
                    $tongdonhang = $_POST['tongdonhang'];
                    $mavoucher = $_POST['mavoucher'];
                    // so sanh vs db de lay gia tri ve 
                    $giatrivoucher = 10;
                }
                $thanhtoan = $tongdonhang - $giatrivoucher;
                include "view/viewcart.php";
            }
            break;
        case 'dangky':
            include "view/dangky.php";
            break;
        case 'dangnhap':
            include "view/dangnhap.php";
            break;

        default:
            include "view/home.php";
            break;
    }
}


include "view/footer.php";
