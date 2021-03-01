[1mdiff --git a/yolchat/src/main/java/com/chat/yolchat/YolchatApplication.java b/yolchat/src/main/java/com/chat/yolchat/YolchatApplication.java[m
[1mdeleted file mode 100644[m
[1mindex eb0e765..0000000[m
[1m--- a/yolchat/src/main/java/com/chat/yolchat/YolchatApplication.java[m
[1m+++ /dev/null[m
[36m@@ -1,22 +0,0 @@[m
[31m-package com.chat.yolchat;[m
[31m-[m
[31m-import org.springframework.boot.SpringApplication;[m
[31m-import org.springframework.boot.autoconfigure.SpringBootApplication;[m
[31m-import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;[m
[31m-import org.springframework.web.bind.annotation.RequestMapping;[m
[31m-import org.springframework.web.bind.annotation.RestController;[m
[31m-[m
[31m-@RestController[m
[31m-@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)[m
[31m-public class YolchatApplication {[m
[31m-[m
[31m-	@RequestMapping("/")[m
[31m-	String home() {[m
[31m-		return "Hello World!";[m
[31m-	}[m
[31m-[m
[31m-	public static void main(String[] args) {[m
[31m-		SpringApplication.run(YolchatApplication.class, args);[m
[31m-	}[m
[31m-[m
[31m-}[m
[1mdiff --git a/src/main/java/com/chat/yolchat/api/MemberApiController.java b/yolchat/src/main/java/com/chat/yolchat/api/MemberApiController.java[m
[1msimilarity index 100%[m
[1mrename from src/main/java/com/chat/yolchat/api/MemberApiController.java[m
[1mrename to yolchat/src/main/java/com/chat/yolchat/api/MemberApiController.java[m
[1mdiff --git a/src/main/java/com/chat/yolchat/controller/MemberController.java b/yolchat/src/main/java/com/chat/yolchat/controller/MemberController.java[m
[1msimilarity index 100%[m
[1mrename from src/main/java/com/chat/yolchat/controller/MemberController.java[m
[1mrename to yolchat/src/main/java/com/chat/yolchat/controller/MemberController.java[m
[1mdiff --git a/src/main/java/com/chat/yolchat/controller/MemberForm.java b/yolchat/src/main/java/com/chat/yolchat/controller/MemberForm.java[m
[1msimilarity index 100%[m
[1mrename from src/main/java/com/chat/yolchat/controller/MemberForm.java[m
[1mrename to yolchat/src/main/java/com/chat/yolchat/controller/MemberForm.java[m
[1mdiff --git a/src/main/java/com/chat/yolchat/domain/Member.java b/yolchat/src/main/java/com/chat/yolchat/domain/Member.java[m
[1msimilarity index 100%[m
[1mrename from src/main/java/com/chat/yolchat/domain/Member.java[m
[1mrename to yolchat/src/main/java/com/chat/yolchat/domain/Member.java[m
[1mdiff --git a/yolchat/src/test/java/com/chat/yolchat/YolchatApplicationTests.java b/yolchat/src/test/java/com/chat/yolchat/YolchatApplicationTests.java[m
[1mdeleted file mode 100644[m
[1mindex bd4aca1..0000000[m
[1m--- a/yolchat/src/test/java/com/chat/yolchat/YolchatApplicationTests.java[m
[1m+++ /dev/null[m
[36m@@ -1,13 +0,0 @@[m
[31m-package com.chat.yolchat;[m
[31m-[m
[31m-import org.junit.jupiter.api.Test;[m
[31m-import org.springframework.boot.test.context.SpringBootTest;[m
[31m-[m
[31m-@SpringBootTest[m
[31m-class YolchatApplicationTests {[m
[31m-[m
[31m-	@Test[m
[31m-	void contextLoads() {[m
[31m-	}[m
[31m-[m
[31m-}[m
