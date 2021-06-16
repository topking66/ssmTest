package cn.controller;

import cn.domain.Account;
import cn.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 账户web
 */

@Controller
@RequestMapping("/account")
public class AccountController {

    @Autowired
    private AccountService accountService;

    @RequestMapping("/testSpringMVC")
    public String findAll(Model model){
        System.out.println("查询成功");
        List<Account> list = accountService.findAll();
        model.addAttribute("list",list);

        return "list";
    }

    @RequestMapping("/save")
    public void saveAccount(Account account, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("保存成功");
        accountService.saveAccount(account);
        response.sendRedirect(request.getContextPath()+"/account/testSpringMVC");
        return ;


    }
}
