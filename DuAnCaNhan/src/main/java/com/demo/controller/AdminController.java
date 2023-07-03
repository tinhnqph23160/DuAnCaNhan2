package com.demo.controller;

import com.demo.model.Account;
import com.demo.model.Category;
import com.demo.model.Product;
import com.demo.repo.AccountRepo;
import com.demo.repo.CategoryRepo;
import com.demo.repo.OrderRepo;
import com.demo.repo.ProductRepo;
import net.bytebuddy.implementation.bind.annotation.BindingPriority;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Optional;

@Controller
public class AdminController {
    @Autowired
    CategoryRepo categoryRepo;
    @Autowired
    ProductRepo productRepo;
    @Autowired
    AccountRepo accountRepo;
    @Autowired
    OrderRepo orderRepo;

    String message;
    //  Category
    @GetMapping("/admin/category/index")
    public String listCategory(Model model){
        model.addAttribute("category", categoryRepo.findAll());

        if(message != null){
            model.addAttribute("mesage", message);
            message = null;
        }
        return "admin/category/list";
    }

    @GetMapping ("/admin/category/create")
    public String createCategory( Model model,@ModelAttribute("category") Category category){

        return "admin/category/form";
    }
    @PostMapping ("/admin/category/save")
    public String saveCategory(Model model,
            @ModelAttribute("category") Category category,
            BindingResult bindingResult
    ){

        categoryRepo.save(category);
        return "redirect:/admin/category/index";
    }
    @PostMapping ("/admin/category/update")
    public String updateCategory(Model model,
            @ModelAttribute("category") Category category,BindingResult bindingResult
    ){
        if(bindingResult.hasErrors()){
            model.addAttribute("listCategory", categoryRepo.findAll());
            return "admin/product/form";
        }     message = "Cập nhật thành công";

        categoryRepo.save(category);
        return "redirect:/admin/category/index";
    }

    @GetMapping("/admin/category/edit/{id}")
    public String editCategory(@ModelAttribute("category") Category category,@PathVariable String id,Model model
                               ){
        Category category1 = categoryRepo.findById(id).get();
        model.addAttribute("category1", category1);
        return "admin/category/form";
    }

    @GetMapping("/admin/category/remove/{id}")
    public String removeCategory(@PathVariable String id){
        categoryRepo.deleteById(id);
        return "redirect:/admin/category/index";
    }

    //  Product------------------------------
    @GetMapping("/admin/product/index")
    public String listProduct(@RequestParam(defaultValue = "0", name="page") Integer number, Model model){
        Pageable pageable = PageRequest.of(number, 4);
        Page<Product> list = productRepo.findAll(pageable);
        model.addAttribute("product", list);
        return "admin/product/list";
    }

    @GetMapping("/admin/product/create")
    public String createProduct(Model model, @ModelAttribute("product") Product product){
        model.addAttribute("category1", categoryRepo.findAll());
        model.addAttribute("product", new Product());
        return "admin/product/form";
    }
    @PostMapping("/admin/product/save")
    public String saveProduct(Model model,@Valid @ModelAttribute("product") Product product, BindingResult result){
    if(result.hasErrors()){
        model.addAttribute("category1", categoryRepo.findAll());
        return "admin/product/form";
    }else{
        productRepo.save(product);
    }

        return "redirect:/admin/product/index";
    }
    @PostMapping("/admin/product/update")
    public String updateProduct(Model model, @ModelAttribute("product") Product product){

        productRepo.save(product);
        return "redirect:/admin/product/index";
    }


    @GetMapping("/admin/product/edit/{id}")
    public String editProduct(@PathVariable Integer id, Model model){

        System.out.println(categoryRepo.findAll());
        model.addAttribute("product", productRepo.findById(id).get());
        model.addAttribute("category1", categoryRepo.findAll());
        return "admin/product/form";
    }

    @GetMapping("/admin/product/delete/{id}")
    public String removeProduct(@PathVariable Integer id){
        productRepo.deleteById(id);
        return "redirect:/admin/product/index";
    }

    //  Account
    @GetMapping("/admin/account/index")
    public String listAccount(Model model){
        model.addAttribute("account", accountRepo.findAll());
        return "admin/account/list";
    }

    @GetMapping("/admin/account/create")
    public String createAccount(@ModelAttribute("account")Account account, Model model){
        model.addAttribute("account", account);
        return "admin/account/form";
    }
    @PostMapping("/admin/account/save")
    public String saveAccount(@Valid @ModelAttribute("account") Account account, BindingResult result, Model model){
          if(result.hasErrors()){
              model.addAttribute("message");
              return "admin/account/form";
          }else{
              accountRepo.save(account);
          }

        return "redirect:/admin/account/index";
    }
        @PostMapping("/admin/account/update")
    public String updateAccount(Model model,@ModelAttribute("account") Account account){
          Account account1=  accountRepo.save(account);
          model.addAttribute("account1", account1);
        return "redirect:/admin/account/index";
    }


    @GetMapping("/admin/account/edit/{id}")
    public String editAccount(@PathVariable String id, Model model){
        model.addAttribute("account",accountRepo.findById(id).get());

        return "admin/account/form";
    }
    @GetMapping("/admin/account/delete/{id}")
    public String removeAccount(@PathVariable String id){
        accountRepo.deleteById(id);
        return "redirect:/admin/account/index";
    }

    //  order
    @GetMapping("/admin/order/index")
    public String listOrder(Model model){
        model.addAttribute("order", orderRepo.findAll());
        return "admin/order/list";
    }

    @GetMapping("/admin/order/create")
    public String createOrder(){
        return "admin/order/form";
    }

    @GetMapping("/admin/order/edit/{id}")
    public String editOrder(@PathVariable int id){
        return "admin/order/form";
    }
}
