package com.alexeyzh.ui;

import com.alexeyzh.models.MyDataObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Calendar;

@Controller
@RequestMapping("/restservice")
public class RESTController {

    // этот метод будет принимать время методом GET и на его основе
    // отвечать клиенту
    @RequestMapping("/{time}")
    @ResponseBody
    public MyDataObject getMyData(@PathVariable long time) {
        return new MyDataObject(Calendar.getInstance(), "Это ответ метода GET!");
    }

    // этот метод будет принимать Объект MyDataObject и отдавать его клиенту
    // обычно метод PUT используют для сохранения либо для обновления объекта
    @RequestMapping(method = RequestMethod.PUT)
    @ResponseBody
    public MyDataObject putMyData(@RequestBody MyDataObject md) {
        return md;
    }

    // этот метод будет методом POST отдавать объект MyDataObject
    @RequestMapping(method = RequestMethod.POST)
    @ResponseBody
    public MyDataObject postMyData() {
        return new MyDataObject(Calendar.getInstance(), "Это ответ метода POST!");
    }

    @RequestMapping(value = "/{time}", method = RequestMethod.DELETE)
    @ResponseBody
    public MyDataObject deleteMyData(@PathVariable long time) {
        return new MyDataObject(Calendar.getInstance(), "Это ответ метода DELETE!");
    }
}
