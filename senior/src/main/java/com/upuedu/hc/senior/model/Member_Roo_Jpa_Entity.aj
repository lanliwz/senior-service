// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.upuedu.hc.senior.model;

import com.upuedu.hc.senior.model.Member;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

privileged aspect Member_Roo_Jpa_Entity {
    
    declare @type: Member: @Entity;
    
    declare @type: Member: @Table(name = "member");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer Member.id;
    
    public Integer Member.getId() {
        return this.id;
    }
    
    public void Member.setId(Integer id) {
        this.id = id;
    }
    
}
