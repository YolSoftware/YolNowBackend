package com.chat.yolchat;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Data
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Entity(name = "user") // JPA가 관리하는 클래스를 의미 매핑할 테이블은 해당 이름을 사용
public class DBtest
{
    @Id // 기본키를 지정함
    @GeneratedValue(strategy = GenerationType.IDENTITY) // 자동 생성, 기본키 생성을 db에 위임한다는 의미
    private Long num;
    private String id;
    private String name;

    @Builder
    public DBtest(String id, String name)
    {
        this.id = id;
        this.name = name;
    }
}
