package com.boots.controller;

import com.boots.service.MatchesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MatchesController {

    @Autowired
    private MatchesService matchesService;

    @GetMapping("/matches")
    public String viewMatchesPage(Model model)
    {
        model.addAttribute("listOfMatches", matchesService.getAllMatches());
        return "matches";
    }
}
