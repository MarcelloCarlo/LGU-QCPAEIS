<%@ page import="com.paeis.dbConnection.LGUConnect" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: Li Ven
  Date: 10/10/2018
  Time: 2:16 PM
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
    <title>Revenue | Dashboard</title>
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
    <link href="assets/plugins/jquery-jvectormap/jquery-jvectormap.css" rel="stylesheet"/>
    <link href="assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.css" rel="stylesheet"/>
    <link href="assets/plugins/gritter/css/jquery.gritter.css" rel="stylesheet"/>
    <!-- ================== END PAGE LEVEL STYLE ================== -->

    <!-- ================== BEGIN BASE JS ================== -->
    <script src="assets/plugins/pace/pace.min.js"></script>
    <!-- ================== END BASE JS ================== -->
</head>
<body>
<!-- begin #page-loader -->
<div id="page-loader" class="fade in"><span class="spinner"></span></div>
<!-- end #page-loader -->

<jsp:include page="REVDashboardComponent.jsp"></jsp:include>

<!-- begin #page-container -->
<div id="page-container" class="page-container fade page-without-sidebar page-header-fixed page-with-top-menu">

    <!-- begin #content -->
    <div id="content" class="content">
        <!-- begin breadcrumb -->
        <ol class="breadcrumb pull-right">
            <li><a href="javascript:;">Home</a></li>
            <li class="active">Dashboard</li>
        </ol>
        <!-- end breadcrumb -->
        <!-- begin page-header -->
        <h1 class="page-header">Dashboard
            <small>header small text goes here...</small>
        </h1>
        <!-- end page-header -->

        <!-- begin row -->
        <div class="row">
            <!-- begin col-3 -->
            <div class="col-md-3 col-sm-6">
                <div class="widget widget-stats bg-green">
                    <div class="stats-icon"><i class="fa fa-desktop"></i></div>
                    <div class="stats-info">
                        <div> <p>Business Permit</p></div>
                        <div>
                            <h4>Pending:
                                <%

                                    LGUConnect con = new LGUConnect();
                                    Connection con1 = con.getConnection();
                                    Statement aa = con1.createStatement();
                                    ResultSet ss = aa.executeQuery("SELECT COUNT(*) AS C FROM `bpls_t_bp_application` WHERE AP_STATUS = 'Pending' ");
                                    while (ss.next())
                                    {
                                    out.print(ss.getString("C"));
                                    }
                                %>
                            </h4>
                        </div>
                        <div>
                            <h4>Released:
                                <%

                                    LGUConnect conn = new LGUConnect();
                                    Connection con2 = conn.getConnection();
                                    Statement bb = con2.createStatement();
                                    ResultSet tt = bb.executeQuery("SELECT COUNT(*) AS A FROM `bpls_t_bp_application`");
                                    while (tt.next())
                                    {
                                        out.print(tt.getString("A"));
                                    }
                                %>
                            </h4>
                        </div>
                        <div>
                            <h4>Terminated:
                                <%

                                    LGUConnect conm = new LGUConnect();
                                    Connection con3 = conm.getConnection();
                                    Statement cc = con3.createStatement();
                                    ResultSet uu = cc.executeQuery("SELECT COUNT(*) AS B FROM `bpls_t_bp_application` WHERE AP_STATUS = 'Terminated' ");
                                    while (uu.next())
                                    {
                                        out.print(uu.getString("B"));
                                    }
                                %>
                            </h4>
                        </div>
                    </div>
                    <div class="stats-link">
                        <a href="javascript:;">View Detail <i class="fa fa-arrow-circle-o-right"></i></a>
                    </div>
                </div>
            </div>
            <!-- end col-3 -->
            <!-- begin col-3 -->
            <div class="col-md-3 col-sm-6">
                <div class="widget widget-stats bg-blue">
                    <div class="stats-icon"><i class="fa fa-chain-broken"></i></div>
                    <div class="stats-info">
                        <div>
                            <p>MTOPS</p>
                        </div>
                        <div>
                            <h4>Pending:
                                <%

                                    LGUConnect conl = new LGUConnect();
                                    Connection con4 = conl.getConnection();
                                    Statement dd = con4.createStatement();
                                    ResultSet vv = dd.executeQuery("SELECT COUNT(*) AS D FROM `mtops_t_application_frm` WHERE APF_STATUS = 'Pending' ");
                                    while (vv.next())
                                    {
                                        out.print(vv.getString("D"));
                                    }
                                %>
                            </h4>
                        </div>
                        <div>
                            <h4>Released:
                                <%

                                    LGUConnect cono = new LGUConnect();
                                    Connection con5 = cono.getConnection();
                                    Statement ee = con5.createStatement();
                                    ResultSet ww = ee.executeQuery("SELECT COUNT(*) AS E FROM `mtops_t_permit`");
                                    while (ww.next())
                                    {
                                        out.print(ww.getString("E"));
                                    }
                                %>
                            </h4>
                        </div>
                        <div>
                            <h4>Terminated:
                                <%

                                    LGUConnect conp = new LGUConnect();
                                    Connection con6 = conp.getConnection();
                                    Statement ff = con6.createStatement();
                                    ResultSet xx = ff.executeQuery("SELECT COUNT(*) AS F FROM `mtops_t_application_frm` WHERE APF_STATUS = 'Terminated' ");
                                    while (xx.next())
                                    {
                                        out.print(xx.getString("F"));
                                    }
                                %>
                            </h4>
                        </div>
                    </div>
                    <div class="stats-link">
                        <a href="javascript:;">View Detail <i class="fa fa-arrow-circle-o-right"></i></a>
                    </div>
                </div>
            </div>
            <!-- end col-3 -->
            <!-- begin col-3 -->
            <div class="col-md-3 col-sm-6">
                <div class="widget widget-stats bg-purple">
                    <div class="stats-icon"><i class="fa fa-users"></i></div>
                    <div class="stats-info">
                        <div> <p>Revenue</p></div>
                        <div>
                            <h4>BPLS:
                                <%

                                    LGUConnect conq = new LGUConnect();
                                    Connection con7 = conq.getConnection();
                                    Statement gg = con7.createStatement();
                                    ResultSet yy = gg.executeQuery("SELECT SUM(OR_TOTAL_AMOUNT) AS G FROM `bpls_t_official_receipt`");
                                    while (yy.next())
                                    {
                                        out.print(yy.getString("G"));
                                    }
                                %>
                            </h4>
                        </div>
                        <div>
                            <h4>MTOPS:
                                <%

                                    LGUConnect conr = new LGUConnect();
                                    Connection con8 = conr.getConnection();
                                    Statement hh = con8.createStatement();
                                    ResultSet zz = hh.executeQuery("SELECT SUM(OR_TOTAL_AMOUNT) AS H FROM `mtops_t_official_receipt`");
                                    while (zz.next())
                                    {
                                        out.print(zz.getString("H"));
                                    }
                                %>
                            </h4>
                        </div>
                        <div>
                            <h4>RPT:
                                <%

                                    LGUConnect cons = new LGUConnect();
                                    Connection con9 = cons.getConnection();
                                    Statement ii = con9.createStatement();
                                    ResultSet jj = ii.executeQuery("SELECT SUM(OR_TOTAL_AMOUNT) AS I FROM `mtops_t_official_receipt`");
                                    while (jj.next())
                                    {
                                        out.print(jj.getString("I"));
                                    }
                                %>

                            </h4>
                        </div>
                    </div>
                    <div class="stats-link">
                        <a href="javascript:;">View Detail <i class="fa fa-arrow-circle-o-right"></i></a>
                    </div>
                </div>
            </div>
            <!-- end col-3 -->
            <!-- begin col-3 -->
            <div class="col-md-3 col-sm-6">
                <div class="widget widget-stats bg-red">
                    <div class="stats-icon"><i class="fa fa-clock-o"></i></div>
                    <div class="stats-info">
                        <h4>AVG TIME ON SITE</h4>
                        <p>00:12:23</p>
                    </div>
                    <div class="stats-link">
                        <a href="javascript:;">View Detail <i class="fa fa-arrow-circle-o-right"></i></a>
                    </div>
                </div>
            </div>
            <!-- end col-3 -->
        </div>
        <!-- end row -->

    </div>
    <!-- end #content -->

    <!-- begin scroll to top btn -->
    <a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i
            class="fa fa-angle-up"></i></a>
    <!-- end scroll to top btn -->
