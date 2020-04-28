package br.email.run;

import org.junit.jupiter.api.Test;

import email.EmailReader;
import io.quarkus.test.junit.QuarkusTest;

@QuarkusTest
public class EmailReaderRunner {
	
	@Test
	public void executarLeitura() throws Exception {
		System.out.println(System.getProperty("user.dir"));
		EmailReader.lerPlanilhas();
	}
}
