package model;

public class Employee {
    private int id;
    private String name;
    private String birthday;
    private String idCard;
    private double salary;
    private String phoneNumber;
    private String email;
    private String address;
    private int idPosition;
    private int idEducation;
    private int idDivision;
    private String userName;

    public Employee(int id, String name, String birthday, String idCard, double salary, String phoneNumber, String email, String address, int idPosition, int idEducation, int idDivision, String userName) {
        this.id = id;
        this.name = name;
        this.birthday = birthday;
        this.idCard = idCard;
        this.salary = salary;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
        this.idPosition = idPosition;
        this.idEducation = idEducation;
        this.idDivision = idDivision;
        this.userName = userName;
    }

    public Employee(String name, String birthday, String idCard, double salary, String phoneNumber, String email, String address, int idPosition, int idEducation, int idDivision, String userName) {
        this.name = name;
        this.birthday = birthday;
        this.idCard = idCard;
        this.salary = salary;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
        this.idPosition = idPosition;
        this.idEducation = idEducation;
        this.idDivision = idDivision;
        this.userName = userName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getIdPosition() {
        return idPosition;
    }

    public void setIdPosition(int idPosition) {
        this.idPosition = idPosition;
    }

    public int getIdEducation() {
        return idEducation;
    }

    public void setIdEducation(int idEducation) {
        this.idEducation = idEducation;
    }

    public int getIdDivision() {
        return idDivision;
    }

    public void setIdDivision(int idDivision) {
        this.idDivision = idDivision;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
