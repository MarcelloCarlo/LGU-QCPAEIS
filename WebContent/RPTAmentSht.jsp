<%--
  Created by IntelliJ IDEA.
  User: Li Ven
  Date: 24 Mar 2019
  Time: 5:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8"/>
    <link rel="icon" href="extras/logo1.png">
    <title>PAEIS | RPT Assessment Sheet</title>
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
    <link href="assets/css/invoice-print.min.css" rel="stylesheet"/>
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

<!-- begin #page-container -->
<div id="page-container" class="page-without-sidebar ">

    <!-- begin #content -->
    <div id="content" class="content">
        <!-- begin page-header -->
        <div>
            <h1 class="page-header hidden-print">RPT Assessment Sheet</h1>
            <span class="hidden-print">
                <a href="javascript:;" onclick="window.print()" class="btn btn-sm btn-success m-b-10"><i
                        class="fa fa-print m-r-5"></i> Print</a>
            </span>
        </div>

        <!-- begin invoice -->
        <div class="invoice">
            <div class="invoice-company">

            </div>


            <div class="invoice-content">
                <table border="1" style="font-family: Arial; font-size: 10px;" width="100%">
                    <thead>
                    <tr>
                        <center style="font-size: 12px; padding: 10px 0px 10px 0px;">
                            <p style="color: black;margin: 0"> REAL PROPERTY FIELD APPRAISAL & ASSESSMENT SHEET </p>
                            <p style="color: black;margin: 0"> LAND / OTHER IMPROVEMENTS </p>
                        </center>
                        <p style="text-align: right; padding-right: 100px">
                            TRANSACTION CODE
                        </p>
                        <p>
                            ______________
                        </p>
                    </tr>

                    </thead>

                    <tbody>

                    <tr>
                        <td style="width: 50%;">
                            <table border="1" style="margin: -1px 0px -1px -1px;" width="100%">
                                <tbody>
                                <tr>
                                    <td style="width: 100%; padding: 5px 0px 5px 15px;">
                                        ARP No.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:100%; padding: 5px 0px 5px 15px;">
                                        OCT/TCT/CLOA No.
                                    </td>
                                    <%--<td style="width: 50%; padding: 5px 0px 5px 15px;">--%>
                                        <%--Dated:--%>
                                    <%--</td>--%>
                                </tr>
                                <tr>
                                    <td style="width: 100%; padding: 5px 0px 5px 15px;">
                                        <p style="margin: 0">Owner:</p>
                                        <p style="margin: 0">Address:</p>
                                        <p style="margin: 0">Tel No.:</p>
                                    </td>

                                </tr>
                                <tr>
                                    <td style="width: 100%; padding: 5px 0px 5px 15px;">
                                        <p style="margin: 0">Administrator/Beneficial User:</p>
                                        <p style="margin: 0">Address:</p>
                                        <p style="margin: 0">Tel No.:</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100%; padding: 5px 0px 5px 15px;">
                                        <strong>PROPERTY LOCATION</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100%; padding: 5px 0px 5px 15px;">
                                        No./Street:
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100%; padding: 5px 0px 5px 15px;">
                                        Municipality:
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100%; padding: 5px 0px 5px 15px;">
                                        <strong>PROPERTY BOUNDARIES</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100%; padding: 5px 0px 5px 15px;">
                                        North:
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100%; padding: 5px 0px 5px 15px;">
                                        East:
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100%; padding: 5px 0px 5px 15px;">
                                        South:
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100%; padding: 5px 0px 5px 15px;">
                                        West:
                                    </td>
                                </tr>
                                </tbody>
                            </table>

                        </td>
                        <td style="width: 50%;">
                            <table border="1" style="margin: -1px 0px -1px -1px;" width="100%">
                                <tbody>
                                <tr>
                                    <td style="width: 100%; padding: 5px 0px 5px 15px;">
                                        PIN:
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:100%; padding: 5px 0px 5px 15px;">
                                        Survey No.
                                    </td>
                                    <%--<td style="width: 50%; padding: 5px 0px 5px 15px;">--%>
                                    <%--Dated:--%>
                                    <%--</td>--%>
                                </tr>
                                <tr>
                                    <td style="width: 100%; padding: 5px 0px 5px 15px;">
                                        <p style="margin: 0">&nbsp</p>
                                        <p style="margin: 0">&nbsp</p>
                                        <p style="margin: 0">TIN:</p>
                                    </td>

                                </tr>
                                <tr>
                                    <td style="width: 100%; padding: 5px 0px 5px 15px;">
                                        <p style="margin: 0">&nbsp</p>
                                        <p style="margin: 0">&nbsp</p>
                                        <p style="margin: 0">TIN:</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100%; padding: 5px 0px 5px 15px;">
                                        <strong>&nbsp</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100%; padding: 5px 0px 5px 15px;">
                                        Brgy/District:
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100%; padding: 5px 0px 5px 15px;">
                                        Province/City:
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100%; padding: 5px 0px 5px 15px;">
                                        <strong>&nbsp</strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100%; padding: 5px 0px 5px 15px; border-bottom-color: white">
                                        Land Sketch
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100%; padding: 5px 0px 5px 15px; border-bottom-color: white">
                                        &nbsp
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100%; padding: 5px 0px 5px 15px; border-bottom-color: white">
                                        &nbsp
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100%; padding: 5px 0px 5px 15px; text-align: center">
                                        <i>(Not necessarily drawn to scale)</i>
                                    </td>
                                </tr>
                                </tbody>
                            </table>

                        </td>


                    </tr>

                    </tbody>
                </table>
            </div>
            <!-- end invoice -->
        </div>
        <!-- end #content -->

        <!-- begin scroll to top btn -->
        <a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i
                class="fa fa-angle-up"></i></a>
        <!-- end scroll to top btn -->
    </div>
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