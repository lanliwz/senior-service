package com.upuedu.hc.senior.web;

import com.upuedu.hc.senior.model.PatientActivityHistory;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/patientactivityhistorys")
@Controller
@RooWebScaffold(path = "patientactivityhistorys", formBackingObject = PatientActivityHistory.class)
public class PatientActivityHistoryController {
}
