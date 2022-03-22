<%-- 
    Document   : index
    Created on : Mar 21, 2022, 10:03:21 PM
    Author     : NgocThanh
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.DangKiHoc"%>
<%@page import="controller.dao.SinhVienDAO"%>
<%@page import="model.SinhVien"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="t" class="controller.dao.TTSV" scope="request" />
<jsp:useBean id="u" class="controller.dao.SinhVienDAO" scope="request" />
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello!</h1>

        <% SinhVien sv = new SinhVien();
            sv.setId(1);
            ArrayList<DangKiHoc> listdkh = t.getListDangKiHoc();
            request.setAttribute("listdkh", listdkh);
        %>


        <c:forEach var="listElement" items="${listdkh}" varStatus="myIndex">
            <table class="view-table">
                <tr class="title-diem">
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
                        <span class="td-15">Thi L2
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
                <tr class="title-hk-diem">
                    <td colspan="18">
                        <span class="font">Học kỳ - Năm học 2018 - 2019</span>
                    </td>
                </tr>
                <div class="row-diem-gr">
                    <c:forEach var="item" items="${listElement}">
                        <tr class="row-diem">
                            <td><span class="font"></span></td>
                            <td><span class="font">5</span></td>
                            <td><span class="font td-3">6</span></td>
                            <td><span class="font">2</span></td>
                            <td><span class="font">10</span></td>
                            <td><span class="font">10</span></td>
                            <td><span class="font">10</span></td>
                            <td><span class="font">0</span></td>
                            <td><span class="font">70</span></td>
                            <td><span class="font">9.0</span></td>
                            <td><span class="font">10.0</span></td>
                            <td><span class="font">9.0</span></td>
                            <td><span class="font"></span></td>
                            <td><span class="font">3.0</span></td>
                            <td><span class="font"></span></td>
                            <td><span class="font">4.9</span></td>
                            <td><span class="font">D</span></td>
                            <td><span class="font">Đạt</span></td>
                        </tr>
                    </c:forEach>    
                </div>
                <div class="row-diemTK-gr">
                    <tr class="row-diemTK">
                        <td colspan="18" align="left">
                            <span class="font" style="width:300px">Điểm trung bình học kỳ hệ 4:</span>
                            <span class="font">2.60</span>
                        </td>
                    </tr>
                    <tr class="row-diemTK">
                        <td colspan="18" align="left">
                            <span class="font" style="width:300px">Điểm trung bình tích lũy(hệ 4):</span>
                            <span class="font">2.60</span>
                        </td>
                    </tr>
                    <tr class="row-diemTK">
                        <td colspan="18" align="left">
                            <span class="font" style="width:300px">Số tín chỉ đạt:</span>
                            <span class="font">10</span>
                        </td>
                    </tr>
                    <tr class="row-diemTK">
                        <td colspan="18" align="left">
                            <span class="font" style="width:300px">Số tín chỉ tích lũy:</span>
                            <span class="font">10</span>
                        </td>
                    </tr>
                </div>
                <!--End Hoc Ky 1 2018-2019 -->


            </table>  
        </c:forEach>

    </body>
</html>
