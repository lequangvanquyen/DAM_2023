<?php
function viewcart()
{
    $html_cart = '';
    $i = 1;
    foreach ($_SESSION['giohang'] as $sp) {
        extract($sp);
        $tt = (int)$price * (int)$soluong;
        $html_cart .= '
                    <tr>
                        <td>' . $i . '</td>
                        <td><img src="layout/images/' . $img . '" alt="" style= "width:100px"></td>
                        <td>' . $name . '</td>
                        <td>' . $price . '</td>
                        <td>' . $soluong . '</td>
                        <td>' . $tt . '</td>
                        <td><a href="#">Xóa</a></td>
                    </tr>
                ';
        $i++;
    }
    return $html_cart;
}
function get_tongdonhang()
{
    $tong = 0;
    foreach ($_SESSION['giohang'] as $sp) {
        extract($sp);
        $tt = (int)$price * (int)$soluong;
        $tong += $tt;
    }
    return $tong;
}
