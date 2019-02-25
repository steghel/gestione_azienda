/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package miaroba.beans;

import java.sql.*;
import java.io.Serializable;

/**
 *
 * @author alessio_2
 */
public class controlloreBean implements Serializable {

    private String userID;
    private String password;
    private boolean controllato = false;
    private boolean autenticato = false;
    String dbJdbcURL = "jdbc:postgresql://localhost:5432/";
    String dbName = "agenzia0";
    String dbUser = "postgres";
    String dbPassword = "paperino";
    String driverClassName = "org.postgresql.Driver";
    String templateQuery = "SELECT id, pw FROM acc WHERE id = ? AND pw = ?";

    public controlloreBean() {
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String value) {
        userID = value;
        controllato = false;
    }

    public void setPassword(String value) {
        password = value;
        controllato = false;
    }

    public String getPassword() {
        return password;
    }

    public boolean isAutenticato() throws Exception {

        System.out.println("E' stata richiesta una autorizzazione di accesso per userID = "+userID);
        if (!controllato) {
            try {
                // caricamento driver
                                Class.forName(driverClassName);
                // connessione
                Connection con = DriverManager.getConnection(dbJdbcURL + dbName, dbUser, dbPassword);
                PreparedStatement pst = con.prepareStatement(templateQuery);

                pst.setString(1, userID);
                pst.setString(2, password);

                ResultSet rsq = pst.executeQuery();

                //se il ResultSet non e' vuoto,
                //abbiamo trovato in tabella la coppia utente-password
                autenticato = rsq.next();
                controllato = true;

                rsq.close();
                pst.close();
                con.close();

            } catch (Exception e) {
                //se ci sono problemi di qualsiasi tipo, si nega l'autenticazione
                e.printStackTrace(System.out);
                        autenticato = false;
                controllato = false;
                throw(e);
            }
        }
        System.out.println("   - Autorizzazione "+(autenticato?"concessa":"negata"));
        return autenticato;
    }

}
