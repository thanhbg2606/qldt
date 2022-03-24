<%@page import="controller.logic.TrungBinhMon"%>
<%@page import="controller.logic.TinhToan"%>
<%@page import="model.KetQua"%>
<%@page import="controller.logic.Pretreatment"%>
<%@page import="model.DangKiHoc"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.SinhVien"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:useBean id="t" class="dao.TTSV" scope="request"></jsp:useBean>

    <!DOCTYPE html>
    <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>HAHAHA</title>
            <link rel="stylesheet"
                  href='<c:url value="assets/xemdiem/css/style.css"></c:url>'>
            <link rel="stylesheet" href="style.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        </head>


    <%
        String redirectURL = "http://localhost:8081/WebApplication1/login.jsp";
        SinhVien sv = (SinhVien) request.getSession().getAttribute("sinhvien");
        if (sv == null) {
            response.sendRedirect("http://localhost:8081/WebApplication1/login.jsp");
        }
    %>
    <body>
        <div class="container">
            <div class="font"></div>
            <!--Start header-->
            <div class="header">
                <!--Start login-->
                <div class="login">
                    <div class="infor">
                        <p>Chào bạn ${sessionScope.sinhvien.ten} (${sessionScope.sinhvien.maSV})
                            <a href="#">Xem thông báo</a> | <a href="#">Thay đổi mật khẩu</a> | <a href="LogoutController">Thoát</a>
                            <select id="font">
                                <option value="tahoma">Tahoma</option>
                                <option value="time news roman">Time News Roman</option>
                                <option value="sanf">Sanf</option>
                            </select>
                        </p>
                    </div>
                </div>
                <!--End login-->
                <div class="add"></div>
                <!--Start navigation-->
                <div class="nav">
                    <ul id="nav-ul">
                        <li><a href="#">TRANG CHỦ</a></li>
                        <li><a href="#">ĐĂNG KÝ MÔN HỌC</a></li>
                        <li><a href="#">XEM TKB</a></li>
                        <li><a href="#">XEM LỊCH THI</a></li>
                        <li><a href="#">XEM LỊCH THI LẠI</a></li>
                        <li><a href="#">XEM HỌC PHÍ</a></li>
                        <li><a href="#">XEM ĐIỂM</a></li>
                        <li><a href="#">XEM CTĐT</a></li>
                        <li><a href="#">XEM MÔN TQ</a></li>
                        <li><a href="#">SỬA TT CÁ NHÂN</a></li>
                        <li><a href="#">GÓP Ý KIẾN</a></li>
                    </ul>
                </div>
                <!--End navigation-->
                <!--Start tutorial-->
                <div class="tutorial">
                    <p><a href="#">SỬA LÝ LỊCH</a>
                        <a href="#">HƯỚNG DẪN ĐKMH</a>
                    </p>
                </div>
                <!--End tutorial-->
            </div>
            <!--End header-->
            <!--Start infor-member-->
            <div class="infor-member">
                <!--Start Infor Member Bor-->
                <div class="infor-member-bor">
                    <div class="member">
                        <table>
                            <tr>
                                <td>Mã sinh viên</td>
                                <td><strong>${sessionScope.sinhvien.maSV}</strong></td>
                            </tr>
                            <tr>
                                <td>Tên sinh viên</td>
                                <td><strong>${sessionScope.sinhvien.ten}</strong></td>
                            </tr>
                            <tr>
                                <td>Phái</td>
                                <td>Nam</td>
                            </tr>
                            <tr>
                                <td>Nơi sinh</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Lớp</td>
                                <td>D18CNPM1</td>
                            </tr>
                            <tr>
                                <td>Ngành</td>
                                <td><strong>Công Nghệ Phần Mềm</strong></td>
                            </tr>
                            <tr>
                                <td>Khoa</td>
                                <td><strong>Công Nghệ Thông Tin</strong></td>
                            </tr>
                            <tr>
                                <td>Hệ đào tạo</td>
                                <td>Đại học chính quy</td>
                            </tr>
                            <tr>
                                <td>Khóa học</td>
                                <td><strong>2018-2023</strong></td>
                            </tr>
                            <tr>
                                <td>Cố vấn học tập</td>
                                <td><strong>Nguyễn Trọng Khánh(PM1012)</strong></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <!--End Infor Member Bor-->
                <!--Start Point Table-->
                <div class="point-table">
                    <div class="point-table-center">
                        <a href="#" id="time-hk">Học kỳ 1 năm học 2021</a>
                        <p id="pt">Nhập học kỳ xem điểm thi (vd 200061)</p>
                        <input name="hocky" type="text" id="pt" class="textbox">
                        <input name="search" type="submit" id="pt" class="sub-button" value="Xem">
                    </div>
                    <div class="table">
                        <% ArrayList<Integer> kh = new ArrayList<Integer>();
                            kh = t.getKiHoc(sv);
                            ArrayList< ArrayList<DangKiHoc>> listdkh = new ArrayList< ArrayList<DangKiHoc>>();
                            for (int i = 0; i < kh.size(); i++) {
                                listdkh.add(t.getListDangKiHocTheoKy(sv, kh.get(i)));

                            }

                            //            listdkh.get(1).get(1).getDsketqua().get(1).getDiem()
                        %>
                        <div class="point-table-list">
                            <!--Start View Table-->
                            <table class="view-table">
                                <tr class="title-diem">
                                    <td class="title-td">
                                        <span class="td-1">STT
                                    </td>
                                    <td class="title-td">
                                        <span class="td-2">Mã Môn
                                    </td>
                                    <td class="title-td">
                                        <span class="td-3">Tên Môn
                                    </td>
                                    <td class="title-td">
                                        <span class="td-4">TC
                                    </td>
                                    <td class="title-td">
                                        <span class="td-5">% CC
                                    </td>
                                    <td class="title-td">
                                        <span class="td-6">% KT
                                    </td>
                                    <td class="title-td">
                                        <span class="td-7">% TH
                                    </td>
                                    <td class="title-td">
                                        <span class="td-8">% BT
                                    </td>
                                    <td class="title-td">
                                        <span class="td-9">% Thi
                                    </td>
                                    <td class="title-td">
                                        <span class="td-10">Điểm CC
                                    </td>
                                    <td class="title-td">
                                        <span class="td-11">ĐIểm KT
                                    </td>
                                    <td class="title-td">
                                        <span class="td-12">Điểm TH
                                    </td>
                                    <td class="title-td">
                                        <span class="td-13">Điểm BT
                                    </td>
                                    <td class="title-td">
                                        <span class="td-14">Thi L1
                                    </td>  
                                    <td class="title-td">
                                        <span class="td-14">Thi L2
                                    </td>  
                                    <td class="title-td">
                                        <span class="td-16">TK(10)
                                    </td>
                                    <td class="title-td">
                                        <span class="td-17">TK(CH)
                                    </td>
                                    <td class="title-td">
                                        <span class="td-18">KQ
                                    </td>
                                </tr>
                                <!--Start Hoc Ky 1 2018-2019 -->
                                <%//var accumulation lưu trữ danh sách của các kỳ như count
                                    ArrayList<DangKiHoc> accumulation = new ArrayList<DangKiHoc>();%>
                                <%for (ArrayList<DangKiHoc> listdkhtheoky : listdkh) {
                                        //var curr lưu trữ danh sách môn học của 1 kỳ
                                        ArrayList<DangKiHoc> curr = new ArrayList<DangKiHoc>();
                                %>
                                <tr class="title-hk-diem">
                                    <td colspan="18">
                                        <span class="font">Học <%=listdkhtheoky.get(0).getMonHocKiHoc().getKiHoc().getHocki().getTen()%> - Năm Học 
                                            <%=listdkhtheoky.get(0).getMonHocKiHoc().getKiHoc().getNamhoc().getTem()%>
                                        </span>
                                    </td>
                                </tr>
                                <%for (DangKiHoc dkh : listdkhtheoky) {%>
                                <%accumulation.add(dkh);
                                    curr.add(dkh);
                                %>
                                <div class="row-diem-gr">
                                    <tr class="row-diem">
                                        <td><span class="font">2</span></td>
                                        <td><span class="font"><%=dkh.getMonHocKiHoc().getMh().getMaTC()%></span></td>
                                        <td><span class="font td-3"><%=dkh.getMonHocKiHoc().getMh().getTen()%></span></td>
                                        <td><span class="font"><%=dkh.getMonHocKiHoc().getMh().getSoTC()%></span></td>

                                        <%ArrayList<KetQua> dskq = Pretreatment.changeListdsKQ(dkh.getDsketqua());
                                            for (KetQua kq : dskq) {%>
                                        <td><span class="font"><%=Math.round(kq.getDiemtp().getTitle() * 100)%></span></td>
                                            <% }%>
                                            <%for (KetQua kq : dskq) {
                                                    if (kq.getDiem() == -1.0) {%>
                                        <td><span class="font"></span></td>

                                        <%} else {%>
                                        <td><span class="font"><%=kq.getDiem()%></span></td>

                                        <%}
                                            }%>

                                        <td><span class="font"></span></td>
                                            <%TinhToan tt = new TinhToan();
                                                tt.setObj(dkh.getDsketqua());
                                                tt.setTinhtoan(new TrungBinhMon());
                                                float kq = tt.getKQ();
                                            %>
                                        <td><span class="font"><%=tt.getKQ()%></span></td>

                                        <%%>
                                        <td><span class="font"><%=Pretreatment.XepHangDiem(kq)%></span></td>
                                            <%if (kq < 4) {%>
                                        <td><span class="font">x</span></td>    
                                        <%} else {%>

                                        <td><span class="font">Đạt</span></td>
                                        <%}%>
                                    </tr>
                                </div>

                                <%}%> 
                                <div class="row-diemTK-gr">
                                    <tr class="row-diemTK">
                                        <td colspan="18" align="left">
                                            <span class="font" style="width:300px">Điểm trung bình học kỳ hệ 4:</span>
                                            <%float cur = Pretreatment.DiemTBKyHoc(curr);%>
                                            <span class="font"><%=cur%></span>
                                        </td>
                                    </tr>
                                    <tr class="row-diemTK">
                                        <td colspan="18" align="left">
                                            <span class="font" style="width:300px">Điểm trung bình tích lũy(hệ 4):</span>
                                            <%float acc = Pretreatment.DiemTBKyHoc(accumulation);%>
                                            <span class="font"><%=acc%></span>

                                        </td>
                                    </tr>
                                    <tr class="row-diemTK">
                                        <td colspan="18" align="left">
                                            <span class="font" style="width:300px">Số tín chỉ đạt:</span>
                                            <span class="font"><%=Pretreatment.TinhToanTinChi(curr)%></span>
                                        </td>
                                    </tr>
                                    <tr class="row-diemTK">
                                        <td colspan="18" align="left">
                                            <span class="font" style="width:300px">Số tín chỉ tích lũy:</span>
                                            <span class="font"><%=Pretreatment.TinhToanTinChi(accumulation)%></span>
                                        </td>
                                    </tr>
                                </div>
                                <%}%>



                                <!--End Hoc Ky 1 2018-2019 -->


                            </table>
                            <!--End View Table-->


                        </div>
                        <div class="point-table-footer">
                            <a href="#" id="time-hk">Học kỳ 1 Năm học 2021</a>
                            <span class="font">(Dữ liệu được cập nhật vào lúc: 21:30 Ngày: 7/3/2022)</span>
                        </div>
                    </div>
                </div>
                <!--End Point Table-->
            </div>
            <!--End infor-member-->
            <div class="print-score">
                <h5>
                    <a href="#">IN ĐIỂM THI</a>
                    <br>
                    <input type="submit" name="xuất file excel" id="export-button"
                           class="sub-button" value="XUẤT FILE EXCEL">
                    </h3>
                    </div>
                    <div class="footer">
                        <table>
                            <tr>
                                <td align="left">
                                    <span class="font style1" style="color: red;">©2009 Học Viện Công Nghệ Bưu Chính Viễn Thông-Cơ Sở Miền Bắc. Quản lý bởi
                                    </span>   
                                </td>
                                <td class="style2">
                                    <i style="font: size 12px;" class="fa">&#xf015;</i>
                                </td>
                                <td>
                                    <a href="#" style="line-height: 2px;">
                                        <span class="font">Trang chủ</span>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style1">
                                    <a href="#">
                                        <span class="font">Thiết kế bởi nhóm 14</span>
                                    </a>
                                </td>
                                <td class="style2">
                                    <i style="font-size: 12px;" class="fa-solid fa-up"></i>
                                </td>
                                <td class="style3">
                                    <a href="#">
                                        <span class="font">Đầu trang</span>
                                    </a>
                                </td>
                                <td class="style">
                                    <a href="#">
                                        <span class="font">About</span>
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </div>
            </div>
    </body>

</html>