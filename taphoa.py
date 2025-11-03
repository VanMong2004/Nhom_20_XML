from lxml import etree

# ==========================================================
# LOAD FILE XML
# ==========================================================
tree = etree.parse("taphoa.xml")

# ==========================================================
# 1 DANH SÁCH SẢN PHẨM
# ==========================================================
print("=== 1 DANH SÁCH SẢN PHẨM ===")
names = tree.xpath("//SANPHAM/TenSanPham/text()")
for name in names:
    print("-", name)


# ==========================================================
# 2 SẢN PHẨM CÓ TỒN < 50 (CẢNH BÁO HÀNG ÍT)
# ==========================================================
print("\n=== 2 SẢN PHẨM CÓ TỒN < 50 ===")
for sp in tree.xpath("//SANPHAM[SoLuongTon < 50]"):
    ma = sp.findtext("MaSP")
    ten = sp.findtext("TenSanPham")
    ton = sp.findtext("SoLuongTon")
    print(f"{ma} - {ten} (Tồn: {ton})")


# ==========================================================
# 3 LIỆT KÊ HÓA ĐƠN CỦA KHÁCH HÀNG CỤ THỂ (VD: KH001)
# ==========================================================
print("\n=== 3 HÓA ĐƠN CỦA KHÁCH HÀNG KH001 ===")
hd_kh = tree.xpath("//HOADONBAN[MaKH='KH001']")
for hd in hd_kh:
    print(f"Mã HD: {hd.findtext('MaHD')}, Ngày: {hd.findtext('NgayLap')}, Tổng: {hd.findtext('TongTien')}")


# ==========================================================
# 4 TỔNG DOANH THU TOÀN CỬA HÀNG
# ==========================================================
print("\n=== 4 TỔNG DOANH THU TOÀN CỬA HÀNG ===")
total = tree.xpath("sum(//HOADONBAN/TongTien)")
print("Tổng doanh thu:", int(total))


# ==========================================================
# 5 HIỂN THỊ CHI TIẾT HÓA ĐƠN HD001
# ==========================================================
print("\n=== 5 CHI TIẾT HÓA ĐƠN HD001 ===")
ct = tree.xpath("//CT_HOADONBAN[MaHD='HD001']")
for r in ct:
    print(f"Mã SP: {r.findtext('MaSP')}, SL: {r.findtext('SoLuong')}, Thành tiền: {r.findtext('ThanhTien')}")


# ==========================================================
# 6 DANH SÁCH NHÀ CUNG CẤP
# ==========================================================
print("\n=== 6 DANH SÁCH NHÀ CUNG CẤP ===")
for ncc in tree.xpath("//NHACUNGCAP/TenNCC/text()"):
    print("-", ncc)


# ==========================================================
# 7 SẢN PHẨM CÓ GIÁ BÁN > 1 TRIỆU
# ==========================================================
print("\n=== 7 SẢN PHẨM GIÁ BÁN > 1.000.000 ===")
for sp in tree.xpath("//SANPHAM[GiaBan>1000000]/TenSanPham/text()"):
    print("-", sp)


# ==========================================================
# 8 KHÁCH HÀNG CÓ ĐIỂM TÍCH LŨY > 100
# ==========================================================
print("\n=== 8 KHÁCH HÀNG CÓ ĐIỂM TÍCH LŨY > 100 ===")
for kh in tree.xpath("//KHACHHANG[DiemTichLuy>100]/TenKH/text()"):
    print("-", kh)


# ==========================================================
# 9 ĐẾM TỔNG SỐ SẢN PHẨM
# ==========================================================
print("\n=== 9 ĐẾM TỔNG SỐ SẢN PHẨM ===")
count_sp = tree.xpath("count(//SANPHAM)")
print("Tổng số sản phẩm:", int(count_sp))


# ==========================================================
# 10 TÍNH TỔNG SỐ LƯỢNG TỒN KHO (CỘNG TẤT CẢ SoLuongTon)
# ==========================================================
print("\n=== 10 TỔNG SỐ LƯỢNG TỒN KHO ===")
tong_ton = tree.xpath("sum(//SANPHAM/SoLuongTon)")
print("Tổng số lượng tồn:", int(tong_ton))


# ==========================================================
# 11 HIỂN THỊ NHÂN VIÊN LẬP HÓA ĐƠN HD001
# ==========================================================
print("\n=== 11  NHÂN VIÊN LẬP HÓA ĐƠN HD001 ===")
nv = tree.xpath("//HOADONBAN[MaHD='HD001']/MaNV/text()")
if nv:
    print("Mã nhân viên lập hóa đơn HD001:", nv[0])
else:
    print("Không tìm thấy hóa đơn hoặc nhân viên tương ứng.")
