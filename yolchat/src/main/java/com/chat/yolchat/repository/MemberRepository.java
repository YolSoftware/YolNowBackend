package com.chat.yolchat.repository;


import com.chat.yolchat.domain.Member;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class MemberRepository {

    @PersistenceContext
//    private EntityManagerFactory emf = Persistence.createEntityManagerFactory("test");
//    private EntityManager em = emf.createEntityManager();
    private EntityManager em;
    public void save(Member member) {
        em.persist(member);
    }

    public Member findOne(Long id) {
        System.out.println(id);
        return em.find(Member.class, id);
    }

    public List<Member> findAll() {
        return em.createQuery("SELECT m FROM Member m", Member.class).getResultList();
    }

    public List<Member> findByName(String name) {
        return em.createQuery("SELECT m FROM Member m WHERE m.name = :name", Member.class)
                .setParameter("name", name)
                .getResultList();
    }
}
