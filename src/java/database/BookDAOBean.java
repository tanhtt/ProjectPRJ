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
import model.Book;
import model.Cart;
import model.Category;

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

                result.add(new Book(id, name, price, author, description, img, cateDAO.selectById(idCart)));
            }
            JDBCUtil.closeConnection(con);
        } catch (Exception e) {
        }
        return result;
    }

    public Book selectById(int id) {
        Book book = null;
        try {
            // Bước 1: tạo kết nối đến CSDL
            Connection con = JDBCUtil.getConnection();

            // Bước 2: tạo ra đối tượng statement
            String sql = getAllSQL + " WHERE id=?";
            PreparedStatement st = con.prepareStatement(sql);
            st.setInt(1, id);

            // Bước 3: thực thi câu lệnh SQL
            System.out.println(sql);
            ResultSet rs = st.executeQuery();

            // Bước 4:
            while (rs.next()) {
                String name = rs.getString(1);
                float price = rs.getFloat(3);
                String author = rs.getString(4);
                String description = rs.getString(5);
                String img = rs.getString(6);
                int idCart = rs.getInt(7);
                CategoryDAOBean cateDAO = new CategoryDAOBean();

                book = new Book(id, name, price, author, description, img, cateDAO.selectById(idCart));
                break;
            }

            // Bước 5:
            JDBCUtil.closeConnection(con);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return book;
    }

    @Override
    public int insert(Book t) {
        int result = 0;
        try {
            Connection con = JDBCUtil.getConnection();

            String sql = "SET IDENTITY_INSERT book ON; "
                    + "INSERT INTO book (name,id,price,author,description,img,idcart) VALUES (?,?,?,?,?,?,?);"
                    + "SET IDENTITY_INSERT book OFF;";
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, t.getName());
            st.setInt(2, t.getId());
            st.setDouble(3, t.getPrice());
            st.setString(4, t.getAuthor());
            st.setString(5, t.getDescription());
            st.setString(6, t.getImg());
            st.setInt(7, t.getCategory().getId());

            System.out.println(sql);
            result = st.executeUpdate();

            System.out.println(result + " row changed!");
            // Bước 5:
            JDBCUtil.closeConnection(con);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public int delete(Book t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public int deleteById(int t) {
        int result = 0;
        try {
            // Bước 1: tạo kết nối đến CSDL
            Connection con = JDBCUtil.getConnection();

            // Bước 2: tạo ra đối tượng statement
            String sql = "DELETE book "
                    + " WHERE id=?";

            PreparedStatement st = con.prepareStatement(sql);
            st.setInt(1, t);
            // Bước 3: thực thi câu lệnh SQL

            System.out.println(sql);
            result = st.executeUpdate();

            // Bước 4:
            System.out.println("Bạn đã thực thi: " + sql);
            System.out.println("Có " + result + " dòng bị thay đổi!");

            // Bước 5:
            JDBCUtil.closeConnection(con);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return result;
    }

    @Override
    public int update(Book t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public List<Book> getAllBycategory(int id) {
        List<Book> list = new ArrayList<>();
        String sql = getAllSQL + " where idcart=?";

        try {
            Connection con = JDBCUtil.getConnection();
            PreparedStatement st = con.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                String name = rs.getString(1);
                int idBook = rs.getInt(2);
                float price = rs.getFloat(3);
                String author = rs.getString(4);
                String description = rs.getString(5);
                String img = rs.getString(6);
                int idCart = rs.getInt(7);
                CategoryDAOBean cateDAO = new CategoryDAOBean();

                Book book = new Book(idBook, name, price, author, description, img, cateDAO.selectById(idCart));

                list.add(book);
            }
            JDBCUtil.closeConnection(con);
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Book> getAllByName(String name) {
        List<Book> list = new ArrayList<>();
        String sql = "SELECT * FROM book WHERE name LIKE ?"; // Remove the single quotes around the placeholder

        try {
            Connection con = JDBCUtil.getConnection();
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, "%" + name + "%"); // Concatenate the '%' wildcard with the name variable
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                String nameBook = rs.getString(1);
                int idBook = rs.getInt(2);
                float price = rs.getFloat(3);
                String author = rs.getString(4);
                String description = rs.getString(5);
                String img = rs.getString(6);
                int idCart = rs.getInt(7);
                CategoryDAOBean cateDAO = new CategoryDAOBean();

                Book book = new Book(idBook, nameBook, price, author, description, img, cateDAO.selectById(idCart));

                list.add(book);
            }
            JDBCUtil.closeConnection(con);
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Book> getAllByPrice(double min, double max) {
        List<Book> list = new ArrayList<>();
        String sql = "SELECT *\n"
                + "FROM book\n"
                + "WHERE price >= ? AND price <= ?;";

        try {
            Connection con = JDBCUtil.getConnection();
            System.out.println(sql);
            PreparedStatement st = con.prepareStatement(sql);
            st.setDouble(1, min);
            st.setDouble(2, max);

            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                String nameBook = rs.getString(1);
                int idBook = rs.getInt(2);
                float price = rs.getFloat(3);
                String author = rs.getString(4);
                String description = rs.getString(5);
                String img = rs.getString(6);
                int idCart = rs.getInt(7);
                CategoryDAOBean cateDAO = new CategoryDAOBean();

                Book book = new Book(idBook, nameBook, price, author, description, img, cateDAO.selectById(idCart));
                System.out.println(book);

                list.add(book);
            }
            JDBCUtil.closeConnection(con);
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Cart> getCartProducts(ArrayList<Cart> cartList) {
        List<Cart> product = new ArrayList<Cart>();
        Connection con = JDBCUtil.getConnection();
        try {
            if (cartList.size() > 0) {
                for (Cart item : cartList) {
                    String sql = "select name, id ,price, author, description, img"
                            + " from book where id = ?";

                    PreparedStatement st = con.prepareStatement(sql);
                    st.setInt(1, item.getId());
                    ResultSet rs = st.executeQuery();
                    while (rs.next()) {
                        Cart cart = new Cart();
                        cart.setName(rs.getString("name"));
                        cart.setId(rs.getInt("id"));
                        cart.setPrice(rs.getFloat("price") * item.getQuality());
                        cart.setQuality(item.getQuality());
                        cart.setDescription(rs.getString("descrisption"));
                        product.add(cart);
                    }
                }
            }
            JDBCUtil.closeConnection(con);
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return product;
    }

    public List<Book> getFeatureProductById() {
        String sql = "select top 4 b.name,b.id,b.price,b.author,b.description,b.img from book b";
        List<Book> list = new ArrayList<Book>();
        try {
            Connection con = JDBCUtil.getConnection();
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String nameBook = rs.getString(1);
                int idBook = rs.getInt(2);
                float price = rs.getFloat(3);
                String author = rs.getString(4);
                String description = rs.getString(5);
                String img = rs.getString(6);
                int idCart = rs.getInt(7);
                CategoryDAOBean cateDAO = new CategoryDAOBean();

                Book book = new Book(idBook, nameBook, price, author, description, img, cateDAO.selectById(idCart));

                list.add(book);
            }
            JDBCUtil.closeConnection(con);
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public double getTotalPrice(ArrayList<Cart> cartList) {
        double sum = 0;

        try {
            Connection con = JDBCUtil.getConnection();
            if (cartList.size() > 0) {
                for (Cart item : cartList) {
                    String sql = "select * from book where id =?";
                    PreparedStatement st = con.prepareStatement(sql);

                    st.setInt(1, item.getId());

                    System.out.println(sql);
                    ResultSet rs = st.executeQuery();

                    while (rs.next()) {
                        sum += rs.getDouble("price") * item.getQuality();
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sum;
    }

    public static void main(String[] args) {
        BookDAOBean bdb = new BookDAOBean();
        Category cate = new Category(1);
        bdb.insert(new Book(100,"hatrongtan",12,"","","",cate));
    }
}
