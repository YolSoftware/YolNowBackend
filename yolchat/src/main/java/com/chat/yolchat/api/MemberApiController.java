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

    @PostMapping("/api/members") // post타입 url을 받음
    public CreateMemberResponse saveMember(@RequestBody @Valid CreateMemberRequest request) {

        Member member = new Member();
        member.setName(request.getName());
        // 엔티티는 엔티티 용으로 쓰는거 임!
        // 엔티티와 API스펙을
        // (실무)에서는 엔티티를 노출하거나 그대로 받는건 거의 안함. -> 나중에 크게 후회함.. (이게 강의를 듣는 이유, 쌉 강조!!!)
        //  -> 아까 말한 DTO의 장점,  엔티티를 그대로 썼을 때의 단점 때문에

        // side effect가 추측이 안됨.
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