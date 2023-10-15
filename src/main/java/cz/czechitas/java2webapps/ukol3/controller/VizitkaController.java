package cz.czechitas.java2webapps.ukol3.controller;

import cz.czechitas.java2webapps.ukol3.entity.Vizitka;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class VizitkaController {

  private final List <Vizitka> seznamVizitek = List.of (
          new Vizitka("Jan Novák", "Firma 1", "Na Zlíchově 260/35", "Praha 5 15200", "jan.novak@email.cz", "111 111 111", "www.jannovak.cz"),
          new Vizitka("Jana Nováková", "Firma 2", "Naardenská 665/1", "Praha 6 16200", null, "222 222 222", "www.jananovakova.cz"),
          new Vizitka("Petr Novotný", "Firma 3", "Jinonická 78", "Praha 5 15000", "petr.novotny@email.cz", null, "www.petrnovotny.cz"),
          new Vizitka("Petra Novotná", "Firma 4", "Postupická 3150", "Praha 4 14100", "petra.novotna@email.cz", null, null)
  );

  @GetMapping("/")
  public ModelAndView seznam() {
    ModelAndView result = new ModelAndView("seznam");
    result.addObject ("vizitky", seznamVizitek);
    return result;
  }

  @GetMapping("/detail/{id}")
  public ModelAndView detail(@PathVariable int id) {
    ModelAndView result = new ModelAndView("detail");
    result.addObject ("vizitka", seznamVizitek.get(id));
    return result;
  }
}