package edu.poly.controller;


import edu.poly.model.Service.MailerService;
import edu.poly.dao.AccountDAO;
import edu.poly.model.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.mail.MessagingException;

@Controller
public class MailController {
    @Autowired
    AccountDAO accountDao;
    @Autowired
    MailerService mailer;
    @RequestMapping("/account/passwordMail")
    public String email(Model model) {
        return "layoutchange/user_send_mail";
    }

    @RequestMapping("/user/passwordMail")
    public String demo(Model model, @RequestParam("email") String email) throws MessagingException {
        if (email.equals("")) {
            model.addAttribute("message", "Không được để trống email");
            return "user/user_send_mail";
        } else {
            try {
                Account account = accountDao.findByEmail(email);
                // mailer.send("a@gmail.com", "Subject_demo", "Body_demo");
                mailer.queue(email, "Mật khẩu", account.getPassword());
                model.addAttribute("mess", "Mật khẩu của bạn đã được gửi bên email, hãy đăng nhập ngay!");
                System.out.println("Đã gửi");


            } catch (Exception e) {
                model.addAttribute("message", "Không có tài khoản đăng ký email này");
                return "layoutchange/user_send_mail";
            }
        }
        return "layout/loginform";

    }
}
