<%--
  Created by IntelliJ IDEA.
  User: John Carlo Villar
  Date: 08/07/2018
  Time: 21:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="ISO-8859-1">

    <title>Application Form | Business Permit</title>
    <!-- Bootstrap -->
    <link href="build/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="build/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="build/css/nprogress.css" rel="stylesheet">
    <!-- bootstrap-wysiwyg -->
    <link href="build/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
    <!-- Select2 -->
    <link href="build/select2/dist/css/select2.min.css" rel="stylesheet">
    <!-- Switchery -->
    <link href="build/switchery/dist/switchery.min.css" rel="stylesheet">
    <!-- starrr -->
    <link href="build/starrr/dist/starrr.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="build/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <!-- bootstrap-datetimepicker -->
    <link href="build/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="build/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
</head>

<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <!-- page content -->
        <!-- page content -->
        <div class="col-md-12 col-sm-12 col-xs-12">
            <form class="form-horizontal form-label-left" id="applicationFormSingle" novalidate=""
                  data-parsley-validate="" enctype="multipart/form-data" method="POST" action="singleNewBussUpload">
                <div class="x_panel">
                    <div class="x_title">
                        <h4>Business Permit Application Form For Single Propriertorship</h4>
                    </div>
                    <div class="x_content">
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <label class="control-label col-md-3" for="txtNSingBussName">Business Name/Trade Name
                                    <span class="required">*</span>
                                </label>
                                <div class="col-md-7">
                                    <input type="text" id="txtNSingBussName" name="txtNSingBussName" required="required"
                                           class="form-control col-md-7 col-xs-12">
                                </div>
                            </div>
                            <div class="form-group col-xs-12">
                                <label class="control-label col-md-2" for="txtNSingTaxPayLName">Taxpayer's Name
                                    <span class="required">*</span>
                                </label>
                                <div class="col-md-3">
                                    <input type="text" id="txtNSingTaxPayLName" name="txtNSingTaxPayLName"
                                           placeholder="Last Name" required="required"
                                           class="form-control col-md-3 col-sm-3 col-xs-12">
                                </div>
                                <div class="col-md-3">
                                    <input type="text" id="txtNSingTaxPayFName" name="txtNSingTaxPayFName"
                                           placeholder="First Name" required="required"
                                           class="form-control col-md-3 col-sm-3 col-xs-12">
                                </div>
                                <div class="col-md-3">
                                    <input type="text" id="txtNSingTaxPayMName" name="txtNSingTaxPayMName"
                                           placeholder="Middle Name" required="required"
                                           class="form-control col-md-3 col-sm-3 col-xs-12">
                                </div>
                            </div>
                            <div class="col-xs-12">

                                <div class="form-group">
                                    <label>Home Address of Business Owner
                                        <span class="required">*</span>
                                    </label>
                                </div>
                                <div class="form-group col-xs-12">
                                    <div class="col-md-3">
                                        <input type="text" id="txtNSingBussOwnHsNum" name="txtNSingBussOwnHsNum"
                                               placeholder="House No." required="required"
                                               class="form-control col-md-3 col-sm-3 col-xs-12">
                                    </div>
                                    <div class="col-md-3">
                                        <input type="text" id="txtNSingBussOwnStrt" name="txtNSingBussOwnStrt"
                                               placeholder="Street" required="required"
                                               class="form-control col-md-3 col-sm-3 col-xs-12">
                                    </div>
                                    <div class="col-md-3">
                                        <input type="text" id="txtNSingBussOwnBrgy" name="txtNSingBussOwnBrgy"
                                               placeholder="Barangay" required="required"
                                               class="form-control col-md-3 col-sm-3 col-xs-12">
                                    </div>
                                    <div class="col-md-3">
                                        <input type="text" id="txtNSingBussOwnCity" name="txtNSingBussOwnCity"
                                               placeholder="City/Min." required="required"
                                               class="form-control col-md-3 col-sm-3 col-xs-12">
                                    </div>
                                </div>


                            </div>
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>Business Location
                                        <small>(Indicate exact address)</small>
                                        <span class="required">*</span>
                                    </label>
                                </div>
                                <div class="form-group col-xs-12">
                                    <div class="col-md-4">
                                        <input type="text" id="txtNSingBussFlrNo" name="txtNSingBussFlrNo"
                                               placeholder="If within a bldg.., specify stall, room, floor number"
                                               required="required"
                                               class="form-control col-md-4 col-sm-3 col-xs-12">
                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" id="txtNSingBussStrtNo" name="txtNSingBussStrtNo"
                                               placeholder="Street No." required="required"
                                               class="form-control col-md-2 col-sm-3 col-xs-12">
                                    </div>
                                    <div class="col-md-3">
                                        <input type="text" id="txtNSingBussStrtName" name="txtNSingBussStrtName"
                                               placeholder="Street Name" required="required"
                                               class="form-control col-md-3 col-sm-3 col-xs-12">
                                    </div>
                                    <div class="col-md-3">
                                        <input type="text" id="txtNSingBussBrgyName" name="txtNSingBussBrgyName"
                                               placeholder="Barangay" required="required"
                                               class="form-control col-md-3 col-sm-3 col-xs-12">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div>
                                    <div class="form-group col-md-12">
                                        <div class="col-md-4">
                                            <label for="txtNSingPropIdxNo">Property Index No.
                                                <span class="required">*</span>
                                            </label>
                                            <input type="text" id="txtNSingPropIdxNo" name="txtNSingPropIdxNo"
                                                   class="form-control" placeholder=" " required="required">
                                        </div>

                                        <div class="col-md-4">
                                            <label for="txtNSingLotBlckNo">Lot & Block No.
                                                <span class="required">*</span>
                                            </label>
                                            <input type="text" id="txtNSingLotBlckNo" name="txtNSingLotBlckNo"
                                                   class="form-control" placeholder=" " required="required">
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group col-md-10">
                                    <label class="control-label col-md-4" for="txtNSingTaxPayTINNo">Taxpayer's
                                        Identification Number (TIN)
                                        <span class="required">*</span>
                                    </label>
                                    <div class="col-md-6">
                                        <input type="text" id="txtNSingTaxPayTINNo" name="txtNSingTaxPayTINNo"
                                               required="required" class="form-control col-md-6 col-xs-12">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12">
                                <div class="form-group">
                                    <div class="col-md-4">
                                        <label for="txtNSingBussDTIRegNo">DTI (Business Name) Registration Number
                                            <span class="required">*</span>
                                        </label>
                                        <input type="text" id="txtNSingBussDTIRegNo" name="txtNSingBussDTIRegNo"
                                               class="form-control" placeholder=" " required="required">
                                    </div>

                                    <div class="col-md-2">
                                        <label for="dateXS" class="control-label">Date
                                            <span class="required">*</span>
                                        </label>
                                        <div class="input-group date" id="dateXS">
                                            <input type="text" class="form-control" id="dateNSingBussDTIReg"
                                                   name="dateNSingBussDTIReg" required="required"
                                                   data-inputmask="'mask': '99/99/9999'">
                                            <span class="input-group-addon">
                                                            <span class="glyphicon glyphicon-calendar"></span>
                                                        </span>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <div class="col-md-4">
                                        <label for="txtNSingBussTelNo">Telephone Number
                                            <span class="required">*</span>
                                        </label>
                                        <input type="text" id="txtNSingBussTelNo" name="txtNSingBussTelNo"
                                               class="form-control" placeholder=" " required="required">
                                    </div>
                                    <div class="col-md-4">
                                        <label for="txtNSingBussFaxNo">Fax Number
                                            <span class="required">*</span>
                                        </label>
                                        <input type="text" id="txtNSingBussFaxNo" name="txtNSingBussFaxNo"
                                               class="form-control" placeholder=" " required="required">
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="col-xs-12">

                                <div class="form-group">
                                    <div class="col-md-4">
                                        <label for="txtNSingEmpSSSNo">If Employer, Employer's Social Security Number
                                            (SSS)
                                            <span class="required">*</span>
                                        </label>
                                        <input type="text" id="txtNSingEmpSSSNo" name="txtNSingEmpSSSNo"
                                               class="form-control col-md-7 col-sm-12" placeholder=" "
                                               required="required">
                                    </div>
                                    <div class="col-md-4">
                                        <label for="numNSingBussEmpQTY">No of Employees
                                            <span class="required">*</span>
                                        </label>
                                        <input type="number" id="numNSingBussEmpQTY" name="numNSingBussEmpQTY"
                                               class="form-control " placeholder=" " required="required">
                                    </div>

                                </div>

                            </div>
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>Name & Address of Authorized Representative
                                    </label>
                                </div>
                                <div class="form-group col-xs-12">
                                    <div class="col-md-3">
                                        <input type="text" id="txtNSingBussRepLName" name="txtNSingBussRepLName"
                                               placeholder="Last Name" class="form-control col-md-3 col-sm-3 col-xs-12">
                                    </div>
                                    <div class="col-md-2">
                                        <input type="text" id="txtNSingBussRepFName" name="txtNSingBussRepFName"
                                               placeholder="First Name"
                                               class="form-control col-md-2 col-sm-3 col-xs-12">
                                    </div>
                                    <div class="col-md-3">
                                        <input type="text" id="txtNSingBussRepMName" name="txtNSingBussRepMName"
                                               placeholder="Middle Name"
                                               class="form-control col-md-3 col-sm-3 col-xs-12">
                                    </div>
                                    <div class="col-md-4">
                                        <input type="text" id="txtNSingBussRepAddr" name="txtNSingBussRepAddr"
                                               placeholder="Home Address"
                                               class="form-control col-md-4 col-sm-3 col-xs-12">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>If Business Establishment is Rented
                                    </label>
                                </div>
                                <div class="form-group col-xs-12">
                                    <div class="col-md-3">
                                        <label for="dateXS" class="control-label">Since When

                                        </label>
                                        <div class="input-group date" id="dateX2">
                                            <input type="text" class="form-control" id="dateNSingBussEstRentStart"
                                                   name="dateNSingBussEstRentStart"
                                                   data-inputmask="'mask': '99/99/9999'">
                                            <span class="input-group-addon">
                                                            <span class="glyphicon glyphicon-calendar"></span>
                                                        </span>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <label class="control-label">Monthly Rental

                                        </label>
                                        <input type="currency" currencySymbo="PHP" id="numNSingBussEstRentMonth"
                                               name="numNSingBussEstRentMonth"
                                               class="form-control col-md-2 col-sm-3 col-xs-12">
                                    </div>
                                    <div class="col-md-3">
                                        <label class="control-label">From Whom
                                        </label>
                                        <input type="text" id="txtNSingBussEstRentName" name="txtNSingBussEstRentName"
                                               class="form-control col-md-3 col-sm-3 col-xs-12">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group col-md-12">
                                <div class="col-md-4">
                                    <label>
                                        <input type="checkbox" class="" id="chkSignboard"
                                               onclick="document.getElementById('numNSingBussEstSignbrdArea').disabled=!this.checked;">
                                        Using A Signboard
                                    </label>
                                    <input type="text" id="numNSingBussEstSignbrdArea" name="numNSingBussEstSignbrdArea"
                                           class="form-control col-md-3" placeholder="Area of Signboard" disabled>
                                </div>

                            </div>
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label>If You Have Other Existing Businesss Permits
                                    </label>
                                </div>
                                <div class="form-group col-xs-12">
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <th>Existing Kind of Business
                                            </th>
                                            <th>Business Permit No.
                                            </th>
                                            <th>Business Location
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>
                                                <input type="text" id="txtNSingExBuss" name="txtNSingExBuss">
                                            </td>
                                            <td>
                                                <input type="text" id="txtNSingExBussNo" name="txtNSingExBussNo">
                                            </td>
                                            <td>
                                                <input type="text" id="txtNSingExBussLoc" name="txtNSingExBussLoc">
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="text" id="txtNSingExBuss1" name="txtNSingExBuss1">
                                            </td>
                                            <td>
                                                <input type="text" id="txtNSingExBussNo1" name="txtNSingExBussNo1">
                                            </td>
                                            <td>
                                                <input type="text" id="txtNSingExBussLoc1" name="txtNSingExBussLoc1">
                                            </td>


                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="text" id="txtNSingExBuss2" name="txtNSingExBuss2">
                                            </td>
                                            <td>
                                                <input type="text" id="txtNSingExBussNo2" name="txtNSingExBussNo2">
                                            </td>
                                            <td>
                                                <input type="text" id="txtNSingExBussLoc2" name="txtNSingExBussLoc2">
                                            </td>


                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="text" id="txtNSingExBuss3" name="txtNSingExBuss3">
                                            </td>
                                            <td>
                                                <input type="text" id="txtNSingExBussNo3" name="txtNSingExBussNo3">
                                            </td>
                                            <td>
                                                <input type="text" id="txtNSingExBussLoc3" name="txtNSingExBussLoc3">
                                            </td>
                                        </tr>

                                        </tbody>
                                    </table>
                                </div>

                            </div>
                            <div class="col-xs-12">
                                <div class="form-group col-xs-12">
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <th>Kind or Nature of Business/Activity Applied <span
                                                    class="required">*</span>
                                                <br>
                                                <small>Please state nature of business in accordance with QC Business
                                                    Activity Classification Standard
                                                </small>
                                            </th>
                                            <th>Unit
                                                <br>
                                                <small>No./Qty</small>
                                            </th>
                                            <th>Area
                                                <br>
                                                <small>Sq. Mts.</small>
                                            </th>
                                            <th>Capitalization
                                                <br>
                                                <small>Subscribed or Paid-Up</small>
                                                (PHP)
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>
                                                <select class="select2_single form-control" id="txtNSBussAct"
                                                        name="txtNSBussAct" tabindex="-1">
                                                    <option></option>
                                                </select>
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussUnitNo" name="numNSingBussUnitNo">
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussAreaSqmts"
                                                       name="numNSingBussAreaSqmts">
                                            </td>
                                            <td>
                                                <input type="currency" id="numNSingBussCapitalization"
                                                       name="numNSingBussCapitalization">
                                            </td>
                                        </tr>
                                        <%--<tr>
                                            <td>
                                                <input type="text" id="txtNSBussAct1" name="txtNSBussAct1">
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussUnitNo1" name="numNSingBussUnitNo1">
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussAreaSqmts1" name="numNSingBussAreaSqmts1">
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussCapitalization1" name="numNSingBussCapitalization1">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="text" id="txtNSBussAct2" name="txtNSBussAct2">
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussUnitNo2" name="numNSingBussUnitNo2">
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussAreaSqmts2" name="numNSingBussAreaSqmts2">
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussCapitalization2" name="numNSingBussCapitalization2">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="text" id="txtNSBussAct3" name="txtNSBussAct3">
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussUnitNo3" name="numNSingBussUnitNo3">
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussAreaSqmts3" name="numNSingBussAreaSqmts3">
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussCapitalization3" name="numNSingBussCapitalization3">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="text" id="txtNSBussAct4" name="txtNSBussAct4">
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussUnitNo4" name="numNSingBussUnitNo4">
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussAreaSqmts4" name="numNSingBussAreaSqmts4">
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussCapitalization4" name="numNSingBussCapitalization4">>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="text" id="txtNSBussAct5" name="txtNSBussAct5">
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussUnitNo5" name="numNSingBussUnitNo5">
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussAreaSqmts5" name="numNSingBussAreaSqmts5">
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussCapitalization5" name="numNSingBussCapitalization5">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="text" id="txtNSBussAct6" name="txtNSBussAct6">
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussUnitNo6" name="numNSingBussUnitNo6">
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussAreaSqmts6" name="numNSingBussAreaSqmts6">
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussCapitalization6" name="numNSingBussCapitalization6">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input type="text" id="txtNSBussAct7" name="txtNSBussAct7">
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussUnitNo7" name="numNSingBussUnitNo7">
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussAreaSqmts7" name="numNSingBussAreaSqmts7">
                                            </td>
                                            <td>
                                                <input type="text" id="numNSingBussCapitalization7" name="numNSingBussCapitalization7">
                                            </td>
                                        </tr>--%>
                                        </tbody>
                                    </table>
                                    <label>TOTAL: Php </label>
                                </div>

                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="control-label" for="fileNSingLocSketchEst">Locational Sketch of
                                        Business Establishment
                                        <span class="required">*</span>
                                    </label>
                                    <input type="file" name="fileNSingLocSketchEst" id="fileNSingLocSketchEst"
                                           required="required"/>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="fileNSingBrgyClear">Orginal Copy of Barangay
                                        Clearance
                                        <span class="required">*</span>
                                    </label>
                                    <input type="file" name="fileNSingBrgyClear" id="fileNSingBrgyClear"
                                           required="required"/>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="fileNSingDTIreg">DTI Registration File
                                        <span class="required">*</span>
                                    </label>
                                    <input type="file" name="fileNSingDTIreg" id="fileNSingDTIreg" required="required"/>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="fileNSingTitleProp">Title To Property / Tax
                                        Declaration (If Owned) or Contract of Lease (If Renting)
                                        <span class="required">*</span>
                                    </label>
                                    <input type="file" name="fileNSingTitleProp" id="fileNSingTitleProp"
                                           required="required"/>
                                </div>
                                <div class="form-group">
                                    <label>Lessor's Business Permit (If Rented)
                                        <span class="required">*</span>
                                    </label>
                                    <input type="file" name="fileNSingLessorBussPermit" id="fileNSingLessorBussPermit"
                                           required="required"/>
                                </div>
                                <div class="form-group">
                                    <label>Authorization Letter w/ ID (Both Business Owner & Filer)
                                        <span class="required">*</span>
                                    </label>
                                    <input type="file" name="fileNSingAuthLetterID" id="fileNSingAuthLetterID"
                                           required="required"/>
                                </div>
                                <div class="form-group">
                                    <label>Other Required Document/s
                                        <span class="required">*</span>
                                    </label>
                                    <input type="file" name="fileNSingOthers" id="fileNSingOthers" required="required"
                                           multiple="true"/>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="center col-md-7">
                        <button type="submit" class="btn btn-primary">APPLY
                        </button>
                    </div>

                </div>
            </form>
        </div>
        <!-- /page content -->

        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
