<%--
  Created by IntelliJ IDEA.
  User: Li Ven
  Date: 2/12/2019
  Time: 11:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!-- begin #header -->
<div id="header" class="header navbar navbar-default navbar-fixed-top">
    <!-- begin container-fluid -->
    <div class="container-fluid">
        <!-- begin mobile sidebar expand / collapse button -->
        <div class="navbar-header">
            <a class="navbar-brand">
                <span>
                    <img src="extras/icon.png" alt="" style="margin-top: -5px"/>
                </span>
                RPT
            </a>
        </div>
        <!-- end mobile sidebar expand / collapse button -->

        <!-- begin header navigation right -->
        <div class="nav navbar-nav navbar-right">
            <label style="margin-top: 20px;margin-right: 5px">
                <span class="hidden-xs">
                    <%
                        if (null != session.getAttribute("empname")) {
                            out.println(session.getAttribute("empname"));
                        }
                    %>
                </span>
            </label>
        </div>
        <!-- end header navigation right -->
    </div>
    <!-- end container-fluid -->
</div>
<!-- end #header -->

<!-- begin #top-menu -->
<div id="top-menu" class="top-menu">
    <!-- begin top-menu nav -->
    <ul class="nav">
        <li><a href="RPTCTaxBill.jsp"><i class="fa fa-money"></i> <span>Tax Bill</span></a></li>
        <li><a href="RPTCPymnt.jsp"><i class="fa fa-check-square-o"></i> <span>Payment Page</span></a></li>
        <li class="has-sub pull-right">
            <a href="javascript:;">
                <b class="caret pull-right"></b>
                <i class="fa fa-text"></i>
                <span>Account Settings</span>
            </a>
            <ul class="sub-menu">
                <li><a href='PAEISAccMngmt.jsp?Id=<%=session.getAttribute("empid")%>'><span>Change Password</span></a></li>
                <li><a href='LogoutServlet?id=<%=session.getAttribute("empid")%>'><span>Log Out</span></a></li>
            </ul>
        </li>
    </ul>
    <!-- end top-menu nav -->
</div>
<!-- end #top-menu -->
