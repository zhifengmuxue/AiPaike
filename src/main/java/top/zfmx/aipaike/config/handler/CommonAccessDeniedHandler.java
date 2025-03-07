package top.zfmx.aipaike.config.handler;


import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.web.access.AccessDeniedHandler;
import top.zfmx.aipaike.response.CommonResponseResult;

import java.io.IOException;

public class CommonAccessDeniedHandler implements AccessDeniedHandler {
    @Override
    public void handle(HttpServletRequest request,
                       HttpServletResponse response,
                       AccessDeniedException accessDeniedException)
            throws IOException {
        response.setContentType("application/json;charset=utf-8");
        CommonResponseResult<String> result = CommonResponseResult.forbidden("权限不足，请联系管理员！");
        response.getWriter().println(result);
    }
}
