package com.chat.yolchat.controller;

import com.chat.yolchat.api.MemberApiController;
import com.chat.yolchat.domain.Member;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequiredArgsConstructor
public class MemberController {

//    @RequestMapping("/")
//    public String hello() {
//        return "hello";
//    }

//    @GetMapping("/members/new")
//    public String createForm(Model model) {
//        // Model은 Controller에서 view로 넘어갈때 데이터를 실어서 넘김.
//        // 빈껍데기 객체를 가지고 간다.
//        // 그 이유를 validation를 해주기 위해 빈껍데기 갖고감.
////        model.addAllAttributes("memberForm", new MemberForm());
////        return "members/createMemberForm";
//    }
}
