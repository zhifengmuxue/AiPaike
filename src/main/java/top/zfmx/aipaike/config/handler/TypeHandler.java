package top.zfmx.aipaike.config.handler;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;
import org.springframework.stereotype.Component;

import java.sql.*;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
@Component
@MappedTypes(List.class) // 声明处理的 Java 类型
@MappedJdbcTypes(JdbcType.VARCHAR) // 声明处理的 JDBC 类型
public class TypeHandler extends BaseTypeHandler<List<String>> {

    // 将 List<String> 转换为 String 存入数据库
    @Override
    public void setNonNullParameter(PreparedStatement ps, int i,
                                    List<String> parameter, JdbcType jdbcType) throws SQLException {
        String value = String.join(",", parameter);
        ps.setString(i, value);
    }

    // 从数据库读取 String 并转为 List<String>
    @Override
    public List<String> getNullableResult(ResultSet rs, String columnName) throws SQLException {
        String value = rs.getString(columnName);
        return convertStringToList(value);
    }

    @Override
    public List<String> getNullableResult(ResultSet rs, int columnIndex) throws SQLException {
        String value = rs.getString(columnIndex);
        return convertStringToList(value);
    }

    @Override
    public List<String> getNullableResult(CallableStatement cs, int columnIndex) throws SQLException {
        String value = cs.getString(columnIndex);
        return convertStringToList(value);
    }

    // 工具方法：处理字符串分割和空值
    private List<String> convertStringToList(String value) {
        if (value == null || value.trim().isEmpty()) {
            return Collections.emptyList();
        }
        return Arrays.asList(value.split(","));
    }
}