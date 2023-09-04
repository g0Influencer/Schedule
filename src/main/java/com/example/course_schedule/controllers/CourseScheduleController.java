package com.example.course_schedule.controllers;

import com.example.course_schedule.model.CourseSchedule;
import com.example.course_schedule.services.CourseScheduleService;
import com.example.course_schedule.services.CourseScheduleService;
import com.example.course_schedule.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class CourseScheduleController {
    private final CourseScheduleService courseScheduleService;
    private final UserService userService;

    @GetMapping("/")
    public String schedules(@RequestParam(name = "party", required = false) String party, Principal principal,  Model model) {
        model.addAttribute("schedule", courseScheduleService.listSchedule(party));
        model.addAttribute("user", courseScheduleService.getUserByPrincipal(principal));
        return "schedule";
    }

    @GetMapping("/schedule/{id}")
    public String scheduleInfo(@PathVariable Long id, Model model, Principal principal) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        model.addAttribute("schedule", courseScheduleService.getScheduleById(id));
        return "schedules-info";
    }

    @GetMapping("/schedule/edit/{id}")
    public String scheduleEdit(@PathVariable Long id, Model model, Principal principal) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        model.addAttribute("schedule", courseScheduleService.getScheduleById(id));
        return "update-schedule";
    }

    @PostMapping("/schedule/create")
    public String createSchedule(CourseSchedule schedule, Principal principal, Model model) {
        model.addAttribute("user", userService.getUserByPrincipal(principal));
        courseScheduleService.saveSchedule(principal, schedule);
        return "add-schedule";
    }

    @PostMapping("/schedule/delete/{id}")
    public String deleteSchedule(@PathVariable Long id) {
        courseScheduleService.deleteSchedule(id);
        return "redirect:/";
    }

    @PostMapping("/schedule/update-schedule/{id}/{subjectName}")
    public String updateSchedule(
            @PathVariable String subjectName, @PathVariable Long id) {
        courseScheduleService.updateSchedule(subjectName ,id);
        return "redirect:/";
    }

}
