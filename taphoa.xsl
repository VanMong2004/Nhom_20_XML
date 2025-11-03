<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes" />

  <xsl:template match="/">
    <html>
      <head>
        <title>Quản lý tiệm tạp hóa nhỏ</title>
        <style>
          table, th, td { border: 1px solid black; border-collapse: collapse; }
          th, td { padding: 5px; text-align: left; }
          table { width: 90%; margin-bottom: 30px; }
          h1, h2 { font-family: Arial, sans-serif; }
          body { font-family: Arial, sans-serif; margin: 20px; }
          h1 { color: #2E8B57; }
          h2 { color: #4682B4; }
          tr:nth-child(even) { background-color: #f2f2f2; }
          tr:hover { background-color: #ddd; }
          th { background-color: #4CAF50; color: white; }
        </style>
      </head>
      <body>
        <h1>HỆ THỐNG QUẢN LÝ TIỆM TẠP HÓA</h1>

        <!-- 1 DANH SÁCH SẢN PHẨM -->
        <h2>1. Danh sách sản phẩm</h2>
        <table>
          <tr>
            <th>Mã SP</th>
            <th>Tên sản phẩm</th>
            <th>ĐVT</th>
            <th>Giá bán</th>
            <th>Tồn</th>
          </tr>
          <xsl:for-each select="taphoa/SANPHAM">
            <tr>
              <td>
                <xsl:value-of select="MaSP" />
              </td>
              <td>
                <xsl:value-of select="TenSanPham" />
              </td>
              <td>
                <xsl:value-of select="DonViTinh" />
              </td>
              <td>
                <xsl:value-of select="GiaBan" />
              </td>
              <td>
                <xsl:value-of select="SoLuongTon" />
              </td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- 2 DANH MỤC -->
        <h2>2. Danh mục sản phẩm</h2>
        <table>
          <tr>
            <th>Mã danh mục</th>
            <th>Tên danh mục</th>
          </tr>
          <xsl:for-each select="taphoa/DANHMUC">
            <tr>
              <td>
                <xsl:value-of select="MaDanhMuc" />
              </td>
              <td>
                <xsl:value-of select="TenDanhMuc" />
              </td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- 3 NHÀ CUNG CẤP -->
        <h2>3. Danh sách nhà cung cấp</h2>
        <table>
          <tr>
            <th>Mã NCC</th>
            <th>Tên NCC</th>
            <th>Địa chỉ</th>
            <th>SĐT</th>
            <th>Email</th>
          </tr>
          <xsl:for-each select="taphoa/NHACUNGCAP">
            <tr>
              <td>
                <xsl:value-of select="MaNCC" />
              </td>
              <td>
                <xsl:value-of select="TenNCC" />
              </td>
              <td>
                <xsl:value-of select="DiaChi" />
              </td>
              <td>
                <xsl:value-of select="SDT" />
              </td>
              <td>
                <xsl:value-of select="Email" />
              </td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- 4 KHÁCH HÀNG -->
        <h2>4. Danh sách khách hàng</h2>
        <table>
          <tr>
            <th>Mã KH</th>
            <th>Tên KH</th>
            <th>SĐT</th>
            <th>Địa chỉ</th>
            <th>Điểm tích lũy</th>
          </tr>
          <xsl:for-each select="taphoa/KHACHHANG">
            <tr>
              <td>
                <xsl:value-of select="MaKH" />
              </td>
              <td>
                <xsl:value-of select="TenKH" />
              </td>
              <td>
                <xsl:value-of select="SDT" />
              </td>
              <td>
                <xsl:value-of select="DiaChi" />
              </td>
              <td>
                <xsl:value-of select="DiemTichLuy" />
              </td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- 5 NHÂN VIÊN -->
        <h2>5. Danh sách nhân viên</h2>
        <table>
          <tr>
            <th>Mã NV</th>
            <th>Tên NV</th>
            <th>Ngày sinh</th>
            <th>Chức vụ</th>
            <th>SĐT</th>
          </tr>
          <xsl:for-each select="taphoa/NHANVIEN">
            <tr>
              <td>
                <xsl:value-of select="MaNV" />
              </td>
              <td>
                <xsl:value-of select="TenNV" />
              </td>
              <td>
                <xsl:value-of select="NgaySinh" />
              </td>
              <td>
                <xsl:value-of select="ChucVu" />
              </td>
              <td>
                <xsl:value-of select="SDT" />
              </td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- 6 PHIẾU NHẬP -->
        <h2>6. Danh sách phiếu nhập hàng</h2>
        <table>
          <tr>
            <th>Mã phiếu nhập</th>
            <th>Ngày nhập</th>
            <th>Tổng tiền</th>
            <th>Mã NCC</th>
          </tr>
          <xsl:for-each select="taphoa/PHIEUNHAP">
            <tr>
              <td>
                <xsl:value-of select="MaPhieuNhap" />
              </td>
              <td>
                <xsl:value-of select="NgayNhap" />
              </td>
              <td>
                <xsl:value-of select="TongTien" />
              </td>
              <td>
                <xsl:value-of select="MaNCC" />
              </td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- 7 HÓA ĐƠN BÁN -->
        <h2>7. Danh sách hóa đơn bán hàng</h2>
        <table>
          <tr>
            <th>Mã HD</th>
            <th>Ngày lập</th>
            <th>Tổng tiền</th>
            <th>Mã KH</th>
            <th>Mã NV</th>
          </tr>
          <xsl:for-each select="taphoa/HOADONBAN">
            <tr>
              <td>
                <xsl:value-of select="MaHD" />
              </td>
              <td>
                <xsl:value-of select="NgayLap" />
              </td>
              <td>
                <xsl:value-of select="TongTien" />
              </td>
              <td>
                <xsl:value-of select="MaKH" />
              </td>
              <td>
                <xsl:value-of select="MaNV" />
              </td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- 8 CHI TIẾT PHIẾU NHẬP -->
        <h2>8. Chi tiết phiếu nhập</h2>
        <table>
          <tr>
            <th>Mã phiếu nhập</th>
            <th>Mã SP</th>
            <th>Số lượng</th>
            <th>Đơn giá</th>
          </tr>
          <xsl:for-each select="taphoa/CT_PHIEUNHAP">
            <tr>
              <td>
                <xsl:value-of select="MaPhieuNhap" />
              </td>
              <td>
                <xsl:value-of select="MaSP" />
              </td>
              <td>
                <xsl:value-of select="SoLuong" />
              </td>
              <td>
                <xsl:value-of select="DonGia" />
              </td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- 9 CHI TIẾT HÓA ĐƠN BÁN -->
        <h2>9. Chi tiết hóa đơn bán</h2>
        <table>
          <tr>
            <th>Mã HD</th>
            <th>Mã SP</th>
            <th>Số lượng</th>
            <th>Đơn giá</th>
            <th>Thành tiền</th>
          </tr>
          <xsl:for-each select="taphoa/CT_HOADONBAN">
            <tr>
              <td>
                <xsl:value-of select="MaHD" />
              </td>
              <td>
                <xsl:value-of select="MaSP" />
              </td>
              <td>
                <xsl:value-of select="SoLuong" />
              </td>
              <td>
                <xsl:value-of select="DonGia" />
              </td>
              <td>
                <xsl:value-of select="ThanhTien" />
              </td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- 10 Liệt kê sản phẩm có số lượng tồn dưới 50 -->
        <h2>10. Sản phẩm sắp hết hàng (Số lượng tồn &lt; 50)</h2>
        <table>
          <tr>
            <th>Mã SP</th>
            <th>Tên sản phẩm</th>
            <th>Tồn kho</th>
          </tr>
          <xsl:for-each select="taphoa/SANPHAM[SoLuongTon &lt; 50]">
            <tr>
              <td>
                <xsl:value-of select="MaSP" />
              </td>
              <td>
                <xsl:value-of select="TenSanPham" />
              </td>
              <td>
                <xsl:value-of select="SoLuongTon" />
              </td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- 11 Liệt kê sản phẩm giá cao hơn 100000 -->
        <h2>11. Sản phẩm giá cao (Giá bán &gt; 100000)</h2>
        <table>
          <tr>
            <th>Mã SP</th>
            <th>Tên sản phẩm</th>
            <th>Giá bán</th>
          </tr>
          <xsl:for-each select="taphoa/SANPHAM[GiaBan &gt; 100000]">
            <tr>
              <td>
                <xsl:value-of select="MaSP" />
              </td>
              <td>
                <xsl:value-of select="TenSanPham" />
              </td>
              <td>
                <xsl:value-of select="GiaBan" />
              </td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- 12 Sắp xếp sản phẩm theo giá giảm dần -->
        <h2>12. Sản phẩm theo giá giảm dần</h2>
        <table>
          <tr>
            <th>Mã SP</th>
            <th>Tên SP</th>
            <th>Giá bán</th>
          </tr>
          <xsl:for-each select="taphoa/SANPHAM">
            <xsl:sort select="GiaBan" data-type="number" order="descending" />
            <tr>
              <td>
                <xsl:value-of select="MaSP" />
              </td>
              <td>s <xsl:value-of select="TenSanPham" />
              </td>
              <td>
                <xsl:value-of select="GiaBan" />
              </td>
            </tr>
          </xsl:for-each>

        </table>

        <!-- 13 Liệt kê khách hàng có điểm tích lũy trên 100 -->
        <h2>13. Khách hàng thân thiết (Điểm tích lũy &gt; 100)</h2>
        <table>
          <tr>
            <th>STT</th>
            <th>Mã KH</th>
            <th>Tên KH</th>
            <th>Điểm</th>
          </tr>
          <xsl:for-each select="taphoa/KHACHHANG[DiemTichLuy &gt; 100 ]">
            <xsl:sort select="DiemTichLuy" data-type="number" order="descending" />
            <tr>
              <td>
                <xsl:value-of select="position()" />
              </td>
              <td>
                <xsl:value-of select="MaKH" />
              </td>
              <td>
                <xsl:value-of select="TenKH" />
              </td>
              <td>
                <xsl:value-of select="DiemTichLuy" />
              </td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- 14 Đếm tổng số sản phẩm -->
        <h2>14. Tổng số sản phẩm trong cửa hàng</h2>
        <p> Có tổng cộng: <xsl:value-of select="count(taphoa/SANPHAM)" /> sản phẩm. </p>

        <!-- 15 Tính tổng số lượng tồn kho (cộng tất cả SoLuongTon) -->
        <h2>15. Tổng số lượng tồn kho toàn cửa hàng</h2>
        <xsl:variable name="tongton" select="sum(taphoa/SANPHAM/SoLuongTon)" />
        <p>Tổng tồn kho: <xsl:value-of select="$tongton" /> sản phẩm.</p>

        <!-- 16 Tính tổng doanh thu từ các hóa đơn bán -->
        <h2>16. Tổng doanh thu bán hàng</h2>
        <xsl:variable name="tongdoanhthu" select="sum(taphoa/HOADONBAN/TongTien)" />
        <p>Tổng doanh thu: <xsl:value-of select="$tongdoanhthu" /> VNĐ.</p>

        <!-- 17 Hiển thị hóa đơn có tổng tiền cao nhất -->
        <h2>17. Hóa đơn có giá trị cao nhất</h2>
        <table>
          <tr>
            <th>Mã HD</th>
            <th>Tổng tiền</th>
            <th>Khách hàng</th>
          </tr>
          <xsl:for-each select="taphoa/HOADONBAN">
            <xsl:sort select="number(TongTien)" data-type="number" order="descending" />
            <xsl:if
              test="position()=1">
              <tr>
                <td>
                  <xsl:value-of select="MaHD" />
                </td>
                <td>
                  <xsl:value-of select="TongTien" />
                </td>
                <td>
                  <xsl:value-of select="MaKH" />
                </td>
              </tr>
            </xsl:if>
          </xsl:for-each>
        </table>


        <!-- 18 Liệt kê 5 sản phẩm đầu tiên theo giá giảm dần -->
        <h2>18. Top 5 sản phẩm giá cao nhất</h2>
        <table>
          <tr>
            <th>STT</th>
            <th>Tên SP</th>
            <th>Giá bán</th>
          </tr>
          <xsl:for-each select="taphoa/SANPHAM">
            <xsl:sort select="number(GiaBan)" data-type="number" order="descending" />
            <xsl:if
              test="position() &lt;= 5">
              <tr>
                <td>
                  <xsl:value-of select="position()" />
                </td>
                <td>
                  <xsl:value-of select="TenSanPham" />
                </td>
                <td>
                  <xsl:value-of select="GiaBan" />
                </td>
              </tr>
            </xsl:if>
          </xsl:for-each>
        </table>

        <!-- 19 Hiển thị sản phẩm có tồn kho thấp nhất -->
        <h2>19. Sản phẩm tồn kho ít nhất</h2>
        <table>
          <tr>
            <th>Tên SP</th>
            <th>Tồn kho</th>
          </tr>
          <xsl:for-each select="taphoa/SANPHAM">
            <xsl:sort select="number(SoLuongTon)" data-type="number" order="ascending" />
            <xsl:if
              test="position()=1">
              <tr>
                <td>
                  <xsl:value-of select="TenSanPham" />
                </td>
                <td>
                  <xsl:value-of select="SoLuongTon" />
                </td>
              </tr>
            </xsl:if>
          </xsl:for-each>
        </table>


      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>