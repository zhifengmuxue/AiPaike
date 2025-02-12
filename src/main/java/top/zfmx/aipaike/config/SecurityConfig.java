package top.zfmx.aipaike.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.web.SecurityFilterChain;
import top.zfmx.aipaike.config.handler.*;

/**
 * 安全配置类
 *
 * @author zfmx
 * @version 0.0.1
 **/

@Configuration
public class SecurityConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {

        // 权限设置
        http.authorizeHttpRequests(
                authorize -> authorize
                        .requestMatchers("/export").permitAll()
                        .anyRequest().authenticated()
        );

        // 登录设置
        http.formLogin(login -> login
                .loginPage("/login").permitAll()
                .successHandler(new CommonAuthenticationSuccessHandler())
                .failureHandler(new CommonAuthenticationFailureHandler()));

        // 登出设置
        http.logout(logout -> logout.permitAll()
                .logoutSuccessHandler(new CommonLogoutSuccessHandler()));

        // 异常处理
        http.exceptionHandling(exception -> exception
                .authenticationEntryPoint(new CommonAuthenticationEntryPoint())
                .accessDeniedHandler(new CommonAccessDeniedHandler()));

        // session管理
        http.sessionManagement(session -> session
                .maximumSessions(1).expiredSessionStrategy(new CommonSessionInformationExpiredStrategy()));

        http.cors(AbstractHttpConfigurer::disable);
        http.csrf(AbstractHttpConfigurer::disable);

        return http.build();
    }
}
