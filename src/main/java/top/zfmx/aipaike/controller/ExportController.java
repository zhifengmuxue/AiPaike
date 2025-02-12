package top.zfmx.aipaike.controller;


import jakarta.servlet.http.HttpServletResponse;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.web.bind.annotation.*;
import top.zfmx.aipaike.entity.ClassResult;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

/**
 * 导出表格
 *
 * @author zfmx
 * @version 0.0.1
 **/
@RestController
public class ExportController {

    /**
     * 通过poi操作excel
     * @param fileName 文件名
     * @param response 响应体
     */
    @GetMapping("/export")
    public void export(@RequestParam("fileName") String fileName, HttpServletResponse response) {
        try {
            setExcelResponseProp(fileName, response);
            // 使用 try-with-resources 自动关闭资源
            try (Workbook workbook = new XSSFWorkbook()) {
                Sheet sheet = workbook.createSheet("课程安排");

                // 创建表头
                Row headerRow = sheet.createRow(0);
                String[] headers = {"ID", "周数", "教室ID", "开始时间", "结束时间", "教师", "开始周", "结束周"};
                for (int i = 0; i < headers.length; i++) {
                    Cell cell = headerRow.createCell(i);
                    cell.setCellValue(headers[i]);
                }

                // TODO 填充数据
                List<ClassResult> dataList = data();

                int rowNum = 1;
                for (ClassResult dto : dataList) {
                    Row row = sheet.createRow(rowNum++);
                    row.createCell(0).setCellValue(dto.getId());
                    row.createCell(1).setCellValue(dto.getWeek());
                    row.createCell(2).setCellValue(dto.getClassroomId());
                    row.createCell(3).setCellValue(dto.getStartTime());
                    row.createCell(4).setCellValue(dto.getEndTime());
                    row.createCell(5).setCellValue(dto.getTeacher());
                    row.createCell(6).setCellValue(dto.getStartWeek());
                    row.createCell(7).setCellValue(dto.getEndWeek());
                }

                // 写入输出流
                workbook.write(response.getOutputStream());
            }
        } catch (IOException e) {
            throw new RuntimeException("导出Excel失败", e);
        }
    }

    private List<ClassResult> data(){
        List<ClassResult> list = new ArrayList<>();
        for (int i = 0 ; i < 10; i++){
            ClassResult data = new ClassResult();
            data.setId((long) i);
            data.setWeek(i);
            data.setClassroomId("Class_room" + i);
            data.setEndTime(i+3);
            data.setStartTime(i);
            data.setTeacher("teacher_" + i);
            data.setStartWeek("week_" + i);
            data.setEndWeek("week_" + i);
            list.add(data);
        }
        return list;
    }

    /**
     * 设置响应结果
     *
     * @param rawFileName 源文件名
     * @param response 响应体
     * @throws UnsupportedEncodingException 不支持编码异常
     */
    private void setExcelResponseProp(String rawFileName,HttpServletResponse response) throws UnsupportedEncodingException {
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        response.setCharacterEncoding("utf-8");
        String fileName = URLEncoder.encode(rawFileName, StandardCharsets.UTF_8).replaceAll("\\+", "%20");
        response.setHeader("Content-Disposition", "attachment;filename*=utf-8''" + fileName + ".xlsx");
    }
}
