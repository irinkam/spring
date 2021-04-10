package com.boots.entity;

import javax.persistence.*;
import java.util.Collection;

@Entity
@Table(name = "t_stages_of_tournaments")
public class StagesOfTournaments {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long stageId;

    private String stageName;

//    @OneToMany (mappedBy="stages_of_tournaments", fetch=FetchType.EAGER)
//    private Collection<Matches> matchesCollection;

    public StagesOfTournaments(Long stageId, String stageName) {
        this.stageId = stageId;
        this.stageName = stageName;
    }

    public StagesOfTournaments() {

    }

    public Long getStageId() {
        return stageId;
    }

    public void setStageId(Long stageId) {
        this.stageId = stageId;
    }

    public String getStageName() {
        return stageName;
    }

    public void setStageName(String stageName) {
        this.stageName = stageName;
    }
}
