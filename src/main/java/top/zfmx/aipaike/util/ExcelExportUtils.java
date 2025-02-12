package top.zfmx.aipaike.util;

import jakarta.servlet.http.HttpServletResponse;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.IOException;
import java.util.List;
import java.util.function.Function;

/**
 * Excel相关工具
 *
 * @author zfmx
 * @version 0.0.1
 **/
public class ExcelExportUtils {

    /**
     * 导出Excel表格
     *
     * @param fileName  文件名
     * @param sheetName 工作表名称
     * @param headers   表头数组
     * @param dataList  数据列表
     * @param response  HttpServletResponse
     */
    public static <T> void exportExcel(String fileName, String sheetName, String[] headers,
                                       List<T> dataList, Function<T, String[]> dataMapper,
                                       HttpServletResponse response) {
        try {
            setExcelResponseProp(fileName, response);
            try (Workbook workbook = new XSSFWorkbook()) {
                Sheet sheet = workbook.createSheet(sheetName);

                CellStyle headerStyle = createHeaderStyle(workbook);
                CellStyle bodyStyle = createBodyStyle(workbook);
                createHeaderRow(sheet, headers, headerStyle);
                fillDataRows(sheet, dataList, dataMapper, bodyStyle);

                workbook.write(response.getOutputStream());
            }
        } catch (IOException e) {
            throw new RuntimeException("导出Excel失败", e);
        }
    }

    /**
     * 设置HTTP响应属性
     */
    private static void setExcelResponseProp(String fileName, HttpServletResponse response) {
        response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        response.setHeader("Content-Disposition", "attachment; filename=" + fileName + ".xlsx");
    }

    /**
     * 创建表头样式
     */
    private static CellStyle createHeaderStyle(Workbook workbook) {
        CellStyle headerStyle = workbook.createCellStyle();
        Font headerFont = workbook.createFont();
        headerFont.setBold(true);
        headerFont.setFontHeightInPoints((short) 12);
        headerFont.setColor(IndexedColors.WHITE.getIndex());
        headerStyle.setFillForegroundColor(IndexedColors.GREY_40_PERCENT.getIndex());
        headerStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
        headerStyle.setBorderTop(BorderStyle.THIN);
        headerStyle.setBorderBottom(BorderStyle.THIN);
        headerStyle.setBorderLeft(BorderStyle.THIN);
        headerStyle.setBorderRight(BorderStyle.THIN);
        headerStyle.setTopBorderColor(IndexedColors.BLACK.getIndex());
        headerStyle.setAlignment(HorizontalAlignment.CENTER);
        headerStyle.setVerticalAlignment(VerticalAlignment.CENTER);
        headerStyle.setFont(headerFont);
        return headerStyle;
    }

    /**
     * 创建表身基础样式
     */
    private static CellStyle createBodyStyle(Workbook workbook) {
        CellStyle bodyStyle = workbook.createCellStyle();
        bodyStyle.setBorderTop(BorderStyle.THIN);
        bodyStyle.setBorderBottom(BorderStyle.THIN);
        bodyStyle.setBorderLeft(BorderStyle.THIN);
        bodyStyle.setBorderRight(BorderStyle.THIN);
        bodyStyle.setTopBorderColor(IndexedColors.GREY_50_PERCENT.getIndex());
        bodyStyle.setVerticalAlignment(VerticalAlignment.CENTER);
        bodyStyle.setWrapText(true);  // 自动换行
        return bodyStyle;
    }

    /**
     * 创建表头行
     */
    private static void createHeaderRow(Sheet sheet, String[] headers, CellStyle headerStyle) {
        Row headerRow = sheet.createRow(0);
        for (int i = 0; i < headers.length; i++) {
            Cell cell = headerRow.createCell(i);
            cell.setCellValue(headers[i]);
            cell.setCellStyle(headerStyle);
            sheet.setColumnWidth(i, 5000);  // 初始列宽
        }
    }

    /**
     * 填充数据行
     */
    private static <T> void fillDataRows(Sheet sheet, List<T> dataList, Function<T, String[]> dataMapper, CellStyle bodyStyle) {
        int rowNum = 1;
        for (T data : dataList) {
            Row row = sheet.createRow(rowNum++);
            row.setHeight((short) -1);  // 自动行高

            // 使用dataMapper将T转换为String[]
            String[] rowData = dataMapper.apply(data);

            // 填充数据
            for (int i = 0; i < rowData.length; i++) {
                Cell cell = row.createCell(i);
                cell.setCellValue(rowData[i]);
                cell.setCellStyle(bodyStyle);
            }

            // 自动调整列宽
            for (int i = 0; i < rowData.length; i++) {
                sheet.autoSizeColumn(i);
                sheet.setColumnWidth(i, sheet.getColumnWidth(i) + 1000);  // 自动宽度+额外边距
            }
        }
    }
}
