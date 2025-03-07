package top.zfmx.aipaike.config.handler;


import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import top.zfmx.aipaike.response.CommonResponseResult;

import java.io.IOException;

public class CommonAuthenticationFailureHandler implements AuthenticationFailureHandler {

    @Override
    public void onAuthenticationFailure(HttpServletRequest request,
                                        HttpServletResponse response,
                                        AuthenticationException exception)
            throws IOException {
        response.setContentType("application/json;charset=utf-8");

        String localizeMessage = exception.getLocalizedMessage();
        CommonResponseResult<String> result = CommonResponseResult.unauthorized(localizeMessage);

        response.getWriter().println(result);
    }
}
