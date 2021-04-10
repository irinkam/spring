package com.boots.repository;

import com.boots.entity.Teams;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TeamsRepository extends JpaRepository<Teams, Long> {
}
