package ru.inbox.savinov_vu.service.person;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.inbox.savinov_vu.model.Person;
import ru.inbox.savinov_vu.repository.PersonRepository;

import java.util.List;

@Service
public class PersonServiceImpl implements PersonService {
    @Autowired
    PersonRepository repository;

    @Override
    public Person addOrUpdate(Person person) {
        return repository.saveAndFlush(person);
    }

    @Override
    public Person delete(Integer id) {
        Person person = repository.findOne(id);
        repository.delete(id);
        return person;
    }

    @Override
    public List<Person> getAll() {
        return repository.findAll();
    }
}
