package com.paeis.bplsTransactions;

import com.mysql.jdbc.PreparedStatement;
import com.paeis.dbConnection.LGUConnect;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Objects;

@MultipartConfig
@WebServlet("/inspectApplForm")
public class inspectApplForm extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LGUConnect connect = new LGUConnect();
    private Connection connection;
    private String divCode = "", divName = "";
    private int BU_ID;

    {
        try {
            connection = connect.getConnection();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public inspectApplForm() {
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
        String busType = String.valueOf(request.getParameter("busType"));
        String empID = String.valueOf(request.getParameter("empID"));

        if (ZONING_INS.equalsIgnoreCase("Pass") && FIRE_INS.equalsIgnoreCase("Pass") && HS_INS.equalsIgnoreCase("Pass") && BLDG_INS.equalsIgnoreCase("Pass") && LABOR_INS.equalsIgnoreCase("Pass") && MISC_INS.equalsIgnoreCase("Pass") && !AP_REFERENCE_NO.isEmpty() && !busType.isEmpty()) {
            passedInspection(AP_REFERENCE_NO, ZONING_INS, FIRE_INS, HS_INS, BLDG_INS, LABOR_INS, MISC_INS, MISC_REMARKS, busType,empID);
        } else {
            failedInspection(AP_REFERENCE_NO, ZONING_INS, FIRE_INS, HS_INS, BLDG_INS, LABOR_INS, MISC_INS, MISC_REMARKS, busType,empID);
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

    private void passedInspection(String AP_REFERENCE_NO, String ZONING_INS, String FIRE_INS, String HS_INS, String BLDG_INS, String LABOR_INS, String MISC_INS, String MISC_REMARKS, String busType, String empID) {
        if (!busType.equals("L") && !busType.equals("S")) {
            busType = "S";
        }
        try {
            PreparedStatement getBU_ID = (PreparedStatement) connection.prepareStatement("SELECT BU_ID FROM bpls_t_bp_application WHERE AP_REFERENCE_NO = ?");
            getBU_ID.setString(1, AP_REFERENCE_NO);
            ResultSet rsBU_ID = getBU_ID.executeQuery();
            while (rsBU_ID.next()) {
                BU_ID = rsBU_ID.getInt("BU_ID");
            }

            PreparedStatement setBussClass = (PreparedStatement) connection.prepareStatement("UPDATE bpls_t_business SET BU_CLASSIFICATION = ? WHERE BU_ID = ?");
            setBussClass.setString(1, busType);
            setBussClass.setInt(2, BU_ID);
            setBussClass.executeUpdate();

            PreparedStatement passIns = (PreparedStatement) connection.prepareStatement("INSERT INTO bpls_t_inspections (INS_AP_REFERENCE_NO, ZONING_INS, FIRE_INS, HEALTH_SANITATION_INS, BUILDING_INS, LABOR_INS, MISC_INS, INS_REMARKS) VALUES (?,?,?,?,?,?,?,?) ");
            passIns.setString(1, AP_REFERENCE_NO);
            passIns.setString(2, ZONING_INS);
            passIns.setString(3, FIRE_INS);
            passIns.setString(4, HS_INS);
            passIns.setString(5, BLDG_INS);
            passIns.setString(6, LABOR_INS);
            passIns.setString(7, MISC_INS);
            passIns.setString(8, MISC_REMARKS);
            passIns.executeUpdate();

            PreparedStatement evalIns = (PreparedStatement) connection.prepareStatement("UPDATE bpls_t_bp_application SET AP_DIV_CODE_TO = 'DIV-EV', AP_DIV_CODE_FROM = 'DIV-INS', AP_DATE_ACCESSED = CURRENT_TIMESTAMP(), AP_REMARKS = ?, U_INS_ID = ? WHERE AP_REFERENCE_NO = ?");
            evalIns.setString(1, MISC_REMARKS);
            evalIns.setInt(2, Integer.parseInt(empID));
            evalIns.setString(3, AP_REFERENCE_NO);
            evalIns.executeUpdate();

            //Record

            PreparedStatement getAPinfo = (PreparedStatement) connection.prepareStatement("SELECT * FROM bpls_t_bp_application WHERE AP_REFERENCE_NO = ?");
            getAPinfo.setString(1, AP_REFERENCE_NO);
            ResultSet rsAP = getAPinfo.executeQuery();
            while (rsAP.next()) {
                divCode = rsAP.getString("AP_DIV_CODE_TO");
            }

            PreparedStatement getDivName = (PreparedStatement) connection.prepareStatement("SELECT * FROM bpls_r_division WHERE DIV_CODE = ?");
            getDivName.setString(1, divCode);
            ResultSet rsDivName = getDivName.executeQuery();
            while (rsDivName.next()) {
                divName = rsDivName.getString("DIV_NAME");
            }

            PreparedStatement recHist = (PreparedStatement) connection.prepareStatement("INSERT INTO bpls_t_ap_history(TL_AP_NO, TL_DIV_CODE, TL_DIV_NAME,TL_REMARKS) VALUES (?,?,?,?)");
            recHist.setString(1, AP_REFERENCE_NO);
            recHist.setString(2, divCode);
            recHist.setString(3, divName);
            recHist.setString(4, MISC_REMARKS);
            recHist.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void failedInspection(String AP_REFERENCE_NO, String ZONING_INS, String FIRE_INS, String HS_INS, String BLDG_INS, String LABOR_INS, String MISC_INS, String MISC_REMARKS, String busType, String empID) {
        LGUConnect connect = new LGUConnect();
        if (!busType.equals("L") && !busType.equals("S")) {
            busType = "S";
            try {
                Connection connection = connect.getConnection();

                PreparedStatement getBU_ID = (PreparedStatement) connection.prepareStatement("SELECT BU_ID FROM bpls_t_bp_application WHERE AP_REFERENCE_NO = ?");
                getBU_ID.setString(1, AP_REFERENCE_NO);
                ResultSet rsBU_ID = getBU_ID.executeQuery();
                while (rsBU_ID.next()) {
                    BU_ID = rsBU_ID.getInt("BU_ID");
                }

                PreparedStatement setBussClass = (PreparedStatement) connection.prepareStatement("UPDATE bpls_t_business SET BU_CLASSIFICATION = ? WHERE BU_ID = ?");
                setBussClass.setString(1, busType);
                setBussClass.setInt(2, BU_ID);
                setBussClass.executeUpdate();

                PreparedStatement failIns = (PreparedStatement) connection.prepareStatement("INSERT INTO bpls_t_inspections (INS_AP_REFERENCE_NO, ZONING_INS, FIRE_INS, HEALTH_SANITATION_INS, BUILDING_INS, LABOR_INS, MISC_INS, INS_REMARKS) VALUES (?,?,?,?,?,?,?,?) ");
                failIns.setString(1, AP_REFERENCE_NO);
                failIns.setString(2, ZONING_INS);
                failIns.setString(3, FIRE_INS);
                failIns.setString(4, HS_INS);
                failIns.setString(5, BLDG_INS);
                failIns.setString(6, LABOR_INS);
                failIns.setString(7, MISC_INS);
                failIns.setString(8, MISC_REMARKS);
                failIns.executeUpdate();
                PreparedStatement updateIns = (PreparedStatement) connection.prepareStatement("UPDATE bpls_t_bp_application SET AP_DIV_CODE_TO = 'DIV-INV', AP_DIV_CODE_FROM = 'DIV-INS', AP_DATE_ACCESSED = CURRENT_TIMESTAMP(), AP_REMARKS = ?, U_INS_ID = ? WHERE AP_REFERENCE_NO = ?");
                updateIns.setString(1, MISC_REMARKS);
                updateIns.setInt(2,Integer.parseInt(empID));
                updateIns.setString(3, AP_REFERENCE_NO);
                updateIns.executeUpdate();

                //Record

                PreparedStatement getAPinfo = (PreparedStatement) connection.prepareStatement("SELECT * FROM bpls_t_bp_application WHERE AP_REFERENCE_NO = ?");
                getAPinfo.setString(1, AP_REFERENCE_NO);
                ResultSet rsAP = getAPinfo.executeQuery();
                while (rsAP.next()) {
                    divCode = rsAP.getString("AP_DIV_CODE_TO");
                }

                PreparedStatement getDivName = (PreparedStatement) connection.prepareStatement("SELECT * FROM bpls_r_division WHERE DIV_CODE = ?");
                getDivName.setString(1, divCode);
                ResultSet rsDivName = getDivName.executeQuery();
                while (rsDivName.next()) {
                    divName = rsDivName.getString("DIV_NAME");
                }

                PreparedStatement recHist = (PreparedStatement) connection.prepareStatement("INSERT INTO bpls_t_ap_history(TL_AP_NO, TL_DIV_CODE, TL_DIV_NAME,TL_REMARKS) VALUES (?,?,?,?)");
                recHist.setString(1, AP_REFERENCE_NO);
                recHist.setString(2, divCode);
                recHist.setString(3, divName);
                recHist.setString(4, MISC_REMARKS);
                recHist.executeUpdate();

            } catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
    }
}
