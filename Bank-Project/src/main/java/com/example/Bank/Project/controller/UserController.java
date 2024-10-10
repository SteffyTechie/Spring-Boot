package com.example.Bank.Project.controller;


import com.example.Bank.Project.model.Users;
import com.example.Bank.Project.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


@RestController
public class UserController {

    @Autowired
    private UserService service;

    @PostMapping("/register")
    public Users register(@RequestBody Users user) {
        Users registeredUser = service.register(user);
        return service.register(user);
    }

    @PostMapping("/login")
    public ModelAndView login(@RequestParam("username") String username,
                              @RequestParam("password") String password,
                              HttpSession session) { // Inject HttpSession to store the username
        Users user = new Users();
        user.setUsername(username);
        user.setPassword(password);

        String token = service.verify(user); // Assume the service verifies the user and returns a token or "fail"

        if (!"fail".equals(token)) {
            // Store the username in the session after successful login
            session.setAttribute("username", username);

            // Now we can pass the username to the welcome page as well
            ModelAndView mav = new ModelAndView("welcome");
            mav.addObject("username", username); // Pass the username for immediate display
            return mav;
        } else {
            ModelAndView mav = new ModelAndView("login"); // Redirect back to login page in case of failure
            mav.addObject("error", "Invalid username or password");
            return mav;
        }

//        @PostMapping("/login")
//        public ModelAndView login(@RequestParam("username") String username, @RequestParam("password") String password) {
//            Users user = new Users();
//            user.setUsername(username);
//            user.setPassword(password);
//
//            String token = service.verify(user);
//            if (!"fail".equals(token)) {
//                ModelAndView mav = new ModelAndView("welcome");
//                mav.addObject("username", username); // Pass the username to display on the welcome page
//                return mav;
//            } else {
//                ModelAndView mav = new ModelAndView("login"); // Redirect back to login page in case of failure
//                mav.addObject("error", "Invalid username or password");
//                return mav;
//            }
//

    }
}




