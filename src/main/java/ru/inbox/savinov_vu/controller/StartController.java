package ru.inbox.savinov_vu.controller;


import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ru.inbox.savinov_vu.model.Person;
import ru.inbox.savinov_vu.service.person.PersonService;

@Controller
@Slf4j
public class StartController {
    @Autowired
    PersonService personService;

    @GetMapping("/")
    public String start(Model model) {
        log.debug("\nget startPage");
        model.addAttribute("persons", personService.getAll());
        return "start";
    }

    @GetMapping("/add")
    public String add(Model model, Person person) {
        log.debug("\nget startPage");
        model.addAttribute("persons", personService.getAll());
        return "start";
    }


}
