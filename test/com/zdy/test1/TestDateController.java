package com.zdy.test1;



import java.util.Date;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import org.springframework.stereotype.Controller;

@Controller
@RequestMapping("/test")
public class TestDateController {
   @RequestMapping(value = "/index")
    public ModelAndView dicts() {
        ModelAndView mv = new ModelAndView("test");
        mv.addObject("now", new Date());
        return mv;
    }
}
