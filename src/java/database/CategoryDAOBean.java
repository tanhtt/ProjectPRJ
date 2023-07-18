/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Book;
import model.Category;

/**
 *
 * @author ADMIN
 */
public class CategoryDAOBean implements DAOInterface<Category> {

    private final String TABLE_NAME = "category";

    private final String getAllSQL = "SELECT * FROM " + TABLE_NAME;
    private final String addNewSQL = "INSERT INTO " + TABLE_NAME + " VALUES (?, ?)";
    private final String deleteSQL = "DELETE FROM " + TABLE_NAME + " WHERE ";
    private final String updateSQL = "UPDATE " + TABLE_NAME + " SET ";

    @Override
    public List<Category> selectAll() {
        List<Category> result = new ArrayList<>();

        try {
            Connection con = JDBCUtil.getConnection();

            String sql = getAllSQL;
            PreparedStatement ps = con.prepareStatement(sql);

            System.out.println(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String category = rs.getString(1);
                int idCart = rs.getInt(2);

                result.add(new Category(idCart, category));
            }
            JDBCUtil.closeConnection(con);
        } catch (Exception e) {
        }
        return result;
    }

    public Category selectById(int id) {
        Category result = null;
        try {
            // Bước 1: tạo kết nối đến CSDL
            Connection con = JDBCUtil.getConnection();

            // Bước 2: tạo ra đối tượng statement
            String sql = getAllSQL + " WHERE idCart=?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setInt(1, id);

            // Bước 3: thực thi câu lệnh SQL
            System.out.println(sql);
            ResultSet rs = st.executeQuery();

            // Bước 4:
            while (rs.next()) {
                String category = rs.getString(1);

                result = new Category(id, category);
                break;
            }

            // Bước 5:
            JDBCUtil.closeConnection(con);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public int insert(Category t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int delete(Category t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int update(Category t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
