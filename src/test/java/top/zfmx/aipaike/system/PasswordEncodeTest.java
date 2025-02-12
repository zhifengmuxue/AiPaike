package top.zfmx.aipaike.system;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import top.zfmx.aipaike.AiPaikeApplication;

/**
 * @author zfmx
 * @version 0.0.1
 **/
@SpringBootTest(classes = AiPaikeApplication.class)
public class PasswordEncodeTest {
    @Test
    public void Password(){
        PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        System.out.println(passwordEncoder.encode("123456"));
    }
}
