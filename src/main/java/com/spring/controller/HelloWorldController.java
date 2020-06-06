package com.spring.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.sql.Connection;
import java.sql.DriverManager;

@RestController
public class HelloWorldController {
    @GetMapping("/")
    public String hello(){
        return "hello";
    }

    @GetMapping("/connect")
    public String getConnection()
    {
        String con = null;
        String url = "jdbc:mysql://mysqldb:3306/test_db";
        String username = "root";
        String password = "password";
        String driverClassName = "com.mysql.jdbc.Driver";

        try {
            Class.forName(driverClassName);
            Connection connection = DriverManager.getConnection(url,username,password);
            con = connection.toString();
        }
        catch (Exception e)
        {
            con = e.getMessage();
            return con;
        }
        return con.toString();
    }
}
