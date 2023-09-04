package com.example.course_schedule.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Entity
@Table(name = "schedule")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class CourseSchedule {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    @Column(name = "teacher_name")
    private String teacher_name;
    @Column(name = "subject_name")
    private String subject_name;
    @Column(name = "party")
    private String party;
    @Column(name = "week_day")
    private String week_day;
    @Column(name = "time")
    private String time;
    @Column(name = "classroom_number")
    private String classroom_number;
    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    @JoinColumn
    private User user;
    private LocalDateTime dateOfCreated;

}


