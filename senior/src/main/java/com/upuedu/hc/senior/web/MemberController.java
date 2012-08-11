package com.upuedu.hc.senior.web;

import com.upuedu.hc.senior.model.Member;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/members")
@Controller
@RooWebScaffold(path = "members", formBackingObject = Member.class)
public class MemberController {
}
