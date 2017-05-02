package ru.inbox.savinov_vu.model;

import lombok.*;
import org.springframework.data.domain.Persistable;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "persons")
@Access(value = AccessType.FIELD)
@Data
@NoArgsConstructor
@ToString
@EqualsAndHashCode
public class Person implements Persistable<Integer> {

    @Id
    @SequenceGenerator(name = "GLOBAL_SEQ", sequenceName = "GLOBAL_SEQ", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "GLOBAL_SEQ")
    Integer id;

    private @NonNull  String login;

    private @NonNull String password;

    private @NonNull  LocalDate birthDate;

    public Person(String login, String password, LocalDate birthDate) {
        this.login = login;
        this.password = password;
        this.birthDate = birthDate;
    }

    @Override
    public boolean isNew() {
        return false;
    }


}
