// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.upuedu.hc.senior.model;

import com.upuedu.hc.senior.model.Member;
import com.upuedu.hc.senior.model.WorkerSpecialty;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect WorkerSpecialty_Roo_DbManaged {
    
    @ManyToOne
    @JoinColumn(name = "mentber_id", referencedColumnName = "id", nullable = false)
    private Member WorkerSpecialty.mentberId;
    
    @Column(name = "modified_date")
    @NotNull
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date WorkerSpecialty.modifiedDate;
    
    @Column(name = "specity", length = 30)
    @NotNull
    private String WorkerSpecialty.specity;
    
    public Member WorkerSpecialty.getMentberId() {
        return mentberId;
    }
    
    public void WorkerSpecialty.setMentberId(Member mentberId) {
        this.mentberId = mentberId;
    }
    
    public Date WorkerSpecialty.getModifiedDate() {
        return modifiedDate;
    }
    
    public void WorkerSpecialty.setModifiedDate(Date modifiedDate) {
        this.modifiedDate = modifiedDate;
    }
    
    public String WorkerSpecialty.getSpecity() {
        return specity;
    }
    
    public void WorkerSpecialty.setSpecity(String specity) {
        this.specity = specity;
    }
    
}