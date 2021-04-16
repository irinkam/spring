package com.boots.service.implementations;

import com.boots.entity.Matches;
import com.boots.entity.News;
import com.boots.repository.MatchesRepository;
import com.boots.repository.NewsRepository;
import com.boots.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsServiceImplementation implements NewsService {

    @Autowired
    private NewsRepository newsRepository;

    @Override
    public List<News> getAllNews() {
        return newsRepository.findAll();
    }
}
