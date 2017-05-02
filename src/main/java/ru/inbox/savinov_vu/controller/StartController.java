package ru.inbox.savinov_vu.controller;


import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.inbox.savinov_vu.model.Person;
import ru.inbox.savinov_vu.service.person.PersonService;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

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

    @PostMapping("add")
    public String add(Model model,HttpServletRequest request) {
        log.debug("\nadd person");
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        String birthdate = request.getParameter("birthdate");
        LocalDate date = LocalDate.parse(birthdate,  DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        Person person = personService.addOrUpdate(new Person(login, password, date));
        log.debug(person + " added in bd");
        return "redirect:/";
    }


}
