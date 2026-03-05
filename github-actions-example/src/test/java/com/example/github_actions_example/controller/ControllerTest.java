package com.example.github_actions_example.controller;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;

public class ControllerTest {

    @Test
    void testWelcomeMessage() {
        Controller controller = new Controller();
        String result = controller.welcome();
        assertEquals("welcome to java", result);
    }
}
