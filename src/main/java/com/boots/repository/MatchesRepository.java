package com.boots.repository;

import com.boots.entity.Matches;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface MatchesRepository extends JpaRepository<Matches, Long> {

//    @Query(value = "select t.team_name as firstTeamName, m.first_team_goals, m.second_team_goals, t1.team_name as secondTeamName, m.date " +
//                    "from t_matches as m " +
//                    "inner join t_teams as t on t.team_id = m.first_team_id " +
//                    "inner join t_teams as t1 on t1.team_id = m.second_team_id ")
//    List<Matches> getMatchesWithTeams();
}
