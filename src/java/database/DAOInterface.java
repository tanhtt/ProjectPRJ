/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package database;

import java.util.List;

/**
 *
 * @author ADMIN
 */
public interface DAOInterface<T> {
    public List<T> selectAll();
    public int insert(T t);
    public int delete(T t);
    public int update(T t);
}
