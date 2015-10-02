package com.spanneberg.demoapp;

import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class InfoController {

    @RequestMapping("/info")
    public String greeting(@RequestParam(value="name", required=false, defaultValue="World") String name, Model model) throws UnknownHostException, SocketException {
    	String address = NetworkInterface.getByName("eth1").getInetAddresses().nextElement().getHostAddress();
        String hostname = InetAddress.getLocalHost().getHostName();
        model.addAttribute("address", address);
        model.addAttribute("hostname", hostname);
        return "info"; 
    }

}