package com.chat.yolchat.domain;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter @Setter
public class Member {

    @Id @GeneratedValue
    @Column(name = "memberId")
    private Long id;

    private String name;
    private String ipAddress;
    private boolean gender;
    private String university;

    //@OneToMany(mappedBy = "members")
    //private List<>..
}
