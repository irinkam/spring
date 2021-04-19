package com.boots.controller;

import com.boots.service.MatchesService;
import com.boots.service.TeamsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MatchesController {

    @Autowired
    private MatchesService matchesService;

    @Autowired
    private TeamsService teamsService;

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/matches")
    public String viewMatchesPage(Model model)
    {
        model.addAttribute("teamsList", teamsService.getAllTeams());
        model.addAttribute("listOfMatches", matchesService.getAllMatches());
        return "matches";
    }
}
