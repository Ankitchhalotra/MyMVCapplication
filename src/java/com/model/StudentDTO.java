/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model;

import com.service.GetConnection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.util.ArrayList;

/**
 *
 * @author ankit
 */
public class StudentDTO {
    public ArrayList al = new ArrayList();
    
    public boolean insert(StudentDAO sdao){
    boolean b = false;
    try {
                Connection con = GetConnection.getConnection();             
                String sql = "insert into record (Name,FatherName,Degree,Course,Address,Contact,Email,Password) values (?,?,?,?,?,?,?,?)";
                
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1,sdao.getName());
                ps.setString(2, sdao.getFatherName());
                ps.setString(3, sdao.getDegree());
                ps.setString(4, sdao.getCourse());
                ps.setString(5, sdao.getAddress());
                ps.setString(6, sdao.getContact());
                ps.setString(7, sdao.getEmail());
                ps.setString(8, sdao.getPassword());
                
                int i = ps.executeUpdate();
                if (i>0){
                    b=true;}
                else{
                    b=false;}
                
            } catch (Exception e) {}
    return b;
    }
    
    public ArrayList login (StudentDAO sdao){
    try {
    
        Connection con = GetConnection.getConnection();
        String sql = "select * from record where Email=? and password=?";
        
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, sdao.getEmail());
        ps.setString(2, sdao.getPassword());
        
        ResultSet rs = ps.executeQuery();
        
        while(rs.next()){
            String id = rs.getString(1);
            String name = rs.getString(2);
            String fname = rs.getString(3);
            String degree = rs.getString(4);
            String course = rs.getString(5);
            String address = rs.getString(6);
            String contact = rs.getString(7);
            String email = rs.getString(8);
            al.add(id);
            al.add(name);
            al.add(fname);
            al.add(degree);
            al.add(course);
            al.add(address);
            al.add(contact);
            al.add(email);
            return al;
        }
        
    } catch (Exception e){}
    
    return al;
}
    
    public ArrayList updateData(StudentDAO sdao){
        al = null;
        String name = sdao.getName();
        String fname = sdao.getFatherName();
        String degree = sdao.getDegree();
        String course = sdao.getCourse();
        String address = sdao.getAddress();
        String contact = sdao.getContact();
        String email = sdao.getEmail();
        
    try {
    
        Connection con = GetConnection.getConnection();
        String sql = "update record set Name=?,FatherName=?,Degree=?,Course=?,Address=?,Contact=? where email=?";
        
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, name);
        ps.setString(2, fname);
        ps.setString(3, degree);
        ps.setString(4, course);
        ps.setString(5, address);
        ps.setString(6, contact);
        ps.setString(7, email);
        
        int i = ps.executeUpdate();
        if(i>0){
            al.set(1, name);
            al.set(2, fname);
            al.set(3, degree);
            al.set(4, course);
            al.set(5, address);
            al.set(6, contact);
            //System.out.print(al);
            return al;
        }
        
    } catch (Exception e){}
    return al;
    }
    
    public boolean changePassword(StudentDAO sdao){
    boolean b = false;
    try {
    
        Connection con = GetConnection.getConnection();
        String sql = "update record set Password=? where Password=? and email=?";
        
        PreparedStatement ps = con.prepareStatement(sql);
        ps.setString(1, sdao.getNpassword());
        ps.setString(2,sdao.getPassword());
        ps.setString(3, sdao.getEmail());
        
        int i = ps.executeUpdate();
        if (i>0){
            b=true;}
        else {
            b=false;}
        
        
    } catch(Exception e){}
    return b;
    }
}