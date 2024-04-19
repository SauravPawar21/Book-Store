package com.Book.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Book.Modal.cart;
import com.Book.Repo.cartinfo;

@Controller
public class cartcon {

    @Autowired
    private cartinfo cartin;
    
    @GetMapping("/viewCart")
    public String viewCart(Model model) {
        List<cart> cartItems = cartin.findAll();
        model.addAttribute("cartItems", cartItems);
        return "AddcartFetch.jsp";
    }

    @PostMapping("/addToCart")
    public String addToCart(@ModelAttribute cart b) {
        cartin.save(b);
        return "redirect:/viewCart";
    }
    
    @RequestMapping("del/{id}")
    public String deleteCartItem(@PathVariable int id) {
        cartin.deleteById(id);
        return "redirect:/viewCart";
    }  
}
