<%--
  Created by IntelliJ IDEA.
  User: Li Ven
  Date: 9/27/2018
  Time: 4:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8"/>
    <title>PAEIS | Business Nature Configuration</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>

    <!-- ================== BEGIN BASE CSS STYLE ================== -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <link href="assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css" rel="stylesheet"/>
    <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="assets/css/animate.min.css" rel="stylesheet"/>
    <link href="assets/css/style.min.css" rel="stylesheet"/>
    <link href="assets/css/style-responsive.min.css" rel="stylesheet"/>
    <link href="assets/css/theme/default.css" rel="stylesheet" id="theme"/>
    <!-- ================== END BASE CSS STYLE ================== -->

    <!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
    <link href="assets/plugins/DataTables/media/css/dataTables.bootstrap.min.css" rel="stylesheet"/>
    <link href="assets/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css" rel="stylesheet"/>
    <!-- ================== END PAGE LEVEL STYLE ================== -->

    <!-- ================== BEGIN BASE JS ================== -->
    <script src="assets/plugins/pace/pace.min.js"></script>
    <!-- ================== END BASE JS ================== -->
</head>
<body>
<!-- begin #page-loader -->
<div id="page-loader" class="fade in"><span class="spinner"></span></div>
<!-- end #page-loader -->

<jsp:include page="PAEISSAComponent.jsp"></jsp:include>

<!-- begin #page-container -->
<div id="page-container" class="page-container fade page-without-sidebar page-header-fixed page-with-top-menu">

    <!-- begin #content -->
    <div id="content" class="content">
        <!-- begin breadcrumb -->
        <ol class="breadcrumb pull-right">
            <li>Configurables</li>
            <li class="active">Business Nature</li>
        </ol>
        <!-- end breadcrumb -->
        <!-- begin page-header -->
        <h1 class="page-header">Business Nature Configuration</h1>
        <!-- end page-header -->

        <div class="row">
            <div class="col-md-12">
                <!-- begin panel -->
                <div class="panel panel-inverse panel-danger">
                    <div class="panel-heading">
                        <h4 class="panel-title">Business Nature</h4>
                    </div>
                    <div class="panel-body">
                        <%
                            String host = "jdbc:mysql://localhost:3306/lgu_paeis_db";
                            Connection conn = null;
                            Statement stat = null;
                            ResultSet res = null;
                            PreparedStatement stmt = null;
                            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                            // Class.forName("com.mysql.jdbc.Driver").newInstance();
                            conn = DriverManager.getConnection(host, "root", "");
                        %>
                        <form class="form-horizontal" action=" " method="POST">
                            <%
                                //stat = conn.createStatement();
                                //stat = conn.createStatement();
                                String u = request.getParameter("u");
                                int num = Integer.parseInt(u);
                                // String data = "select * from lgu_r_user where U_ID='"+num+"'";
                                PreparedStatement getInfo = conn.prepareStatement("select * from bpls_r_business_nature where BN_ID= ? ");
                                getInfo.setInt(1, num);
                                //res = stat.executeQuery(data);
                                res = getInfo.executeQuery();
                                while (res.next()) {
                            %>
                            <input type="hidden" name="id" value='<%=res.getString("BN_ID")%>'/>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Business Nature</label>
                                <div class="col-md-8">
                                    <input type="text" name="feecode" class="form-control"
                                           value='<%=res.getString("BN_NAME")%>'/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Business Nature Classification</label>
                                <div class="col-md-8">
                                    <select name="bnc" class="form-control"
                                            value='<%=res.getString("BN_CLASSIFICATION")%>'>
                                        <option value="S">Small Scale</option>
                                        <option value="L">Large Scale</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-4 control-label">Business Nature Code</label>
                                <div class="col-md-8">
                                    <input type="text" name="bnrc" class="form-control"
                                           value='<%=res.getString("BNR_CODE")%>'/>
                                </div>
                            </div>

                            <%
                                }
                            %>
                            <div class="modal-footer">
                                <button class="btn btn-sm btn-white" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-sm btn-success">Update</button>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- end panel -->
            </div>
        </div>
    </div>
    <!-- end #content -->

    <!-- begin scroll to top btn -->
    <a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i
            class="fa fa-angle-up"></i></a>
    <!-- end scroll to top btn -->
</div>
<!-- end page container -->

<!-- ================== BEGIN BASE JS ================== -->
<script src="assets/plugins/jquery/jquery-1.9.1.min.js"></script>
<script src="assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
<script src="assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!--[if lt IE 9]>
<script src="assets/crossbrowserjs/html5shiv.js"></script>
<script src="assets/crossbrowserjs/respond.min.js"></script>
<script src="assets/crossbrowserjs/excanvas.min.js"></script>
<![endif]-->
<script src="assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="assets/plugins/jquery-cookie/jquery.cookie.js"></script>
<!-- ================== END BASE JS ================== -->

<!-- ================== BEGIN PAGE LEVEL JS ================== -->
<script src="assets/plugins/DataTables/media/js/jquery.dataTables.js"></script>
<script src="assets/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
<script src="assets/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
<script src="assets/js/table-manage-responsive.demo.min.js"></script>
<script src="assets/js/apps.min.js"></script>
<!-- ================== END PAGE LEVEL JS ================== -->

<!-- ================== BEGIN PAGE LEVEL JS ================== -->
<script src="assets/js/apps.min.js"></script>
<!-- ================== END PAGE LEVEL JS ================== -->

<script>
    $(document).ready(function () {
        App.init();
        TableManageResponsive.init();
    });
</script>
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date();
        a = s.createElement(o),
            m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-53034621-1', 'auto');
    ga('send', 'pageview');

</script>
</body>
</html>

<%
    String a = request.getParameter("id");
    String b = request.getParameter("busnat");
    String c = request.getParameter("bnc");
    String d = request.getParameter("bnrc");
    if (a != null && b != null && c != null && d != null) {
        String query = "update bpls_r_business_nature set BN_NAME=?,  BN_CLASSIFICATION=?, BNR_CODE=? where BN_ID='" + a + "'";
        stmt = conn.prepareStatement(query);
        stmt.setString(1, b);
        stmt.setString(2, c);
        stmt.setString(3, d);
        stmt.executeUpdate();
        response.sendRedirect("PAEISSABusNat.jsp");
    }
%>