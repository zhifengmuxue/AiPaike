package top.zfmx.aipaike.controller;


import jakarta.annotation.Resource;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.security.web.PortResolverImpl;
import org.springframework.web.bind.annotation.*;
import top.zfmx.aipaike.entity.ClassResult;
import top.zfmx.aipaike.service.ClassResultService;
import top.zfmx.aipaike.util.ExcelExportUtils;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;

/**
 * 导出表格
 *
 * @author zfmx
 * @version 0.0.1
 **/
@RestController
public class ExportController {

    @Resource
    private ClassResultService classResultService;

    /**
     * 通过poi操作excel
     * @param fileName 文件名
     * @param response 响应体
     */
    @GetMapping("/export")
    public void export(@RequestParam("fileName") String fileName, HttpServletResponse response) {
        String[] headers = {"课程编号", "任课教师", "教室编号", "星期", "开始时间", "结束时间", "开始周次", "结束周次"};
        List<ClassResult> dataList = classResultService.list();
        ExcelExportUtils.exportExcel(fileName, "课程安排", headers, dataList, dataMapper, response);
    }

    Function<ClassResult, String[]> dataMapper = dto -> new String[]{
            String.valueOf(dto.getId()),
            dto.getTeacher(),
            dto.getClassroomId(),
            String.valueOf(dto.getWeek()),
            String.valueOf(dto.getStartTime()),
            String.valueOf(dto.getEndTime()),
            String.valueOf(dto.getStartWeek()),
            String.valueOf(dto.getEndWeek())
    };
}
