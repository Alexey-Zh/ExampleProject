package com.alexeyzh.models;

public class User {
    private long id;
    private String name;
    private int age;
    boolean Admin;

    public User() {
    }

    public User(long id, String name, int age, boolean admin) {
        this.id = id;
        this.name = name;
        this.age = age;
        Admin = admin;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public boolean isAdmin() {
        return Admin;
    }

    public void setAdmin(boolean admin) {
        Admin = admin;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", Admin=" + Admin +
                '}';
    }
}