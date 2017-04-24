package com.noticeBoard.controller;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.noticeBoard.model.chat;

@Controller
public class ChatController {

	@RequestMapping(value = "/chat")
	public String showChatPage() {
		return "chat";
	}
	
	@MessageMapping("/hello")
	@SendTo("/topic/messages")
	public chat greeting(chat chat) throws Exception {
		Thread.sleep(1000); // simulated delay
		return new chat(chat.getName(), chat.getMessage());
	}



}
