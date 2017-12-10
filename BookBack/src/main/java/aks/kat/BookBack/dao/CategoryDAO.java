package aks.kat.BookBack.dao;

import java.util.List;

import aks.kat.BookBack.dto.Category;

public interface CategoryDAO {
	
	Category get(int id);
	List<Category> list();
	boolean add(Category category);
	boolean update(Category category);
	boolean delete(Category category);
	
}
