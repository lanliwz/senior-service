// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.upuedu.hc.senior.model;

import com.upuedu.hc.senior.model.WorkerSpecialty;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect WorkerSpecialty_Roo_Jpa_Entity {
    
    declare @type: WorkerSpecialty: @Entity;
    
    declare @type: WorkerSpecialty: @Table(name = "worker_specialty");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer WorkerSpecialty.id;
    
    public Integer WorkerSpecialty.getId() {
        return this.id;
    }
    
    public void WorkerSpecialty.setId(Integer id) {
        this.id = id;
    }
    
}
