package top.zfmx.aipaike.config.handler;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import top.zfmx.aipaike.response.CommonResponseResult;
import top.zfmx.aipaike.util.JwtUtils;

import java.io.IOException;
import java.util.Map;

public class CommonAuthenticationSuccessHandler implements AuthenticationSuccessHandler {
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request,
                                        HttpServletResponse response,
                                        Authentication authentication)
            throws IOException {
        response.setContentType("application/json;charset=utf-8");

        var principal = authentication.getPrincipal();
        var username = ((org.springframework.security.core.userdetails.User) principal).getUsername();
        var token = JwtUtils.createToken(username);

        var data = Map.of("principal", principal, "token", token);

        response.getWriter().println(CommonResponseResult.success("登录成功", data));
    }
}
