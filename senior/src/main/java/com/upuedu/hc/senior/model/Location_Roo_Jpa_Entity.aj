// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.upuedu.hc.senior.model;

import com.upuedu.hc.senior.model.Location;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Location_Roo_Jpa_Entity {
    
    declare @type: Location: @Entity;
    
    declare @type: Location: @Table(name = "location");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer Location.id;
    
    public Integer Location.getId() {
        return this.id;
    }
    
    public void Location.setId(Integer id) {
        this.id = id;
    }
    
}
