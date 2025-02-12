package top.zfmx.aipaike.response;

import com.alibaba.fastjson2.JSON;

import java.util.HashMap;

/**
 * 统一返回结果 采用记录类
 * @param <T> 返回数据类型
 *           code: 状态码
 *           msg: 返回消息
 *           data: 返回数据
 */
public record CommonResponseResult<T>(Integer code, String msg, T data) {

    public static <T> CommonResponseResult<T> success(String msg, T data) {
        return new CommonResponseResult<>(200, msg, data);
    }

    public static <T> CommonResponseResult<T> unauthorized(T data) {
        return new CommonResponseResult<>(401, "未授权", data);
    }

    public static <T> CommonResponseResult<T> forbidden(String msg) {
        return new CommonResponseResult<>(403, msg, null);
    }

    @Override
    public String toString() {
        HashMap<String, Object> map = new HashMap<>();
        map.put("code", this.code());
        map.put("msg", this.msg());
        map.put("data", this.data());
        return JSON.toJSONString(map);
    }
}
