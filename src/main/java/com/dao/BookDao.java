/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.dao;

import com.model.Books;
import java.util.List;

/**
 *
 * @author MeGa
 */
public interface BookDao {
    
    public boolean insertBook(Books book);
    
    public List<Books> getAllBooks();
}
