package com.example.course_schedule.services;

import com.example.course_schedule.model.CourseSchedule;
import com.example.course_schedule.model.User;
import com.example.course_schedule.repositories.CourseScheduleRepository;
import com.example.course_schedule.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;

import java.security.Principal;
import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@RequiredArgsConstructor
public class CourseScheduleService {
    private final CourseScheduleRepository courseScheduleRepository;
    private final UserRepository userRepository;

    public List<CourseSchedule> listSchedule(String party) {
        if (party != null) return courseScheduleRepository.findByParty(party);
        return courseScheduleRepository.findAll();
    }

    public void saveSchedule(Principal principal, CourseSchedule schedule) {
        schedule.setUser(getUserByPrincipal(principal));
        log.info("Saving new record for schedule {}; Author email: {}", schedule, schedule.getUser().getEmail());
        courseScheduleRepository.save(schedule);
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

    public void deleteSchedule(Long id) {
        courseScheduleRepository.deleteById(id);
    }


    public void updateSchedule(String subjectName, Long id) {
        System.out.println(id);
        CourseSchedule mySchedule = courseScheduleRepository.findById(id).get();
        System.out.println(id);
        mySchedule.setSubject_name(subjectName);

    }

    public CourseSchedule getScheduleById(Long id) {
        return courseScheduleRepository.findById(id).orElse(null);
    }
}
