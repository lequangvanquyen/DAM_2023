<?php
// require_once 'pdo.php';

function bill_insert_id($madh, $iduser, $hoten, $email, $dienthoai, $diachi, $nguoinhan_ten, $nguoinhan_diachi, $nguoinhan_tel, $total, $ship, $voucher, $tongthanhtoan, $pttt)
{
    $sql = "INSERT INTO bill( madh, iduser, hoten, email, dienthoai, diachi, nguoinhan_ten, nguoinhan_diachi, nguoinhan_tel, total, ship, voucher, tongthanhtoan, pttt) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    return pdo_execute_id($sql, $madh, $iduser, $hoten, $email, $dienthoai, $diachi, $nguoinhan_ten, $nguoinhan_diachi, $nguoinhan_tel, $total, $ship, $voucher, $tongthanhtoan, $pttt);
}
