package top.zfmx.aipaike.controller;

import org.springframework.ai.chat.client.ChatClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import top.zfmx.aipaike.response.CommonResponseResult;

/**
 * ai agent 智能对话
 *
 * @author zfmx
 * @version 0.0.1
 **/
@RestController
@RequestMapping("/agent")
public class AgentController {
    private final ChatClient dashScopeChatClient;

    public AgentController(ChatClient.Builder builder) {
        this.dashScopeChatClient = builder.build();
    }

//    @GetMapping("/chat")
//    public Flux<String> chat(@RequestParam(value = "query", defaultValue = "介绍一下你自己") String query) {
//        return dashScopeChatClient.prompt().user(query).stream().content();
//    }

    @GetMapping("/chat")
    public CommonResponseResult<String> chat(@RequestParam(value = "query") String message) {
        String resp = dashScopeChatClient.prompt().user(message).call().content();
        return CommonResponseResult.success("success", resp);
    }
    
}
