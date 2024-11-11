package edu.poly.controller;

import edu.poly.dao.CategoryDAO;
import edu.poly.model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import java.util.List;

@Controller
public class CategoryController {
     @Autowired
    CategoryDAO dao;

     @RequestMapping("/Category/Home")
    public String index(Model model){

        return "Index/home";
    }


}
