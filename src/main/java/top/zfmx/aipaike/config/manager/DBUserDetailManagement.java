package top.zfmx.aipaike.config.manager;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsPasswordService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.provisioning.UserDetailsManager;
import org.springframework.stereotype.Component;
import top.zfmx.aipaike.entity.SystemUser;
import top.zfmx.aipaike.mapper.SystemUserMapper;

@Component
public class DBUserDetailManagement implements UserDetailsManager, UserDetailsPasswordService {

    private final SystemUserMapper systemUserMapper;

    @Autowired
    public DBUserDetailManagement(SystemUserMapper systemUserMapper) {
        this.systemUserMapper = systemUserMapper;
    }

    @Override
    public UserDetails updatePassword(UserDetails user, String newPassword) {
        return null;
    }

    @Override
    public void createUser(UserDetails user) {

    }

    @Override
    public void updateUser(UserDetails user) {

    }

    @Override
    public void deleteUser(String username) {

    }

    @Override
    public void changePassword(String oldPassword, String newPassword) {

    }

    @Override
    public boolean userExists(String username) {
        return false;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        QueryWrapper<SystemUser> userQueryWrapper = new QueryWrapper<>();
        userQueryWrapper.eq("username", username);
        SystemUser user = systemUserMapper.selectOne(userQueryWrapper);
        if (user == null){
            throw new UsernameNotFoundException("用户不存在");
        }

        return User.withUsername(user.getUsername())
                .password(user.getPassword())
                .disabled(!user.isEnable())
                .credentialsExpired(false)
                .accountLocked(false)
                .roles(user.getRole())
                .build();
    }
}
