package com.chat.yolchat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class DBService
{
    @Autowired
    private DBRepositiry dbRepositiry;
    public List<DBtest> findAll()
    {
        List<DBtest> db = new ArrayList<>();
        dbRepositiry.findAll().forEach(e -> db.add(e));
        return db;
    }
}
