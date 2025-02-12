package top.zfmx.aipaike.config.handler;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import top.zfmx.aipaike.response.CommonResponseResult;

import java.io.IOException;

public class CommonLogoutSuccessHandler implements LogoutSuccessHandler {
    @Override
    public void onLogoutSuccess(HttpServletRequest request,
                                HttpServletResponse response,
                                Authentication authentication)
            throws IOException {
        response.setContentType("application/json;charset=utf-8");
        CommonResponseResult<String> result = CommonResponseResult.success("登出成功", null);
        response.getWriter().println(result);
    }
}
