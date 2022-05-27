package model;

public class Customer {
    private String name;
    private String birthday;
    private String address;
    private String path;

    public Customer(String name, String birthday, String address, String path) {
        this.name = name;
        this.birthday = birthday;
        this.address = address;
        this.path = path;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    @Override
    public String toString() {
        return "customer{" +
                "name='" + name + '\'' +
                ", birthday='" + birthday + '\'' +
                ", address='" + address + '\'' +
                ", path='" + path + '\'' +
                '}';
    }
}


