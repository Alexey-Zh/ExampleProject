package com.alexeyzh.ui;

import com.alexeyzh.models.MyJsonObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {

    @RequestMapping(value = "/rest", method = RequestMethod.GET)
    public String rest() {
        return "rest";
    }

    @RequestMapping(value = "/crud", method = RequestMethod.GET)
    public String crud() {
        return "crud";
    }


    /*@RequestMapping(value = "/json", method = RequestMethod.GET)
    public String getJson() {
        RestTemplate restTemplate = new RestTemplate();
        MyJsonObject myJsonObject;
        myJsonObject = restTemplate.getForObject("http://gturnquist-quoters.cfapps.io/api/random", MyJsonObject.class);
        return "json";
    }*/

    @RequestMapping(value = "/json", method = RequestMethod.GET)
    public ModelAndView jsonTest() {
        RestTemplate restTemplate = new RestTemplate();
        MyJsonObject myJsonObject;
        myJsonObject = restTemplate.getForObject("http://gturnquist-quoters.cfapps.io/api/random", MyJsonObject.class);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("jsonTest", myJsonObject);
        modelAndView.setViewName("json");
        return modelAndView;
    }

}