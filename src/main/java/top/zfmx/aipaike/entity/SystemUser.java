package top.zfmx.aipaike.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.io.Serial;
import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * SystemUser 系统用户实体类
 *
 * @version 0.0.1
 */

@Getter
@AllArgsConstructor
public class SystemUser implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    @TableId(value = "id",type = IdType.AUTO)
    private long id;
    private final String username;
    private final String password;
    private final String role;  //todo 后续需要处理
    private final boolean isEnable;
    private final LocalDateTime createTime;
    private final LocalDateTime updateTime;

}
