package com.chat.yolchat.controller;

import lombok.Getter;
import lombok.Setter;

//import javax.validation.constraints.NotEmpty;

@Getter @Setter
public class MemberForm {
    // 이름은 필수로 받기 위해 설정.
    // 값이 비어있으면
//    @NotEmpty(message = "회원 이름은 필수입니다")
    private String name;

    private String ipAddress;
    private boolean gender;
    private String university;
}