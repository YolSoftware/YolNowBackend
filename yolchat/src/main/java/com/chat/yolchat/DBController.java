package com.chat.yolchat;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.awt.*;

@RestController
@RequestMapping("DBTest")
public class DBController
{
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    DBService dbService;

    @GetMapping(produces = {MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<List<DBtest>> getAll()
    {
        List<DBtest> db = dbService.findAll();
        return new ResponseEntity<List<DBtest>>(db, HttpStatus.OK);
    }
}
