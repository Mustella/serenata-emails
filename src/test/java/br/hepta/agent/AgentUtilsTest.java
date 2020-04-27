package br.hepta.agent;

import org.junit.jupiter.api.Test;

import email.EmailReader;
import io.quarkus.test.junit.QuarkusTest;

@QuarkusTest
public class AgentUtilsTest {
	
	@Test
	public void isInputHelloTest() {
		EmailReader.lerEmail();
		System.out.println("Hello");
	}
}
