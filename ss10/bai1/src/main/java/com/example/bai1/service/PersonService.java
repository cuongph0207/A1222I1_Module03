package com.example.bai1.service;

import com.example.bai1.model.Person;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class PersonService {
    private static Map<Integer, Person> customerMap;

    static {
        customerMap = new HashMap<>();
        customerMap.put(1, new Person("Mai Văn Hoàn", "20/08/1983", "Hà Nội", "/image/cuongmohinh.png"));
        customerMap.put(2, new Person("Nguyễn Văn Nam", "21/08/1983", "Bắc Giang", "/image/cuongmohinh.png"));
        customerMap.put(3, new Person("Nguyễn Thái Hòa", "22/08/1983", "Nam Định", "/image/cuongmohinh.png"));
        customerMap.put(4, new Person("Trần Đăng Khoa", "17/08/1983", "Hà Tây", "/image/cuongmohinh.png"));
        customerMap.put(5, new Person("Nguyễn Đình Thi", "19/09/2003", "Hà Nội", "/image/cuongmohinh.png"));
    }

    public List<Person> getList() {
        return new ArrayList<>(customerMap.values());
    }

}
