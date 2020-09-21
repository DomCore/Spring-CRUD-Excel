package ua.zetchenko.factory.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import ua.zetchenko.factory.model.Work;
import ua.zetchenko.factory.service.WorkService;

import java.util.List;

@Controller()
public class WorkController {
    private int page;

    private WorkService workService;

    @Autowired
    public void setWorkService(WorkService workService) {
        this.workService = workService;
    }

    @RequestMapping(value = "/")
    public ModelAndView allWorks() {
        List<Work> works = workService.allWorks();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("works");
        modelAndView.addObject("worksList", works);
        return modelAndView;
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public ModelAndView searchWorks(@ModelAttribute("from") String from, @ModelAttribute("to") String to) {
        List<Work> works;
        System.out.println("from" + from + " to" + to);
        if (from.equals("") && to.equals("")) {
            works = workService.allWorks();
        } else if (from.equals("")) {
            works = workService.searchWorks("1999-09-09", to);
        } else {
            works = workService.searchWorks(from, "3099-09-09");
        }
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("works");
        modelAndView.addObject("worksList", works);
        return modelAndView;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public ModelAndView addPage(@ModelAttribute("message") String message) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("editPage");

        return modelAndView;
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public ModelAndView addWork(@ModelAttribute("work") Work work) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:/");
        modelAndView.addObject("page", page);
        workService.add(work);
        return modelAndView;
    }

    //
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView editPage(@PathVariable("id") int id,
                                 @ModelAttribute("message") String message) {
        Work work = workService.getById(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("editPage");
        modelAndView.addObject("work", work);
        return modelAndView;
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public ModelAndView editWork(@ModelAttribute("work") Work work) {
        ModelAndView modelAndView = new ModelAndView();
        if (workService.checkId(work.getId()) || workService.getById(work.getId()).getId() == (work.getId())) {
            modelAndView.setViewName("redirect:/");
            modelAndView.addObject("page", page);
            workService.edit(work);
        } else {
            modelAndView.addObject("message", "part with title \"" + work.getId() + "\" already exists");
            modelAndView.setViewName("redirect:/edit/" + +work.getId());
        }
        return modelAndView;
    }

    //
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView deleteWork(@PathVariable("id") int id) {
        ModelAndView modelAndView = new ModelAndView();
        int worksCount = workService.worksCount();
        int page = ((worksCount - 1) % 10 == 0 && worksCount > 10 && this.page == (worksCount + 9) / 10) ?
                this.page - 1 : this.page;
        modelAndView.setViewName("redirect:/");
        modelAndView.addObject("page", page);
        Work work = workService.getById(id);
        workService.delete(work);
        return modelAndView;
    }
}