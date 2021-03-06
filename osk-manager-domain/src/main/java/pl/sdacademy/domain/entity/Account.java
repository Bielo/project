package pl.sdacademy.domain.entity;

import org.hibernate.envers.Audited;
import org.hibernate.validator.constraints.Email;

import javax.persistence.*;
import javax.validation.constraints.NotNull;


@Entity
@Table(name = "ACCOUNT")
@Audited
public class Account {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ACCOUNT_ID")
    private Long id;

    @NotNull
    @Email
    @Column(unique = true, name = "EMAIL")
    private String email;

    @NotNull
    @Column(name = "PASSWORD")
    private String password;

    @OneToOne(fetch = FetchType.LAZY, mappedBy = "account")
    private Student student;

    @OneToOne(fetch = FetchType.LAZY, mappedBy = "account")
    private Teacher teacher;

    @NotNull
    @Enumerated(EnumType.STRING)
    @Column(name = "ROLE")
    private Role role;

    public Account() {

    }

    public Account(String email, String password, Student student, Teacher teacher) {
        this.email = email;
        this.password = password;
        this.student = student;
        this.teacher = teacher;
    }



    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Teacher getTeacher() {
        return teacher;
    }

    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }
}
