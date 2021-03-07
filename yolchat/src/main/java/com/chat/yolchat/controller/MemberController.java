package com.chat.yolchat.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

// 내부용
@Controller
@RequiredArgsConstructor
public class MemberController {

//    @GetMapping("/members/new")
//    public String createForm(Model model) {
//        // Model은 Controller에서 view로 넘어갈때 데이터를 실어서 넘김.
//        // 빈껍데기 객체를 가지고 간다.
//        // 그 이유를 validation를 해주기 위해 빈껍데기 갖고감.
//        model.addAllAttributes("memberForm", new MemberForm());
//        return "members/createMemberForm";
//    }
}
