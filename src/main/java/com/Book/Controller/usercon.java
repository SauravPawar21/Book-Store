package com.Book.Controller;

import java.util.List;

import javax.servlet.http.HttpSession; // Import HttpSession

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Book.Modal.book;
import com.Book.Modal.user;
import com.Book.Repo.bookinfo;
import com.Book.Repo.userinfo;

@Controller
public class usercon {
    @Autowired
    private userinfo usinfo;

    @Autowired
    private bookinfo bookRe;

    @GetMapping("/")
    public String home(HttpSession session, Model model) {
        if (session.getAttribute("username") != null) {
            model.addAttribute("username", session.getAttribute("username"));
        }
        return "Home.jsp";
    }

    @PostMapping("/register")
    public String registers(@ModelAttribute user ee) {
        usinfo.save(ee);
        return "Login.jsp";
    }

    @PostMapping("/Login")
    public String login(@RequestParam String email, @RequestParam String password, HttpSession session) {
        user ob = usinfo.findByEmail(email);
        if (ob != null && ob.getEmail().equals("Admin123@gmail.com") && ob.getPassword().equals("admin123")) {
            return "AdminHome.jsp";

        } else if (ob != null && ob.getEmail().equals(email) && ob.getPassword().equals(password)) {
            session.setAttribute("username", ob.getName());
            return "redirect:/UserViewBook";
        }

        else {
            return "Login.jsp";
        }
    }

    @GetMapping("/UserViewBook")
    public String userViewBooks(Model model) {
        List<book> userBooks = bookRe.findAll();
        model.addAttribute("userBooks", userBooks);
        return "ViewBooks.jsp";
    }

}
