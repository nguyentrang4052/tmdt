package edu.poly.dao;

import edu.poly.model.Category;
import edu.poly.model.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import javax.transaction.Transactional;
import java.util.Map;
@Transactional
public interface CategoryDAO extends JpaRepository<Category, String> {
   Category findById(long id);
   Page<Category> findByNameLike(String keywords, Pageable pageable);
   Category deleteById(long id);

}