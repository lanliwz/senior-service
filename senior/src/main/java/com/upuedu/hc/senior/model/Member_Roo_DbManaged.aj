// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.upuedu.hc.senior.model;

import com.upuedu.hc.senior.model.Location;
import com.upuedu.hc.senior.model.Member;
import com.upuedu.hc.senior.model.PatientActivityHistory;
import com.upuedu.hc.senior.model.Task;
import com.upuedu.hc.senior.model.WorkerSpecialty;
import java.util.Date;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

privileged aspect Member_Roo_DbManaged {
    
    @OneToMany(mappedBy = "memberId")
    private Set<Location> Member.locations;
    
    @OneToMany(mappedBy = "memberId")
    private Set<PatientActivityHistory> Member.patientActivityHistories;
    
    @OneToMany(mappedBy = "workerId")
    private Set<Task> Member.tasks;
    
    @OneToMany(mappedBy = "mentberId")
    private Set<WorkerSpecialty> Member.workerSpecialties;
    
    @Column(name = "first_name", length = 50)
    private String Member.firstName;
    
    @Column(name = "last_name", length = 50)
    private String Member.lastName;
    
    @Column(name = "date_of_birth")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date Member.dateOfBirth;
    
    @Column(name = "type", length = 10)
    private String Member.type;
    
    @Column(name = "primary_email", length = 100)
    private String Member.primaryEmail;
    
    @Column(name = "street", length = 100)
    private String Member.street;
    
    @Column(name = "city", length = 50)
    private String Member.city;
    
    @Column(name = "state", length = 50)
    private String Member.state;
    
    @Column(name = "zip_code", length = 20)
    private String Member.zipCode;
    
    @Column(name = "primary_phone", length = 20)
    private String Member.primaryPhone;
    
    @Column(name = "effective_date")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date Member.effectiveDate;
    
    @Column(name = "termination_date")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date Member.terminationDate;
    
    @Column(name = "modified_date")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date Member.modifiedDate;
    
    public Set<Location> Member.getLocations() {
        return locations;
    }
    
    public void Member.setLocations(Set<Location> locations) {
        this.locations = locations;
    }
    
    public Set<PatientActivityHistory> Member.getPatientActivityHistories() {
        return patientActivityHistories;
    }
    
    public void Member.setPatientActivityHistories(Set<PatientActivityHistory> patientActivityHistories) {
        this.patientActivityHistories = patientActivityHistories;
    }
    
    public Set<Task> Member.getTasks() {
        return tasks;
    }
    
    public void Member.setTasks(Set<Task> tasks) {
        this.tasks = tasks;
    }
    
    public Set<WorkerSpecialty> Member.getWorkerSpecialties() {
        return workerSpecialties;
    }
    
    public void Member.setWorkerSpecialties(Set<WorkerSpecialty> workerSpecialties) {
        this.workerSpecialties = workerSpecialties;
    }
    
    public String Member.getFirstName() {
        return firstName;
    }
    
    public void Member.setFirstName(String firstName) {
        this.firstName = firstName;
    }
    
    public String Member.getLastName() {
        return lastName;
    }
    
    public void Member.setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    public Date Member.getDateOfBirth() {
        return dateOfBirth;
    }
    
    public void Member.setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }
    
    public String Member.getType() {
        return type;
    }
    
    public void Member.setType(String type) {
        this.type = type;
    }
    
    public String Member.getPrimaryEmail() {
        return primaryEmail;
    }
    
    public void Member.setPrimaryEmail(String primaryEmail) {
        this.primaryEmail = primaryEmail;
    }
    
    public String Member.getStreet() {
        return street;
    }
    
    public void Member.setStreet(String street) {
        this.street = street;
    }
    
    public String Member.getCity() {
        return city;
    }
    
    public void Member.setCity(String city) {
        this.city = city;
    }
    
    public String Member.getState() {
        return state;
    }
    
    public void Member.setState(String state) {
        this.state = state;
    }
    
    public String Member.getZipCode() {
        return zipCode;
    }
    
    public void Member.setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }
    
    public String Member.getPrimaryPhone() {
        return primaryPhone;
    }
    
    public void Member.setPrimaryPhone(String primaryPhone) {
        this.primaryPhone = primaryPhone;
    }
    
    public Date Member.getEffectiveDate() {
        return effectiveDate;
    }
    
    public void Member.setEffectiveDate(Date effectiveDate) {
        this.effectiveDate = effectiveDate;
    }
    
    public Date Member.getTerminationDate() {
        return terminationDate;
    }
    
    public void Member.setTerminationDate(Date terminationDate) {
        this.terminationDate = terminationDate;
    }
    
    public Date Member.getModifiedDate() {
        return modifiedDate;
    }
    
    public void Member.setModifiedDate(Date modifiedDate) {
        this.modifiedDate = modifiedDate;
    }
    
}
