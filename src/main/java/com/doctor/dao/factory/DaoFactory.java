package com.doctor.dao.factory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.doctor.dao.implementation.AuthDaoImpl;
import com.doctor.dao.implementation.MedecinDaoImpl;
import com.doctor.dao.implementation.PatientDaoImpl;


public class DaoFactory {
	private String url;
    private String username;
    private String password;

    DaoFactory(String url, String username, String password) {
        this.url = url;
        this.username = username;
        this.password = password;
    }

    public static DaoFactory getInstance() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {

        }

        DaoFactory instance = new DaoFactory(
                "jdbc:mysql://localhost:3306/doctor", "kdcl", "kdcl");
        return instance;
    }

    public Connection getConnection() throws SQLException {
        return DriverManager.getConnection(url, username, password);
    }

    // Récupération du Dao
    public AuthDaoImpl getAuhtDao() {
        return new AuthDaoImpl(this);
    }
    
    public PatientDaoImpl getPatientDao() {
    	return new PatientDaoImpl(this);
    }
    
    public MedecinDaoImpl getMedecinDao() {
    	return new MedecinDaoImpl(this);
    }
}
