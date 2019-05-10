/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.driver.jdbc;

import com.driver.model.Driver;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Jhon Baron
 */
public class DriverImpl {

    public static void save(Driver demo) {
        try {
            Connection connect = JdbcConnect.connect();
            PreparedStatement pst = connect.prepareStatement("Insert into "
                    + "driver values(?,?,?,?)");
            pst.setInt(1, demo.getId());
            pst.setString(2, demo.getName());
            pst.setDouble(3, demo.getLatitude());
            pst.setDouble(4, demo.getLongitude());
            pst.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DriverImpl.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static void updateGeolocation(double latitude, double longitude, int id) throws ClassNotFoundException, SQLException {
        Connection connect = JdbcConnect.connect();
        PreparedStatement pst = connect.prepareStatement("update "
                + "driver set latitude =?, longitude=? where iddriver=?");
        pst.setDouble(1, latitude);
        pst.setDouble(2, longitude);
        pst.setInt(3, id);
        pst.executeUpdate();
    }

    public static List<Driver> list() {
        List<Driver> listado = new ArrayList<>();
        try {
            Connection connect = JdbcConnect.connect();
            PreparedStatement pst = connect.prepareStatement("Select * "
                    + "from users order by 1");
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Driver c = new Driver();
//                c.setId(rs.getInt(1));
//                c.setName(rs.getString(2));
//                c.setLastName(rs.getString(3));
//                c.setBirthDay(rs.getDate(4));
//                c.setUsername(rs.getString(1));
//                c.setPassword(rs.getString(2));
                listado.add(c);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DriverImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listado;
    }
}
