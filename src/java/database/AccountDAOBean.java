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
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Account;

/**
 *
 * @author ADMIN
 */
public class AccountDAOBean implements DAOInterface<Account>, Serializable {

    private final String TABLE_NAME = "account";

    private final String getAllSQL = "SELECT * FROM " + TABLE_NAME;
    private final String addNewSQL = "INSERT INTO " + TABLE_NAME + " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
    private final String deleteSQL = "DELETE FROM " + TABLE_NAME + " WHERE ";
    private final String updateSQL = "UPDATE " + TABLE_NAME + " SET ";

    @Override
    public List<Account> selectAll() {
        List<Account> result = new ArrayList<>();

        try {
            Connection con = JDBCUtil.getConnection();

            String sql = getAllSQL;
            PreparedStatement ps = con.prepareStatement(sql);

            System.out.println(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                String username = rs.getString(1);
                String password = rs.getString(2);
                boolean isUser = rs.getInt(3) == 0 ? false : true;
                String email = rs.getString(4);
                String address = rs.getString(5);
                Date dob = rs.getDate(6);
                String tel = rs.getString(7);
                String srcAvatar = rs.getString(8);
                String fullname = rs.getString(9);
                String gender = rs.getString(10);
                String deliveryAddress = rs.getString(11);

                Account account = new Account(username, password, isUser, fullname, gender, address, deliveryAddress, dob, tel, email, srcAvatar);

                result.add(account);
            }
            JDBCUtil.closeConnection(con);
        } catch (Exception e) {
        }
        return result;
    }
    
    public Account selectByUsername(Account t) {
        Account account = null;
        try {
            // Bước 1: tạo kết nối đến CSDL
            Connection con = JDBCUtil.getConnection();

            // Bước 2: tạo ra đối tượng statement
            String sql = getAllSQL+" WHERE username=?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, t.getUsername());

            // Bước 3: thực thi câu lệnh SQL
            System.out.println(sql);
            ResultSet rs = st.executeQuery();

            // Bước 4:
            while (rs.next()) {
                String username = rs.getString(1);
                String password = rs.getString(2);
                boolean isUser = rs.getInt(3) == 0 ? false : true;
                String email = rs.getString(4);
                String address = rs.getString(5);
                Date dob = rs.getDate(6);
                String tel = rs.getString(7);
                String srcAvatar = rs.getString(8);
                String fullname = rs.getString(9);
                String gender = rs.getString(10);
                String deliveryAddress = rs.getString(11);

                account = new Account(username, password, isUser, fullname, gender, address, deliveryAddress, dob, tel, email, srcAvatar);
                break;
            }

            // Bước 5:
            JDBCUtil.closeConnection(con);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return account;
    }
    
    public boolean checkUsername(String t) {
        boolean result = false;
        try {
            Connection con = JDBCUtil.getConnection();

            String sql = getAllSQL+" where username=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, t);

            System.out.println(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                result = true;
            }
            JDBCUtil.closeConnection(con);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public int insert(Account t) {
        int kq = 0;
        Connection con = JDBCUtil.getConnection();
        String sql = addNewSQL;
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, t.getUsername());
            st.setString(2, t.getPassword());
            st.setInt(3, t.isIsUser()?1:0);
            st.setString(4, t.getEmail());
            st.setString(5, t.getAddress());
            st.setDate(6, t.getDateOfBirth());
            st.setString(7, t.getTel());
            st.setString(8, t.getSrcAvatar());
            st.setString(9, t.getFullname());
            st.setString(10, t.getGender());
            st.setString(11, t.getDeliveryAddress());

            kq = st.executeUpdate();

            System.out.println("Bạn đã thực thi: " + sql);
            System.out.println("Có " + kq + " dòng bị thay đổi!");

            con.close();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return kq;
    }

    @Override
    public int delete(Account t) {
        int kq = 0;
        Connection con = JDBCUtil.getConnection();
        String sql = deleteSQL + " username = ?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, t.getUsername());
            kq = st.executeUpdate();
            
            System.out.println("You excuted: "+sql);
            System.out.println("There is " + kq + " row changed!");
            
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return kq;
    }

    @Override
    public int update(Account t) {
        int count = 0;
        try {
            Connection con = JDBCUtil.getConnection();

            String sql = updateSQL
                    + " pass=?"
                    + ", isUser=?"
                    + ", email=?"
                    + ", address=?"
                    + ", dob=?"
                    + ", tel=?"
                    + ", srcAvatar=?"
                    + ", fullname=?"
                    + ", gender=?"
                    + ", deliveryAddress=?"
                    + " WHERE username=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(11, t.getUsername());
            ps.setString(1, t.getPassword());
            ps.setInt(2, t.isIsUser()?1:0);
            ps.setString(3, t.getEmail());
            ps.setString(4, t.getAddress());
            ps.setDate(5, t.getDateOfBirth());
            ps.setString(6, t.getTel());
            ps.setString(7, t.getSrcAvatar());
            ps.setString(8, t.getFullname());
            ps.setString(9, t.getGender());
            ps.setString(10, t.getDeliveryAddress());            

            System.out.println(sql);
            count = ps.executeUpdate();

            System.out.println("You excuted: " + sql);
            System.out.println("There is " + count + " row changed!");

            JDBCUtil.closeConnection(con);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;
    }

    public static void main(String[] args) {
        AccountDAOBean adb = new AccountDAOBean();
//        List<Account> list = adb.selectAll();
//        for(Account ac : list){
//            System.out.println(ac.toString());
//        }
//        adb.delete(new Account("user9","1234",true,"","",null,"1",null,"","",""));
//        adb.update(new Account("user8","1234",true,"ha","hihi","hanoi","1",null,"12345","hihi@",""));
        adb.insert(new Account("anne","1234",true,"ha","hihi","hanoi","1",null,"12345","hihi@",""));
    }
}
