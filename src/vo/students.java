package vo;

public class students {
    private String studentId;
    private String studentName;
    private String studentPaw;
    private String sex;
    private int classId;
    private String className;

    public students() {
    }


    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getStudentPaw() {
        return studentPaw;
    }

    public void setStudentPaw(String studentPaw) {
        this.studentPaw = studentPaw;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getClassId() {
        return classId;
    }

    public void setClassId(int classId) {
        this.classId = classId;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    @Override
    public String toString() {
        return "students{" +
                "studentId='" + studentId + '\'' +
                ", studentName='" + studentName + '\'' +
                ", studentPaw='" + studentPaw + '\'' +
                ", sex='" + sex + '\'' +
                ", classId='" + classId + '\'' +
                ", className='" + className + '\'' +
                '}';
    }
}
