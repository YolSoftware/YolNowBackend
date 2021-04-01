package com.chat.yolchat.api;

import com.chat.yolchat.domain.Member;
import com.chat.yolchat.repository.MemberRepository;
import com.chat.yolchat.service.MemberService;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;


// 외부용
@RestController
@RequiredArgsConstructor
public class MemberApiController {
    private final MemberService memberService;

    @PostMapping("/api/members")
    public CreateMemberResponse saveMember(@RequestBody @Valid CreateMemberRequest request) {

        Member member = new Member();
        member.setName(request.getName());
        Long id = memberService.join(member);
        return new CreateMemberResponse(id);
    }

    @PostMapping("/api/db_test") // post타입 url을 받음
    public Member Db_test(@RequestBody @Valid CreateMemberRequest request)
    {
        return memberService.findById(request.id);
    }

    @Data
    static class CreateMemberRequest {
        private String name;
        private Long id;
    }

    // id값을 반환한다.
    @Data
    static class CreateMemberResponse {
        private Long id;
        private String str = "PRINT_TEST";

        public CreateMemberResponse(Long id) {
            this.id = id;
            this.str = str;
        }
    }
}

