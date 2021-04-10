package com.boots.entity;

import javax.persistence.*;

@Entity
@Table(name = "t_teams")
public class Teams {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long teamId;

    private String teamName;

    private String country;


    public Teams(Long teamId, String teamName, String country) {
        this.teamId = teamId;
        this.teamName = teamName;
        this.country = country;
    }

    public Teams() {

    }

    public Long getTeamId() {
        return teamId;
    }

    public void setTeamId(Long teamId) {
        this.teamId = teamId;
    }

    public String getTeamName() {
        return teamName;
    }

    public void setTeamName(String teamName) {
        this.teamName = teamName;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

}
