// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.upuedu.hc.senior.web;

import com.upuedu.hc.senior.model.Job;
import com.upuedu.hc.senior.model.Location;
import com.upuedu.hc.senior.model.Member;
import com.upuedu.hc.senior.model.PatientActivityHistory;
import com.upuedu.hc.senior.model.Task;
import com.upuedu.hc.senior.model.WorkerSpecialty;
import com.upuedu.hc.senior.web.ApplicationConversionServiceFactoryBean;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Job, String> ApplicationConversionServiceFactoryBean.getJobToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.upuedu.hc.senior.model.Job, java.lang.String>() {
            public String convert(Job job) {
                return new StringBuilder().append(job.getMemberId()).append(' ').append(job.getJobDescription()).append(' ').append(job.getJobQua1ityRating()).append(' ').append(job.getComment()).toString();
            }
        };
    }
    
    public Converter<Integer, Job> ApplicationConversionServiceFactoryBean.getIdToJobConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, com.upuedu.hc.senior.model.Job>() {
            public com.upuedu.hc.senior.model.Job convert(java.lang.Integer id) {
                return Job.findJob(id);
            }
        };
    }
    
    public Converter<String, Job> ApplicationConversionServiceFactoryBean.getStringToJobConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.upuedu.hc.senior.model.Job>() {
            public com.upuedu.hc.senior.model.Job convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), Job.class);
            }
        };
    }
    
    public Converter<Location, String> ApplicationConversionServiceFactoryBean.getLocationToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.upuedu.hc.senior.model.Location, java.lang.String>() {
            public String convert(Location location) {
                return new StringBuilder().append(location.getLocation()).append(' ').append(location.getRecordTime()).toString();
            }
        };
    }
    
    public Converter<Integer, Location> ApplicationConversionServiceFactoryBean.getIdToLocationConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, com.upuedu.hc.senior.model.Location>() {
            public com.upuedu.hc.senior.model.Location convert(java.lang.Integer id) {
                return Location.findLocation(id);
            }
        };
    }
    
    public Converter<String, Location> ApplicationConversionServiceFactoryBean.getStringToLocationConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.upuedu.hc.senior.model.Location>() {
            public com.upuedu.hc.senior.model.Location convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), Location.class);
            }
        };
    }
    
    public Converter<Member, String> ApplicationConversionServiceFactoryBean.getMemberToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.upuedu.hc.senior.model.Member, java.lang.String>() {
            public String convert(Member member) {
                return new StringBuilder().append(member.getFirstName()).append(' ').append(member.getLastName()).append(' ').append(member.getDateOfBirth()).append(' ').append(member.getType()).toString();
            }
        };
    }
    
    public Converter<Integer, Member> ApplicationConversionServiceFactoryBean.getIdToMemberConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, com.upuedu.hc.senior.model.Member>() {
            public com.upuedu.hc.senior.model.Member convert(java.lang.Integer id) {
                return Member.findMember(id);
            }
        };
    }
    
    public Converter<String, Member> ApplicationConversionServiceFactoryBean.getStringToMemberConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.upuedu.hc.senior.model.Member>() {
            public com.upuedu.hc.senior.model.Member convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), Member.class);
            }
        };
    }
    
    public Converter<PatientActivityHistory, String> ApplicationConversionServiceFactoryBean.getPatientActivityHistoryToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.upuedu.hc.senior.model.PatientActivityHistory, java.lang.String>() {
            public String convert(PatientActivityHistory patientActivityHistory) {
                return new StringBuilder().append(patientActivityHistory.getLocation()).append(' ').append(patientActivityHistory.getRecordTime()).append(' ').append(patientActivityHistory.getMediaLinks()).append(' ').append(patientActivityHistory.getMimeType()).toString();
            }
        };
    }
    
    public Converter<Integer, PatientActivityHistory> ApplicationConversionServiceFactoryBean.getIdToPatientActivityHistoryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, com.upuedu.hc.senior.model.PatientActivityHistory>() {
            public com.upuedu.hc.senior.model.PatientActivityHistory convert(java.lang.Integer id) {
                return PatientActivityHistory.findPatientActivityHistory(id);
            }
        };
    }
    
    public Converter<String, PatientActivityHistory> ApplicationConversionServiceFactoryBean.getStringToPatientActivityHistoryConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.upuedu.hc.senior.model.PatientActivityHistory>() {
            public com.upuedu.hc.senior.model.PatientActivityHistory convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), PatientActivityHistory.class);
            }
        };
    }
    
    public Converter<Task, String> ApplicationConversionServiceFactoryBean.getTaskToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.upuedu.hc.senior.model.Task, java.lang.String>() {
            public String convert(Task task) {
                return new StringBuilder().append(task.getPatientId()).append(' ').append(task.getLocation()).append(' ').append(task.getCheckinTime()).append(' ').append(task.getCheckoutTime()).toString();
            }
        };
    }
    
    public Converter<Integer, Task> ApplicationConversionServiceFactoryBean.getIdToTaskConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, com.upuedu.hc.senior.model.Task>() {
            public com.upuedu.hc.senior.model.Task convert(java.lang.Integer id) {
                return Task.findTask(id);
            }
        };
    }
    
    public Converter<String, Task> ApplicationConversionServiceFactoryBean.getStringToTaskConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.upuedu.hc.senior.model.Task>() {
            public com.upuedu.hc.senior.model.Task convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), Task.class);
            }
        };
    }
    
    public Converter<WorkerSpecialty, String> ApplicationConversionServiceFactoryBean.getWorkerSpecialtyToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.upuedu.hc.senior.model.WorkerSpecialty, java.lang.String>() {
            public String convert(WorkerSpecialty workerSpecialty) {
                return new StringBuilder().append(workerSpecialty.getModifiedDate()).append(' ').append(workerSpecialty.getSpecity()).toString();
            }
        };
    }
    
    public Converter<Integer, WorkerSpecialty> ApplicationConversionServiceFactoryBean.getIdToWorkerSpecialtyConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Integer, com.upuedu.hc.senior.model.WorkerSpecialty>() {
            public com.upuedu.hc.senior.model.WorkerSpecialty convert(java.lang.Integer id) {
                return WorkerSpecialty.findWorkerSpecialty(id);
            }
        };
    }
    
    public Converter<String, WorkerSpecialty> ApplicationConversionServiceFactoryBean.getStringToWorkerSpecialtyConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.upuedu.hc.senior.model.WorkerSpecialty>() {
            public com.upuedu.hc.senior.model.WorkerSpecialty convert(String id) {
                return getObject().convert(getObject().convert(id, Integer.class), WorkerSpecialty.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getJobToStringConverter());
        registry.addConverter(getIdToJobConverter());
        registry.addConverter(getStringToJobConverter());
        registry.addConverter(getLocationToStringConverter());
        registry.addConverter(getIdToLocationConverter());
        registry.addConverter(getStringToLocationConverter());
        registry.addConverter(getMemberToStringConverter());
        registry.addConverter(getIdToMemberConverter());
        registry.addConverter(getStringToMemberConverter());
        registry.addConverter(getPatientActivityHistoryToStringConverter());
        registry.addConverter(getIdToPatientActivityHistoryConverter());
        registry.addConverter(getStringToPatientActivityHistoryConverter());
        registry.addConverter(getTaskToStringConverter());
        registry.addConverter(getIdToTaskConverter());
        registry.addConverter(getStringToTaskConverter());
        registry.addConverter(getWorkerSpecialtyToStringConverter());
        registry.addConverter(getIdToWorkerSpecialtyConverter());
        registry.addConverter(getStringToWorkerSpecialtyConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}