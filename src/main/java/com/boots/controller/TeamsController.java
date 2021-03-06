package com.boots.controller;

import com.boots.service.TeamsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TeamsController {
    @Autowired
    private TeamsService teamsService;

    @PreAuthorize("isAuthenticated()")
    @GetMapping("/teams")
    public String viewTeamsPage(Model model)
    {
        model.addAttribute("listOfTeams", teamsService.getAllTeams());
        return "teams";
    }
}
