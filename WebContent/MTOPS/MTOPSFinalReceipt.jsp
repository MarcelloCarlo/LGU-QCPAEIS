<<%@ page import="com.paeis.dbConnection.LGUConnect" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: John Carlo Villar
  Date: 09/23/2018
  Time: 05:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% LGUConnect conX = new LGUConnect();
    try {
        Connection connection = conX.getConnection();
        String refNo = request.getParameter("idNo");
        int tbId = Integer.parseInt(request.getParameter("tbId"));
        int treId = Integer.parseInt(request.getParameter("treId"));
        PreparedStatement getInfo = connection.prepareStatement("SELECT * FROM mtops_t_application_frm APPL JOIN mtops_r_toda TODA ON APPL.TODA = TODA.TODA_ID JOIN mtops_t_assessment MTAS ON APPL.TB_ID = MTAS.TB_ID WHERE APF_ID = ?");
        getInfo.setInt(1, Integer.parseInt(refNo));
        ResultSet rs = getInfo.executeQuery();
        PreparedStatement getFeeList = connection.prepareStatement("SELECT FL.FL_NAME, FLXTB.AMOUNT FROM mtops_t_assessment TB JOIN mtops_t_fl_tb FLXTB ON TB.TB_ID = FLXTB.TB_ID JOIN mtops_r_fee_list FL ON FLXTB.FL_ID = FL.FL_ID WHERE TB.TB_ID = ?");
        getFeeList.setInt(1, tbId);
        String magicBtn = "<input class='hidden' name='tbId' value='" + String.valueOf(tbId) + "'/>";
        String apRefBtn = "<input class='hidden' name='AP_REF' value='" + refNo + "'/>";
        ResultSet rs1 = getFeeList.executeQuery();
        PreparedStatement getEmp = connection.prepareStatement("SELECT * FROM bpls_t_employee_profile");
        ResultSet rs2 = getEmp.executeQuery();
        while (rs.next()) {
%>
<html>
<head>
    <link rel="icon" href="extras/logo1.png">
    <title>BPLS | Treasury</title>

    <meta
            http-equiv="Content-Type"
            content="text/html; charset=UTF-8"
    >
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta
            http-equiv="X-UA-Compatible"
            content="IE=edge"
    >
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1"
    >
    <meta charset="ISO-8859-1">
    <!-- ================== BEGIN BASE CSS STYLE ================== -->
    <%-- <link
             href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
             rel="stylesheet"
     >--%>
    <link
            href="assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css"
            rel="stylesheet"
    />
    <link
            href="assets/plugins/bootstrap/css/bootstrap.min.css"
            rel="stylesheet"
    />
    <link
            href="assets/plugins/font-awesome/css/font-awesome.min.css"
            rel="stylesheet"
    />
    <link
            href="assets/css/animate.min.css"
            rel="stylesheet"
    />
    <link
            href="assets/css/style.min.css"
            rel="stylesheet"
    />
    <link
            href="assets/css/style-responsive.min.css"
            rel="stylesheet"
    />
    <link
            href="assets/css/theme/default.css"
            rel="stylesheet"
            id="theme"
    />
    <!-- ================== END BASE CSS STYLE ================== -->
    <!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
    <link
            href="assets/plugins/DataTables/media/css/dataTables.bootstrap.min.css"
            rel="stylesheet"
    />
    <link
            href="assets/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css"
            rel="stylesheet"
    />
    <!-- ================== END PAGE LEVEL STYLE ================== -->
    <!-- ================== BEGIN BASE JS ================== -->
    <script src="assets/plugins/pace/pace.min.js"></script>
    <!-- ================== END BASE JS ================== -->
    <!-- clippy -->
    <!-- <link href="assets/plugins/smore-inc-clippy.js/build/clippy.css"
        rel="stylesheet"> -->
</head>
<body>
<jsp:include page="BPLSTComponent.jsp"/>
<div id="page-container" class="page-container fade page-without-sidebar page-header-fixed page-with-top-menu">

    <!-- begin #content -->
    <div id="content" class="content">
        <!-- begin breadcrumb -->
        <%--<ol class="breadcrumb pull-right">--%>
        <%--<li><a href="javascript:;">System Admin</a></li>--%>
        <%--<li class="active">User Management</li>--%>
        <%--</ol>--%>
        <!-- end breadcrumb -->
        <!-- begin page-header -->
        <%--<h1 class="page-header">User Management</h1>--%>
        <!-- end page-header -->

        <div class="row">
            <div class="col-12">
                <!-- begin panel -->
                <div class="panel panel-inverse panel-danger">
                    <div class="panel-heading">
                        <h4 class="panel-title">Treasury Processing</h4>
                    </div>
                    <div class="panel-body">
                        <div class="col-12">
                            <div class="form-group">
                                <h6>Name: <label><%out.print(rs.getString("APF_FNAME")+" " + rs.getString("APF_MNAME") +" "+rs.getString("APF_LNAME"));%></label></h6>
                            </div>
                            <div class="form-group">
                                <h6>Location/Address: <label><%out.print(rs.getString("APF_HOUSE_NO") +" "+rs.getString("APF_STREET")+" "+rs.getString("APF_BRGY"));%></label></h6>
                            </div>
                            <div class="form-group">
                                <h6>TODA: <label><%out.print(rs.getString("TODA_NAME"));%></label></h6>
                            </div>
                            <div class="form-group">
                                <h6>Date Billed: <label><%out.print(rs.getString("TB_DATE_BILLED"));%></label></h6>
                            </div>
                        </div>
                        <%}%>
                        <div class="col-12 table-responsive">
                            <table class="table table-condensed" id="feeListtbl">
                                <thead>
                                <tr>
                                    <th>Kind of Fee/Tax</th>
                                    <th>Total (PHP)</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <% while (rs1.next()) {%>
                                <tr>

                                    <td><%out.print(rs1.getString("FL_NAME"));%></td>
                                    <% out.print("<td class='amt'>" + rs1.getString("AMOUNT") + "</td>");%>
                                </tr>
                                <%}%>
                                </tbody>
                            </table>
                            <h4>Total (PHP): <label id="lblTotal"></label></h4>
                        </div>
                        <div class="col-12">
                            <form name="treaNewApplForm" id="treaNewApplForm">
                                <div class="form-group hidden"><label class="col-md-4 control-label">Treasurer: </label>
                                    <div class="col-md-5">
                                        <select name="optTreasurer" class="form-control" data-style="btn-white"
                                                tabindex="-1" value='<%=treId%>'>
                                            <%while (rs2.next()) {%>
                                            <option data-subtext="<%=rs2.getString("EP_JOB_DESC")%>"
                                                    title="<%=rs2.getString("EP_JOB_DESC")%>"
                                                    value="<%=rs2.getInt("EP_ID")%>">
                                                    <%out.print(rs2.getString("EP_FNAME") + " " + rs2.getString("EP_MNAME")+ " " + rs2.getString("EP_LNAME"));%>
                                                    <%} rs2.close();%>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-md-4 control-label">Payment Mode: </label>
                                    <div class="col-md-5">
                                        <select name="optPaymentType" class="form-control" data-style="btn-white"
                                                tabindex="-1">
                                            <option value="CH">Cash</option>
                                            <option value="TW">Treasury Warrant</option>
                                            <option value="CK">Check</option>
                                            <option value="MO">Money Order</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 control-label">Amount: </label>
                                    <div class="col-md-5">
                                        <input type="text" name="txtAmt" id="txtAmt" class="form-control"
                                               placeholder="PHP"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label">Change: </label>
                                    <div class="col-md-5">
                                        <input type="text" name="txtChng" id="txtChng" class="form-control"
                                               placeholder="PHP"/>
                                    </div>
                                </div>
                                <input class="hidden" type="text" id="totalAmt" name="totalAmt">
                                <div class="panel-body">
                                        <%=magicBtn%>
                                        <%=apRefBtn%>
                                    <button class="btn btn-sm btn-white" onclick="goBack()">Close</button>
                                    <button type="button" id="btnTresNewAppl" class="btn btn-sm btn-success">Process
                                    </button>
                            </form>
                        </div>
                    </div>
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

<%
    } catch (SQLException | ClassNotFoundException e) {
        out.print(e);
    }
%>
<!-- ================== BEGIN BASE JS ================== -->
<script src="assets/plugins/jquery/jquery-1.9.1.min.js"></script>
<script src="assets/plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
<script src="assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/plugins/select2/dist/js/select2.min.js"></script>
<script src="assets/plugins/bootstrap-select/bootstrap-select.min.js"></script>
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
<script src="assets/js/divMtopsFtreasury.js"></script>
<script src="assets/plugins/sweetalert2/dist/sweetalert2.all.min.js"></script>
<!-- ================== END PAGE LEVEL JS ================== -->

</body>
</html>
