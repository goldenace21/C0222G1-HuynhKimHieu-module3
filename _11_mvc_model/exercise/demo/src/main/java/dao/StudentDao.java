package dao;

import model.Student;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class StudentDao {
    private static Map<Integer , Student> studentMap= new HashMap<>();


    static {

        studentMap.put(1, new Student(1,"john","12/11/1999"));
        studentMap.put(2, new Student(2,"david","05/12/1989"));
        studentMap.put(3, new Student(3,"steven","09/10/1978"));
    }

    public static List<Student> getListStudent() {
        return new ArrayList<>(studentMap.values());
    }

    public static void save( Student student) {
        studentMap.put(student.getId(), student);
    }

    public static Student findById(Integer id) {
        return studentMap.get(id);

    }

    public static void deleteById(Integer id) {
        studentMap.remove(id);
    }
}


