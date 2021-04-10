package com.boots.service.implementations;

import com.boots.entity.Teams;
import com.boots.repository.TeamsRepository;
import com.boots.service.TeamsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeamsServiceImplementation implements TeamsService {

    @Autowired
    private TeamsRepository teamsRepository;

    @Override
    public List<Teams> getAllTeams() {
        return teamsRepository.findAll();
    }
}
