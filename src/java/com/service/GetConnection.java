/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.service;

import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author ankit
 */
public class GetConnection {
    public static Connection getConnection(){
    Connection con = null;
        try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet","root","root");
    return con;
    }catch(Exception e){}
        return con;
    }
}
