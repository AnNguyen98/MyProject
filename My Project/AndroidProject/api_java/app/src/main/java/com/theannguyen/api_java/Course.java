package com.theannguyen.api_java;

import java.util.Objects;

public class Course {
    private int id;
    private String name;
    private String url;

    public Course(String name, String url) {
        this.name = name;
        this.url = url;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getUrl() {
        return url;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Course)) return false;
        Course course = (Course) o;
        return getId() == course.getId() &&
                Objects.equals(getName(), course.getName()) &&
                Objects.equals(getUrl(), course.getUrl());
    }

    @Override
    public int hashCode() {

        return Objects.hash(getId(), getName(), getUrl());
    }
}
