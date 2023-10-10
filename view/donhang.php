<section class="containerfull">
    <div class="container">
        <form action="index.php?pg=donhang" method="post">
            <div class="col9 viewcart">
                <div class="ttdathang">
                    <h2>Thông tin người đặt hàng</h2>

                    <label for="hoten"><b>Họ và tên</b></label>
                    <input type="text" placeholder="Nhập họ tên đầy đủ" name="hoten" id="hoten">

                    <label for="diachi"><b>Địa chỉ</b></label>
                    <input type="text" placeholder="Nhập địa chỉ" name="diachi" id="diachi">

                    <label for="email"><b>Email</b></label>
                    <input type="text" placeholder="Nhập email" name="email" id="email">

                    <label for="dienthoai"><b>Điện thoại</b></label>
                    <input type="text" placeholder="Nhập điện thoại" name="dienthoai" id="dienthoai">
                </div>
                <div class="ttdathang">
                    <a onclick="showttnhanhang()" style="cursor: pointer;">
                        &rArr; Thay đổi thông tin nhận hàng
                    </a>
                </div>
                <div class="ttdathang" id="ttnhanhang">
                    <h2>Thông tin người nhận hàng</h2>

                    <label for="hoten"><b>Họ và tên</b></label>
                    <input type="text" placeholder="Nhập họ tên đầy đủ" name="hoten_nguoinhan" id="hoten">

                    <label for="diachi"><b>Địa chỉ</b></label>
                    <input type="text" placeholder="Nhập địa chỉ" name="diachi_nguoinhan" id="diachi">

                    <label for="dienthoai"><b>Điện thoại</b></label>
                    <input type="text" placeholder="Nhập điện thoại" name="dienthoai_nguoinhan" id="dienthoai">
                </div>
            </div>

            <div class="col3">
                <h2>ĐƠN HÀNG</h2>
                <div class="total">
                    <div class="boxcart">
                        <li>Sản phẩm 1 x 2</li>
                        <li>Sản phẩm 2 x 3</li>
                        <li>Sản phẩm 3 x 4</li>

                        <h3>Tổng: 1000000</h3>
                    </div>
                </div>

                <div class="coupon">
                    <div class="boxcart">
                        <h3>Vouche: </h3>
                    </div>
                </div>
                <div class="pttt">
                    <div class="boxcart">
                        <h3>Phương thức thanh toán: </h3>
                        <input type="radio" name="pttt" value="1" checked> Tiền mặt<br>
                        <input type="radio" name="pttt" value="2"> Ví điện tử<br>
                        <input type="radio" name="pttt" value="3"> Chuyển khoản<br>
                        <input type="radio" name="pttt" value="4"> Thanh toán online<br>
                    </div>
                </div>
                <div class="total">
                    <div class="boxcart bggray">
                        <h3>Tổng thanh toán: 1000000</h3>
                    </div>
                </div>
                <button type="submit" name="donhang" style="cursor:pointer">Thanh toán</button>
            </div>
        </form>
    </div>
</section>

<script>
    var ttnhanhang = document.getElementById("ttnhanhang");
    ttnhanhang.style.display = "none";

    function showttnhanhang() {
        if (ttnhanhang.style.display == "none") {
            ttnhanhang.style.display = "block";
        } else {
            ttnhanhang.style.display = "none";
        }
    }
</script>