/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import com.sun.jdi.connect.spi.Connection;
import context.DBContext;
import entity.Account;
import entity.Brand;
import entity.Cart;
import entity.Item;
import entity.Order;
import entity.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hoangvan
 */
public class DAO extends DBContext {

    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select*from product";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            rs = st.executeQuery();

            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public List<Brand> getAllBrand() {
        List<Brand> list = new ArrayList<>();
        String query = "select*from brand";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            rs = st.executeQuery();

            while (rs.next()) {
                list.add(new Brand(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getLast() {
        String query = "select top 1 * from product order by id desc";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            rs = st.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public List<Product> getProductByBrandId(String id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "where BrandID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, id);
            rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public Product getProductById(String bid) {

        String query = "select * from product\n"
                + "where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, bid);
            rs = st.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public List<Product> getProductByName(String name) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "where [name] like ?";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, "%" + name + "%");
            rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public Account login(String email, String pass) {
        String query = "select * from account \n"
                + "where email = ?\n"
                + "and pass= ?";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, email);
            st.setString(2, pass);
            rs = st.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccountExist(String email) {
        String query = "select * from account \n"
                + "where email = ?\n";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, email);
            rs = st.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void sigup(String email, String pass) {
        String query = "INSERT INTO account values (?, ?, 0, 0)";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, email);
            st.setString(2, pass);
            st.executeUpdate();
        } catch (Exception e) {

        }
    }

    public List<Product> getProductBySellID(int id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "where sell_ID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setInt(1, id);
            rs = st.executeQuery();

            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public void DeleteProduct(String id) {
        String query = "delete from product \n"
                + "where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, id);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void InsertProduct(String name, String image, String price,
            String title, String des, String brand, int sid) {
        String query = "INSERT INTO product\n"
                + "values (?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, name);
            st.setString(2, image);
            st.setString(3, price);
            st.setString(4, title);
            st.setString(5, des);
            st.setString(6, brand);
            st.setInt(7, sid);

            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void EditProduct(String name, String image, String price,
            String title, String des, String brand, String pid) {
        String query = " update product\n"
                + " set [name] = ?,\n"
                + " [image] = ?,\n"
                + " price = ?,\n"
                + " title = ?,\n"
                + " [description] = ?,\n"
                + " brandID = ?\n"
                + " where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, name);
            st.setString(2, image);
            st.setString(3, price);
            st.setString(4, title);
            st.setString(5, des);
            st.setString(6, brand);
            st.setString(7, pid);

            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public int getNumberPage() {
        String query = " select count(*) from product";
         try {
            PreparedStatement st = connection.prepareStatement(query);
            rs = st.executeQuery();
            while (rs.next()) {
                int total = rs.getInt(1);
                int countpage = 0;
                countpage = total/8;
                if(total % 8 != 0) {
                    countpage++;
                }
                return countpage;
            }
        } catch (Exception e) {

        }
         return 0;
    }
            
    public List<Product> getPaging(int index) {
        List<Product> list = new ArrayList<>();
        String query = " select * from product\n" +
" order by id\n" +
" OFFSET ? ROWS\n" +
" FETCH FIRST 8 rows only;";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setInt(1, (index - 1)*8);
            rs = st.executeQuery();

            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public void addOrder(Account c, Cart cart) {
        LocalDate curDate = LocalDate.now();
        String date = curDate.toString();
        try{
            String query = "insert into [order] values(?,?,?)";
        PreparedStatement st = connection.prepareStatement(query);
        st.setString(1, date);
        st.setInt(2, c.getuID());
        st.setDouble(3, cart.getTotalMoney());
            st.executeUpdate();
            //get order id
            String query1="select top 1 id from [order] order by id desc";
            PreparedStatement st1 = connection.prepareStatement(query1);
            rs=st1.executeQuery();
            //add table order detail
            if(rs.next()) {
                int oid=rs.getInt("id");
                for(Item i: cart.getItems()) {
                    String query2="insert into order_detail "
                            + "values (?,?,?,?)";
                    PreparedStatement st2 = connection.prepareStatement(query2);
                    st2.setInt(1, oid);
                    st2.setInt(2, i.getProduct().getId());
                    st2.setInt(3,i.getQuantity());
                    st2.setDouble(4, i.getPrice());
                    st2.executeUpdate();
                    
                }
            }
            //update quantity
            String query3="update product"
                    + "set quantity=quantity=? "
                    + "where id = ?";
            PreparedStatement st3 = connection.prepareStatement(query3);
            for(Item i:cart.getItems()) {
                st3.setInt(1, i.getQuantity());
                st3.setInt(2, i.getProduct().getId());
                st3.executeUpdate();
            }
        } catch (Exception e) {

        }
    }
    
    public List<Order> getAllOrder() {
         List<Order> list = new ArrayList<>();
        String query = "select*from [order]";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            rs = st.executeQuery();

            while (rs.next()) {
                list.add(new Order(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getInt(4)));
            }
        } catch (Exception e) {

        }
        return list;
    }
    
    public static void main(String[] args) {
        DAO dao = new DAO();
        
//        dao.InsertProduct("a", "https://www.dior.com/dw/image/v2/BGXS_PRD/on/demandware.static/-/Sites-master_dior/default/dw69c481c1/Y0996414/Y0996414_C099641476_E03_ZHC.jpg?sw=3000&sh=2000", "330", "a", "a", "a", 1);
//        List<Product> list = dao.getProductBySellID(1);
//        for (Product o : list) {
//            System.out.println(o.toString());
//        }

        System.out.println(dao.getNumberPage());
    }
}
