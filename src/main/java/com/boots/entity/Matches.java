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

    private Long firstTeamId;

    private Integer firstTeamGoals;

    private Long secondTeamId;

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

    public Long getFirstTeamId() {
        return firstTeamId;
    }

    public void setFirstTeamId(Long firstTeamId) {
        this.firstTeamId = firstTeamId;
    }

    public Integer getFirstTeamGoals() {
        return firstTeamGoals;
    }

    public void setFirstTeamGoals(Integer firstTeamGoals) {
        this.firstTeamGoals = firstTeamGoals;
    }

    public Long getSecondTeamId() {
        return secondTeamId;
    }

    public void setSecondTeamId(Long secondTeamId) {
        this.secondTeamId = secondTeamId;
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
}
