// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.upuedu.hc.senior.model;

import com.upuedu.hc.senior.model.Task;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Task_Roo_Jpa_Entity {
    
    declare @type: Task: @Entity;
    
    declare @type: Task: @Table(name = "task");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer Task.id;
    
    public Integer Task.getId() {
        return this.id;
    }
    
    public void Task.setId(Integer id) {
        this.id = id;
    }
    
}