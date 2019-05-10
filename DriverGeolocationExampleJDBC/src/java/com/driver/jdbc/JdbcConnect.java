/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.driver.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Jhon Baron
 */
public class JdbcConnect {

    private final static String USER = "root";
    private final static String PASSWORD = ""; // pass = estudiante
    private final static String URL = "jdbc:mysql://localhost:3308/geolocation"; //port = 3306
    private final static String DRIVER = "com.mysql.jdbc.Driver";

    public static Connection connect() throws ClassNotFoundException, SQLException {
        Class.forName(DRIVER);
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