<!-- jQuery -->
<script src="build/js/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="build/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="build/js/fastclick.js"></script>
<!-- NProgress -->
<script src="build/js/nprogress.js"></script>
<script src="build/iCheck/icheck.min.js"></script>
<!-- NProgress -->
<script src="build/nprogress/nprogress.js"></script>
<!-- bootstrap-progressbar -->
<script src="build/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
<!-- iCheck -->
<script src="build/iCheck/icheck.min.js"></script>
<!-- bootstrap-daterangepicker -->
<script src="build/moment/min/moment.min.js"></script>
<script src="build/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- bootstrap-datetimepicker -->
<script src="build/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
<!-- bootstrap-wysiwyg -->
<script src="build/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
<script src="build/jquery.hotkeys/jquery.hotkeys.js"></script>
<script src="build/google-code-prettify/src/prettify.js"></script>
<!-- jQuery Tags Input -->
<script src="build/jquery.tagsinput/src/jquery.tagsinput.js"></script>
<!-- Switchery -->
<script src="build/switchery/dist/switchery.min.js"></script>
<!-- Select2 -->
<script src="build/select2/dist/js/select2.full.min.js"></script>
<!-- Parsley -->
<script src="build/parsleyjs/dist/parsley.min.js"></script>
<!-- Autosize -->
<script src="build/autosize/dist/autosize.min.js"></script>
<!-- jQuery autocomplete -->
<script src="build/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
<!-- starrr -->
<script src="build/starrr/dist/starrr.js"></script>
<script src="build/sweetalert2/dist/sweetalert2.all.min.js"></script>
<!-- jquery.inputmask -->
<script src="build/jquery.inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
<!-- Custom Theme Scripts -->
<script src="build/js/custom.min.js"></script>
<!-- Initialize datetimepicker -->
<script>
    /*   $(document).ready(function () {
                                                                                                                        var numTxtbx = $('#numNSingBussEstSignbrdArea');
                                                                                                                        //$(numTxtbx).prop('disabled', true);
                                                                                                                        $(numTxtbx).hide();

                                                                                                                        $('#chkSignboard').change(function () {
                                                                                                                            if ($(numTxtbx).prop('disabled')) {
                                                                                                                                $(numTxtbx).prop('disabled', false);
                                                                                                                            } else $(numTxtbx).prop('disabled', true);
                                                                                                                        });

                                                                                                                        $(numTxtbx).click(function () {
                                                                                                                            alert('Enabled!');
                                                                                                                        });
                                                                                                                    }); */
    $('#dateXS').datetimepicker({
        format: 'MM.DD.YYYY'
    });
    $('#dateX2').datetimepicker({
        format: 'MM.DD.YYYY'
    });
