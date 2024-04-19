package com.Book.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Book.Modal.book;
import com.Book.Repo.bookinfo;

@Controller
public class bookcon {
    @Autowired
    private bookinfo bookin;

    @PostMapping("/addBook")
    public String addbook(@ModelAttribute book b, @RequestParam("imageUrl") String imageUrl ) {
        b.setImageUrl(imageUrl);
        bookin.save(b);
        return "redirect:/viewBook";
    }

    @GetMapping("/viewBook")
    public String fetch(Model model) {
        List<book> bookList = bookin.findAll();
        model.addAttribute("bookList", bookList);
        return "AdminViewBook.jsp";
    }

    @RequestMapping("delete/{id}")
    public String deleteuser(@PathVariable int id) {
        bookin.deleteById(id);
        return "redirect:/viewBook";
    }

    @RequestMapping("/{id}")
    public String edit(@PathVariable int id, Model model) {
        book book = bookin.findById(id);
        model.addAttribute("book", book);
        return "edit.jsp";
    }

    @RequestMapping("/edit/{id}")
    public String edituser(@PathVariable int id,@ModelAttribute book b) {
    	book ob=bookin.findById(id);
    	if(ob!=null) {
    		ob.setTitle(b.getTitle());
    		ob.setAuthor(b.getAuthor());
    		ob.setPrice(b.getPrice());
    		ob.setQuantity(b.getQuantity());
    		
    		bookin.save(ob);
    	}
    	return "redirect:/viewBook";
    }
    
  
    
}
