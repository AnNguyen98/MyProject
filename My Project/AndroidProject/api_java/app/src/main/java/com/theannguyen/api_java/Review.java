package com.theannguyen.api_java;

import java.util.Objects;

public class Review {
    private int id;
    private int courseid;
    private int rating;
    private String comment;

    public Review(int id, int courseid, int rating, String comment) {
        this.id = id;
        this.courseid = courseid;
        this.rating = rating;
        this.comment = comment;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCourseid() {
        return courseid;
    }

    public void setCourseid(int courseid) {
        this.courseid = courseid;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Review)) return false;
        Review review = (Review) o;
        return getId() == review.getId() &&
                getCourseid() == review.getCourseid() &&
                getRating() == review.getRating() &&
                Objects.equals(getComment(), review.getComment());
    }

    @Override
    public int hashCode() {

        return Objects.hash(getId(), getCourseid(), getRating(), getComment());
    }
}
