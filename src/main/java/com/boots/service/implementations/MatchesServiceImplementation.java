package com.boots.service.implementations;

import com.boots.entity.Matches;
import com.boots.repository.MatchesRepository;
import com.boots.service.MatchesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MatchesServiceImplementation implements MatchesService {

    @Autowired
    private MatchesRepository matchesRepository;

    @Override
    public List<Matches> getAllMatches() {
        return matchesRepository.findAll();
    }
}
