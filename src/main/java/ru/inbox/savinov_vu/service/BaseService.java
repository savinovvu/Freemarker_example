package ru.inbox.savinov_vu.service;

import java.util.List;

public interface BaseService<T> {

    T addOrUpdate(T t);


    T delete(Integer id);

    List<T> getAll();

}
