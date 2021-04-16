package com.boots.entity;

import javax.persistence.*;
import java.sql.Date;
import java.util.Collection;

@Entity
@Table(name = "t_matches")
public class Matches {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long matchId;

    private Date date;

    private String firstTeamName;

    private Integer firstTeamGoals;

    private String secondTeamName;

    private Integer secondTeamGoals;

    @ManyToOne(optional=false, cascade=CascadeType.ALL)
    @JoinColumn(name = "tournament_id")
    private Tournaments tournament;

    @ManyToOne(optional=false, cascade=CascadeType.ALL)
    @JoinColumn(name = "stage_id")
    private StagesOfTournaments stage;

    @OneToMany (fetch=FetchType.EAGER)
    private Collection<Fouls> foulsCollection;

    public Long getMatchId() {
        return matchId;
    }

    public void setMatchId(Long matchId) {
        this.matchId = matchId;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getFirstTeamGoals() {
        return firstTeamGoals;
    }

    public void setFirstTeamGoals(Integer firstTeamGoals) {
        this.firstTeamGoals = firstTeamGoals;
    }

    public Integer getSecondTeamGoals() {
        return secondTeamGoals;
    }

    public void setSecondTeamGoals(Integer secondTeamGoals) {
        this.secondTeamGoals = secondTeamGoals;
    }

    public Tournaments getTournament() {
        return tournament;
    }

    public void setTournament(Tournaments tournament) {
        this.tournament = tournament;
    }

    public StagesOfTournaments getStage() {
        return stage;
    }

    public void setStage(StagesOfTournaments stage) {
        this.stage = stage;
    }

    public Collection<Fouls> getFoulsCollection() {
        return foulsCollection;
    }

    public void setFoulsCollection(Collection<Fouls> foulsCollection) {
        this.foulsCollection = foulsCollection;
    }

    public String getFirstTeamName() {
        return firstTeamName;
    }

    public void setFirstTeamName(String firstTeamName) {
        this.firstTeamName = firstTeamName;
    }

    public String getSecondTeamName() {
        return secondTeamName;
    }

    public void setSecondTeamName(String secondTeamName) {
        this.secondTeamName = secondTeamName;
    }
}
