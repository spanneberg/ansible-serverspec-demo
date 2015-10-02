package com.spanneberg.demoapp;

import java.net.InetAddress;
import java.net.SocketException;
import java.net.UnknownHostException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InfoController {

    @RequestMapping("/info")
    public String info(Model model) throws UnknownHostException, SocketException {
        String hostname = InetAddress.getLocalHost().getHostName();
        model.addAttribute("hostname", hostname);
        return "info"; 
    }

}