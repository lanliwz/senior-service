package com.upuedu.hc.senior.web;

import com.upuedu.hc.senior.model.WorkerSpecialty;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/workerspecialtys")
@Controller
@RooWebScaffold(path = "workerspecialtys", formBackingObject = WorkerSpecialty.class)
public class WorkerSpecialtyController {
}
