package com.paeis.lguTransactions;

import com.paeis.dbConnection.LGUConnect;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.Objects;
import com.mysql.jdbc.PreparedStatement;
@MultipartConfig
@WebServlet("/updateNewAppInvestigationForm")
public class updateNewAppInvestigationForm extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LGUConnect connect = new LGUConnect();
    private Connection connection;

    {
        try {
            connection = connect.getConnection();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public updateNewAppInvestigationForm() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        String AP_REFERENCE_NO = String.valueOf(request.getParameter("_AP_REFERENCE_NO"));
        String ZONING_INS = getCheckboxtatus(String.valueOf(request.getParameter("ZONING_INS")));
        String FIRE_INS = getCheckboxtatus(String.valueOf(request.getParameter("FIRE_INS")));
        String HS_INS = getCheckboxtatus(String.valueOf(request.getParameter("HS_INS")));
        String BLDG_INS = getCheckboxtatus(String.valueOf(request.getParameter("BLDG_INS")));
        String LABOR_INS = getCheckboxtatus(String.valueOf(request.getParameter("LABOR_INS")));
        String MISC_INS = getCheckboxtatus(String.valueOf(request.getParameter("MISC_INS")));
        String MISC_REMARKS = String.valueOf(request.getParameter("MISC_REMARKS"));
        String chkRectify = getCheckboxtatus(String.valueOf(request.getParameter("Rectify")));
        int numRecMonths = Integer.parseInt(request.getParameter("numMonths"));

        if(Objects.equals(ZONING_INS, "Pass") && Objects.equals(FIRE_INS, "Pass") && Objects.equals(HS_INS, "Pass") && Objects.equals(BLDG_INS, "Pass") && Objects.equals(LABOR_INS, "Pass") && Objects.equals(MISC_INS, "Pass") && !AP_REFERENCE_NO.isEmpty()){
            passedInvestigation(AP_REFERENCE_NO,MISC_REMARKS);
        } else {

            rectifyInvestigation(AP_REFERENCE_NO,ZONING_INS,FIRE_INS,HS_INS,BLDG_INS,LABOR_INS,MISC_INS,MISC_REMARKS);
        }
    }

    private String getCheckboxtatus(String chkbox) {

        if (chkbox.equals("Pass")) {
            return "Pass";
        } else if (chkbox.isEmpty() || chkbox.equals("Fail") || chkbox.equalsIgnoreCase("null")) {
            return "Fail";
        }

        return null;
    }

    private void passedInvestigation(String AP_REFERENCE_NO, String MISC_REMARKS){
        try{

            PreparedStatement passInv = (PreparedStatement) connection.prepareStatement("UPDATE lgu_t_inspections SET ZONING_INS = 'Pass', FIRE_INS = 'Pass' , HEALTH_SANITATION_INS = 'Pass', BUILDING_INS = 'Pass', LABOR_INS = 'Pass', MISC_INS = 'Pass', INS_REMARKS = 'Pass', INS_REMARKS = ? WHERE INS_AP_REFERENCE_NO = ? ");
            passInv.setString(1,MISC_REMARKS);
            passInv.setString(2,AP_REFERENCE_NO);
            passInv.executeUpdate();
            PreparedStatement assessInv = (PreparedStatement) connection.prepareStatement("UPDATE lgu_t_bp_application SET AP_STATUS ='Assess', AP_DIV_CODE_TO = 'DIV-EV', AP_DIV_CODE_FROM = 'DIV-INV', AP_DATE_ACCESSED = CURRENT_TIMESTAMP(), AP_REMARKS = ? WHERE AP_REFERENCE_NO = ?");
            assessInv.setString(1,MISC_REMARKS);
            assessInv.setString(2,AP_REFERENCE_NO);
            assessInv.executeUpdate();
            PreparedStatement assessApplication = (PreparedStatement) connection.prepareStatement("INSERT INTO `lgu_t_assessment`(`AS_OR_NO`, `AS_AP_REFERENCE_NO`, `AS_FEE_SET`, `AS_PERIOD_COVERED`, `AS_DUE_DATE`) VALUES (CONCAT(LPAD(AS_ID,3,'0'),'-',REPLACE(?,'-','')),?,'FS-SET1',CURRENT_DATE(),DATE_ADD(AS_PERIOD_COVERED, INTERVAL 1 YEAR))");
            assessApplication.setString(1,AP_REFERENCE_NO);
            assessApplication.setString(2,AP_REFERENCE_NO);
            assessApplication.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void rectifyInvestigation(String AP_REFERENCE_NO, String ZONING_INS, String FIRE_INS, String HS_INS, String BLDG_INS, String LABOR_INS, String MISC_INS, String MISC_REMARKS){
        try{
            PreparedStatement failIns = (PreparedStatement) connection.prepareStatement("INSERT INTO lgu_t_inspections (INS_AP_REFERENCE_NO, ZONING_INS, FIRE_INS, HEALTH_SANITATION_INS, BUILDING_INS, LABOR_INS, MISC_INS, INS_REMARKS) VALUES (?,?,?,?,?,?,?,?) ");
            failIns.setString(1,AP_REFERENCE_NO);
            failIns.setString(2,ZONING_INS);
            failIns.setString(3,FIRE_INS);
            failIns.setString(4,HS_INS);
            failIns.setString(5,BLDG_INS);
            failIns.setString(6,LABOR_INS);
            failIns.setString(7,MISC_INS);
            failIns.setString(8,MISC_REMARKS);
            failIns.executeUpdate();
            PreparedStatement updateIns = (PreparedStatement) connection.prepareStatement("UPDATE lgu_t_bp_application SET AP_DIV_CODE_FROM = 'DIV-INV', AP_DATE_ACCESSED = CURRENT_TIMESTAMP(), AP_DATE_RE_INS = CURRENT_TIMESTAMP + INTERVAL ? MONTH, AP_REMARKS = ? WHERE AP_REFERENCE_NO = ?");
            updateIns.setString(1,MISC_REMARKS);
            updateIns.setString(2,AP_REFERENCE_NO);
            updateIns.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
