package top.zfmx.aipaike.config.handler;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import top.zfmx.aipaike.response.CommonResponseResult;

import java.io.IOException;

public class CommonAuthenticationEntryPoint implements AuthenticationEntryPoint {
    @Override
    public void commence(HttpServletRequest request,
                         HttpServletResponse response,
                         AuthenticationException authException)
            throws IOException {
        response.setContentType("application/json;charset=utf-8");
        CommonResponseResult<String> result =
                CommonResponseResult.unauthorized(authException.getLocalizedMessage());
        response.getWriter().println(result);
    }
}