</script>
<script>
    $(function () {
        $('#applicationFormSingle').parsley().on('field:validated', function () {
            var ok = $('.parsley-error').length === 0;
            $('.bs-callout-info').toggleClass('hidden', !ok);
            $('.bs-callout-warning').toggleClass('hidden', ok);
        })
            .on('form:submit', function () {
                return false; // Don't submit form for this demo
            });
    });
    $(document).ready(function () {
        $('none').click(function () {
            swal.mixin({
                confirmButtonText: 'Next &rarr;',
                showCancelButton: true,
                progressSteps: ['1', '2']
            }).queue([{
                title: 'Terms & Conditions',
                text: 'Chaining swal2 modals is easy'
            },
                'Confirm?',
            ]).then((result) => {
                if (result.value) {
                    swal({
                        title: 'All done!',
                        html: 'Your Reference Number: <pre><code>',
                        confirmButtonText: 'Done'
                    })
                }
            })
            return false;
        });
    });
    $(document).ready( function() {               // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
        $.get("someservlet", function(responseJson) {                 // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
            var $select = $("#txtNSBussAct");                           // Locate HTML DOM element with ID "someselect".
            $select.find("option").remove();                          // Find all child elements with tag name "option" and remove them (just to prevent duplicate options when button is pressed again).
            $.each(responseJson, function(key, value) {               // Iterate over the JSON object.
                $("<option>").val(key).text(value).appendTo($select); // Create HTML <option> element, set its value with currently iterated key and its text content with currently iterated item and finally append it to the <select>.
            });
        });
    });
</script>
</body>

</html>