package top.zfmx.aipaike.util;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwtBuilder;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;

import javax.crypto.SecretKey;
import java.nio.charset.StandardCharsets;
import java.util.Date;
import java.util.UUID;

/**
 * jwt 相关工具
 * @author zfmx
 * @version 0.0.1
 **/
public class JwtUtils {

    private static final String SECRET = "zfmxSecretaljlawjefljawlefjalwekjflajefa";
    private static final long EXPIRATION = 86400000;

    /**
     * 创建token
     * @param subject 内容
     * @return String类型的token
     */
    public static String createToken(String subject){
        return getJwtBuilder(subject, null, getUUID()).compact();
    }

    /**
     * 创建token
     * @param subject 内容
     * @param ttlMillis 生存时间
     * @return String类型的token
     */
    public static String createToken(String subject, Long ttlMillis){
        return getJwtBuilder(subject, ttlMillis, getUUID()).compact();
    }

    /**
     * 创建token
     * @param subject 内容
     * @param ttlMillis 生存时间
     * @param uuid uuid
     * @return String类型的token
     */
    public static String createToken(String subject, Long ttlMillis, String uuid){
        return getJwtBuilder(subject, ttlMillis, uuid).compact();
    }

    /**
     * 通过token返回用户名
     * @param token token
     * @return 用户名
     */
    public static String getUsernameFromToken(String token){
        Claims claims = parseToken(token);
        return claims.getSubject();
    }

    /**
     * 验证token是否有效
     * @param token token
     * @return 是否有效
     */
    public static boolean validateToken(String token){
        try{
            Claims claims = parseToken(token);
            return !claims.getExpiration().before(new Date());
        }catch (Exception e){
            return false;
        }
    }

    /**
     * 解码jwt
     * @param token jwt token
     * @return payload
     */
    private static Claims parseToken(String token){
        SecretKey secretKey = Keys.hmacShaKeyFor(SECRET.getBytes(StandardCharsets.UTF_8));
        return Jwts.parser()
                .verifyWith(secretKey)
                .build()
                .parseSignedClaims(token)
                .getPayload();
    }


    /**
     * 获取Jwt生成器
     * @param subject 内容
     * @param ttlMillis 生存时间
     * @param uuid uuid
     * @return jwt生成器
     */
    private static JwtBuilder getJwtBuilder(String subject, Long ttlMillis, String uuid) {
        SecretKey secretKey = Keys.hmacShaKeyFor(SECRET.getBytes(StandardCharsets.UTF_8));
        ttlMillis = ttlMillis == null ? EXPIRATION : ttlMillis;

        long nowMillis = System.currentTimeMillis();
        Date now = new Date(nowMillis);

        long expMillis = nowMillis + ttlMillis;
        Date exp = new Date(expMillis);
        return Jwts.builder()
                .id(uuid)
                .subject(subject)
                .issuer("zfmx")
                .issuedAt(now)
                .signWith(secretKey)
                .expiration(exp);
    }

    /**
     * 生成uuid
     * @return uuid
     */
    private static String getUUID(){
        return UUID.randomUUID().toString().replace("-", "");
    }

}
