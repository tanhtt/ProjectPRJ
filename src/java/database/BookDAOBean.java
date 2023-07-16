/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package database;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Book;

/**
 *
 * @author ADMIN
 */
public class BookDAOBean implements Serializable, DAOInterface<Book> {

    private final String TABLE_NAME = "book";
    private final String getAllSQL = "SELECT * FROM " + TABLE_NAME;
    private final String addNewSQL = "INSERT INTO " + TABLE_NAME + " VALUES (?, ?, ?, ?, ?, ?, ?)";
    private final String deleteSQL = "DELETE FROM " + TABLE_NAME + " WHERE ";
    private final String updateSQL = "UPDATE " + TABLE_NAME + " SET ";

    @Override
    public List<Book> selectAll() {
        List<Book> result = new ArrayList<>();

        try {
            Connection con = JDBCUtil.getConnection();

            String sql = getAllSQL;
            PreparedStatement ps = con.prepareStatement(sql);

            System.out.println(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String name = rs.getString(1);
                int id = rs.getInt(2);
                float price = rs.getFloat(3);
                String author = rs.getString(4);
                String description = rs.getString(5);
                String img = rs.getString(6);
                int idCart = rs.getInt(7);
                CategoryDAOBean cateDAO = new CategoryDAOBean();
                
                result.add(new Book(id,name,price,author,description,img,cateDAO.selectById(idCart)));
            }
            JDBCUtil.closeConnection(con);
        } catch (Exception e) {
        }
        return result;
    }

    @Override
    public int insert(Book t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int delete(Book t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int update(Book t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
