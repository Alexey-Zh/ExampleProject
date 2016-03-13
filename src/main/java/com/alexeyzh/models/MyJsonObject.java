package com.alexeyzh.models;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class MyJsonObject {

    private String type;
    private Value value;
    private long id;
    private String quote;

    public long getId() {
        return value.getId();
    }

    public String getQuote() {
        return value.getQuote();
    }

    public MyJsonObject() {
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Value getValue() {
        return value;
    }

    public void setValue(Value value) {
        this.value = value;
    }

    @Override
    public String toString() {
        return "MyJsonObject{" +
                "type='" + type + '\'' +
                ", value=" + value +
                '}';
    }

}

@JsonIgnoreProperties(ignoreUnknown = true)
class Value {

    private Long id;
    private String quote;

    public Value() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getQuote() {
        return quote;
    }

    public void setQuote(String quote) {
        this.quote = quote;
    }

    @Override
    public String toString() {
        return "Value{" +
                "id=" + id +
                ", quote='" + quote + '\'' +
                '}';
    }
}