</div>
<!-- end page container -->
<script src="extras/highcharts/code/highcharts.js"></script>
<script src="extras/highcharts/code/modules/data.js"></script>
<script src="extras/highcharts/code/modules/drilldown.js"></script>

<div id="lgu_rev" style="min-width: 310px; height: 400px; margin: 0 auto"></div>


<script type="text/javascript">
    var defaultTitle = "Yearly Revenue";
    var drilldownTitle = "Monthly Revenue as of ";

    // Create the chart
    var chart = Highcharts.chart('lgu_rev', {
        chart: {
            type: 'line',
            events: {
                drilldown: function(e) {
                    chart.setTitle({
                        text: drilldownTitle + e.point.name
                    });
                },
                drillup: function(e) {
                    chart.setTitle({
                        text: defaultTitle
                    });
                }
            }
        },
        title: {
            text: defaultTitle
        },
        subtitle: {
            text: 'Click the point to show the monthly revenue of the selected year.'
        },
        xAxis: {
            type: 'category'
        },
        yAxis: {
            title: {
                text: 'Total yearly revenue'
            }

        },
        legend: {
            enabled: false
        },
        plotOptions: {
            series: {
                borderWidth: 0,
                dataLabels: {
                    enabled: true   ,
                    format: '{point.y:.1f}%'
                }
            }
        },

        tooltip: {
            headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
            pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}%</b> of total<br/>'
        },

        "series": [
            {
                "name": "Business Permits",
                "colorByPoint": false,
                "data": [
                    {
                        "name": "2017",
                        "y": 62.74,
                        "drilldown": "2017"
                    },
                    {
                        "name": "2018",
                        "y": 10.57,
                        "drilldown": "2018"
                    }
                ]
            },
            {
                "name": "Real Property Tax",
                "colorByPoint": false,
                "data": [
                    {
                        "name": "2017",
                        "y": 42.74,
                        "drilldown": "2017"
                    },
                    {
                        "name": "2018",
                        "y": 78.57,
                        "drilldown": "2018"
                    }
                ]
            },
            {
                "name": "MTOPS",
                "colorByPoint": false,
                "data": [
                    {
                        "name": "2017",
                        "y": 50.74,
                        "drilldown": "2017"
                    },
                    {
                        "name": "2018",
                        "y": 60.57,
                        "drilldown": "2018"
                    }
                ]
            }

        ],
        "drilldown": {
            "series": [
                {
                    "name": "2017, Business Permits",
                    "id": "2017",
                    "data": [
                        [
                            "January",
                            70.0
                        ],
                        [
                            "February",
                            40.0
                        ],
                        [
                            "March",
                            80.0
                        ],

                        [
                            "April",
                            60.0
                        ],
                        [
                            "May",
                            30.0
                        ],
                        [
                            "June",
                            40.0
                        ],
                        [
                            "July",
                            70.0
                        ],
                        [
                            "August",
                            75.0
                        ],
                        [
                            "September",
                            87.0
                        ],
                        [
                            "October",
                            93.0
                        ],
                        [
                            "November",
                            90.0
                        ],
                        [
                            "December",
                            94.0
                        ]
                    ]
                },
                {
                    "name": "2018, Business Permits",
                    "id": "2018",
                    "data": [
                        [
                            "January",
                            39.0
                        ],
                        [
                            "February",
                            40.0
                        ],
                        [
                            "March",
                            80.0
                        ],
                        [
                            "April",
                            60.0
                        ],
                        [
                            "May",
                            30.0
                        ],
                        [
                            "June",
                            40.0
                        ],
                        [
                            "July",
                            70.0
                        ],
                        [
                            "August",
                            63.0
                        ],
                        [
                            "September",
                            87.0
                        ],
                        [
                            "October",
                            93.0
                        ],
                        [
                            "November",
                            90.0
                        ],
                        [
                            "December",
                            85.0
                        ]
                    ]
                }
            ]
        }
    });
</script>

<jsp:include page="REVDashboardFooter.jsp"></jsp:include>

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
<script src="assets/plugins/flot/jquery.flot.min.js"></script>
<script src="assets/plugins/flot/jquery.flot.time.min.js"></script>
<script src="assets/plugins/flot/jquery.flot.resize.min.js"></script>
<script src="assets/plugins/flot/jquery.flot.pie.min.js"></script>
<script src="assets/plugins/sparkline/jquery.sparkline.js"></script>
<script src="assets/plugins/jquery-jvectormap/jquery-jvectormap.min.js"></script>
<script src="assets/plugins/jquery-jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="assets/js/dashboard.min.js"></script>
<!-- ================== END PAGE LEVEL JS ================== -->

<!-- ================== BEGIN PAGE LEVEL JS ================== -->
<script src="assets/js/apps.min.js"></script>
<!-- ================== END PAGE LEVEL JS ================== -->

<script>
    $(document).ready(function () {
        App.init();
        TableManageResponsive.init();
        Dashboard.init();
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