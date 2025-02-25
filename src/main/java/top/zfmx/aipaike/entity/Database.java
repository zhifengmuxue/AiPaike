package top.zfmx.aipaike.entity;

import java.sql.*;
import java.util.*;
import top.zfmx.aipaike.entity.*;
public class Database {
    private final Connection connection;

    public Database(String url, String user, String password) throws SQLException {
        this.connection = DriverManager.getConnection(url, user, password);
    }

    //读取数据
    public List<Course> getCourses() throws SQLException {
        List<Course> courses = new ArrayList<>();
        try (Statement stmt = connection.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM courses")) {
            while (rs.next()) {
                courses.add(new Course(
                        rs.getString("courseId"),
                        rs.getString("courseType"),
                        rs.getString("campus"),
                        rs.getString("roomType"),
                        rs.getString("department")
                ));
            }
        }
        return courses;
    }

    public String findClassroom(String roomType, String campus, int capacity)
            throws SQLException {

        // 存储符合条件的教室ID列表
        List<String> validClassrooms = new ArrayList<>();

        // 使用预编译语句防止SQL注入
        String query = "SELECT roomId FROM classroom WHERE roomType=? AND campus=? AND maxCapacity >= ?";

        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            // 设置参数
            pstmt.setString(1, roomType);
            pstmt.setString(2, campus);
            pstmt.setInt(3, capacity);

            // 执行查询
            try (ResultSet rs = pstmt.executeQuery()) {
                while (rs.next()) {
                    validClassrooms.add(rs.getString("roomId"));
                }
            }
        }

        // 随机选择并返回
        if (!validClassrooms.isEmpty()) {
            Random rand = new Random();
            return validClassrooms.get(rand.nextInt(validClassrooms.size()));
        } else {
            return null; // 或抛出异常
        }
    }

    public int getCapacityByID(String roomID) throws SQLException {
        int capacity = 0;
        // 使用预编译语句防止 SQL 注入
        String query = "SELECT maxCapacity FROM classroom WHERE roomID =?";

        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            // 设置参数
            pstmt.setString(1, roomID);

            // 执行查询
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    // 获取容量值
                    capacity = rs.getInt("maxCapacity");
                }
            }
        }
        return capacity;
    }
    public List<Classroom> getClassrooms() throws SQLException {
        List<Classroom> classrooms = new ArrayList<>();
        try (Statement stmt = connection.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM classroom")) {
            while (rs.next()) {
                classrooms.add(new Classroom(
                        rs.getString("roomId"),
                        rs.getString("campus"),
                        rs.getString("roomType"),
                        rs.getInt("maxCapacity")
                ));
            }
        }
        return classrooms;
    }

    public List<Schedules> getSchedules() throws SQLException {
        List<Schedules> schedules = new ArrayList<>();
        try (Statement stmt = connection.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM schedules")) {
            while (rs.next()) {
                schedules.add(new Schedules(
                        rs.getString("course_id"),
                        rs.getString("teacher"),
                        rs.getString("class"),
                        rs.getInt("student_count"),
                        rs.getInt("weekBegin"),
                        rs.getInt("weekEnd"),
                        rs.getInt("weekTimes"),
                        rs.getInt("consecutiveSections")
                ));
            }
        }
        return schedules;
    }

    public void close() throws SQLException {
        if (connection != null && !connection.isClosed()) {
            connection.close();
        }
    }

    public Map<String, String> getCourseDetailsById(String courseId) throws SQLException {
        Map<String, String> details = new HashMap<>();
        String query = "SELECT campus, roomType FROM courses WHERE courseId = ?";

        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setString(1, courseId);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    details.put("campus", rs.getString("campus"));
                    details.put("roomType", rs.getString("roomType"));
                }
            }
        }

        return details.isEmpty() ? null : details;
    }

    public static void main(String[] args) {
        Database db = null;

        try {
            // 1. 建立数据库连接
            db = new Database("jdbc:mysql://localhost:3306/aipaike", "root", "123456");

            // 2. 获取并打印课程数据
            System.out.println("Courses:");
            for (Course course : db.getCourses()) {

                System.out.println(course);
            }

            // 3. 获取并打印教室数据
            System.out.println("\nClassrooms:");
            for (Classroom room : db.getClassrooms()) {
                System.out.println(room);
            }

            // 4. 获取并打印课程安排数据
            System.out.println("\nSchedules:");
            for (Schedules schedule : db.getSchedules()) {
                System.out.println(schedule);
            }

        } catch (SQLException e) {
            // 处理所有数据库相关异常
            System.err.println("数据库操作失败: " + e.getMessage());
            e.printStackTrace();

        } finally {
            // 5. 确保关闭数据库连接
            if (db != null) {
                try {
                    db.close();
                } catch (SQLException e) {
                    System.err.println("关闭数据库连接失败: " + e.getMessage());
                }
            }
        }
    }
}


