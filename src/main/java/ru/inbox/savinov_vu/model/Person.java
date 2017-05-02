package ru.inbox.savinov_vu.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.domain.Persistable;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "persons")
@Access(value = AccessType.FIELD)
@Data
@NoArgsConstructor
public class Person  implements Persistable<Integer> {

    @Id
    @SequenceGenerator(name = "GLOBAL_SEQ", sequenceName = "GLOBAL_SEQ", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "GLOBAL_SEQ")
    Integer id;

    String login;

    String password;

    LocalDate birthDate;



    @Override
    public boolean isNew() {
        return false;
    }


}
