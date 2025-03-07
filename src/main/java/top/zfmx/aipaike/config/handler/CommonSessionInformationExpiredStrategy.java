package top.zfmx.aipaike.config.handler;

import org.springframework.security.web.session.SessionInformationExpiredEvent;
import org.springframework.security.web.session.SessionInformationExpiredStrategy;
import top.zfmx.aipaike.response.CommonResponseResult;

import java.io.IOException;

public class CommonSessionInformationExpiredStrategy
        implements SessionInformationExpiredStrategy {
    @Override
    public void onExpiredSessionDetected(SessionInformationExpiredEvent event)
            throws IOException {
        event.getResponse().setContentType("application/json;charset=utf-8");
        CommonResponseResult<String> result = CommonResponseResult.unauthorized("您的账号已在其他地方登录！");
        event.getResponse().getWriter().println(result);
    }
}
