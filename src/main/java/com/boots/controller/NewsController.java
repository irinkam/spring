package com.boots.controller;

import com.boots.service.NewsService;
import com.boots.service.TeamsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NewsController {

    @Autowired
    private NewsService newsService;

    @GetMapping("/news")
    public String viewTeamsPage(Model model)
    {
        model.addAttribute("listOfNews", newsService.getAllNews());
        return "news";
    }
}
