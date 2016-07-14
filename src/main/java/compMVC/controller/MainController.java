package compMVC.controller;

import compMVC.dao.cocktail.CocktailDAO;
import compMVC.model.cocktail.Cocktail;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class MainController {

    private static final Logger logger = LoggerFactory.getLogger(MainController.class);

    @Autowired
    private CocktailDAO cocktailDAO;

    @RequestMapping(value = "/cocktail", method = RequestMethod.GET)
    public ModelAndView listCocktails(){
        List list = cocktailDAO.getAll();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("cocktail", list);
        modelAndView.setViewName("cocktail");
        return modelAndView;
    }

    @RequestMapping(value = "/home")
    public String homePage() {
        return "home";
    }

    @RequestMapping(value = "/index")
    public String loginPage() {
        return "index";
    }

}
