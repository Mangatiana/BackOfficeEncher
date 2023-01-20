/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilitaire;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Mahenintsoa
 */
public class Connexion {

    Connection con;

    public Connexion() throws SQLException, ClassNotFoundException {
        try {
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection("jdbc:postgresql://snuffleupagus.db.elephantsql.com:5432/mfsirmro?user=mfsirmro&password=aY0GIbJP6uAiQaePN5x_YJAcNDjupT7U&ssl=false");
            if (con == null) {
                System.out.println("error");
            }
        } catch (ClassNotFoundException | SQLException e) {
            throw e;
        }
    }

    public Connection getCon() {
        return con;
    }

    public void close() {
        try {
            getCon().close();
        } catch (SQLException e) {
        }
    }

}
