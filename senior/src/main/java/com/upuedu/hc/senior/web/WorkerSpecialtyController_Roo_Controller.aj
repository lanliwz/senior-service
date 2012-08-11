// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.upuedu.hc.senior.web;

import com.upuedu.hc.senior.model.Member;
import com.upuedu.hc.senior.model.WorkerSpecialty;
import com.upuedu.hc.senior.web.WorkerSpecialtyController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect WorkerSpecialtyController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String WorkerSpecialtyController.create(@Valid WorkerSpecialty workerSpecialty, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, workerSpecialty);
            return "workerspecialtys/create";
        }
        uiModel.asMap().clear();
        workerSpecialty.persist();
        return "redirect:/workerspecialtys/" + encodeUrlPathSegment(workerSpecialty.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String WorkerSpecialtyController.createForm(Model uiModel) {
        populateEditForm(uiModel, new WorkerSpecialty());
        return "workerspecialtys/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String WorkerSpecialtyController.show(@PathVariable("id") Integer id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("workerspecialty", WorkerSpecialty.findWorkerSpecialty(id));
        uiModel.addAttribute("itemId", id);
        return "workerspecialtys/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String WorkerSpecialtyController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("workerspecialtys", WorkerSpecialty.findWorkerSpecialtyEntries(firstResult, sizeNo));
            float nrOfPages = (float) WorkerSpecialty.countWorkerSpecialtys() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("workerspecialtys", WorkerSpecialty.findAllWorkerSpecialtys());
        }
        addDateTimeFormatPatterns(uiModel);
        return "workerspecialtys/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String WorkerSpecialtyController.update(@Valid WorkerSpecialty workerSpecialty, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, workerSpecialty);
            return "workerspecialtys/update";
        }
        uiModel.asMap().clear();
        workerSpecialty.merge();
        return "redirect:/workerspecialtys/" + encodeUrlPathSegment(workerSpecialty.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String WorkerSpecialtyController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        populateEditForm(uiModel, WorkerSpecialty.findWorkerSpecialty(id));
        return "workerspecialtys/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String WorkerSpecialtyController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        WorkerSpecialty workerSpecialty = WorkerSpecialty.findWorkerSpecialty(id);
        workerSpecialty.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/workerspecialtys";
    }
    
    void WorkerSpecialtyController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("workerSpecialty_modifieddate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void WorkerSpecialtyController.populateEditForm(Model uiModel, WorkerSpecialty workerSpecialty) {
        uiModel.addAttribute("workerSpecialty", workerSpecialty);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("members", Member.findAllMembers());
    }
    
    String WorkerSpecialtyController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
