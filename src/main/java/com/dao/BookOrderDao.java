/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.dao;

import com.model.BookOrder;
import java.util.List;

/**
 *
 * @author MeGa
 */
public interface BookOrderDao {
    
    public boolean saveOrder(List<BookOrder> bList);
    
    public List<BookOrder> getAllBookByUser(String email);
    
    public List<BookOrder> getAllBookByAdmin();
    
    public BookOrder getBookByOrderId(String orderId);
}
