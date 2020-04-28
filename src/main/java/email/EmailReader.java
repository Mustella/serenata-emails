package email;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.text.WordUtils;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class EmailReader {

	static String PLANILHAS_DIR = System.getProperty("user.dir") + "/src/main/resources/";
	static ArrayList<String> DOMINIOS = new ArrayList<String>(Arrays.asList("gmail.com", "gmail.com.br", "hotmail.com",
			"live.com", "hotmail.com.br", "yahoo.com.br", "yahoo.com", "agricultura.gov.br", "terra.com.br",
			"bancorbras.com.br", "aneel.gov.br", "globomail.com", "uol.com.br", "globo.com", "bol.com.br", "msn.com",
			"outlook.com", "gmx.fr", "correios.com.br", "brb.com.br", "ig.com.br", "cidadania.gov.br", "ifb.edu.br",
			"serpro.gov.br", "ana.gov.br", "icloud.com", "bce.unb.br", "unb.br", "bsbmusical.com.br", "caixa.gov.br",
			"cebraspe.org.br", "outlook.com.br", "focoemperformance.com.br", "agu.gov.br", "inoveturismo.tur.br",
			"portalcci.com.br", "mattos.eng.br"));

	public static void lerPlanilha() throws Exception {

		ArrayList<Pessoa> listaFinal = new ArrayList<>();

		listaFinal = lePlanilha(listaFinal, "Inscrição Serenata (Responses).xlsx", 5, 1, 3);
		listaFinal = lePlanilha(listaFinal, "CADASTRO SÓCIO - ASENA  (respostas).xlsx", 0, 3, 12);
		listaFinal = lePlanilha(listaFinal, "Cópia de Inscrição Serenata (Responses) - 24 de agosto, 12_50.xlsx", 0, 1,
				2);
		listaFinal = lePlanilha(listaFinal, "Inscrições SN 2018 (respostas).xlsx", 0, 1, 4);
		listaFinal = lePlanilha(listaFinal, "Inscrições SN 2017 (respostas) (1).xlsx", 0, 1, 4);
		listaFinal = lePlanilha(listaFinal, "Inscrições SN 2018 (respostas)(1).xlsx", 0, 1, 4);
		
		listaFinal.sort((o1, o2) -> o1.getNome().compareTo(o2.getNome()));
		for (Pessoa pessoa : listaFinal) {
			System.out.println(pessoa);
		}

	}

	private static ArrayList<Pessoa> lePlanilha(ArrayList<Pessoa> listaFinal, String planilhaAtual, int sheet,
			int colunaNome, int colunaEmail) throws FileNotFoundException, IOException {
		File myFile = new File(PLANILHAS_DIR + planilhaAtual);
		XSSFWorkbook myWorkBook = new XSSFWorkbook(new FileInputStream(myFile));
		XSSFSheet mySheet = myWorkBook.getSheetAt(sheet);
		listaFinal = addEmails(listaFinal, mySheet, planilhaAtual, colunaNome, colunaEmail);
		myWorkBook.close();
		System.out.println("Fim da planilha '" + planilhaAtual + "'\n");
		return listaFinal;
	}

	private static ArrayList<Pessoa> addEmails(ArrayList<Pessoa> listaFinal, XSSFSheet mySheet, String origem, int nome,
			int email) {

		for (Row row : mySheet) { // For each Row.
			String emailString = row.getCell(email).getStringCellValue().trim().toLowerCase().replace(" ", "");
			if (row.getRowNum() == 0 || emailString.length() < 5 || emailString.equals("nãopossui@")) {
				continue; // Skip headers e emails vazios
			}
			if (!rowIsEmpty(row)) {
				String nomeString = row.getCell(nome) == null ? "" : StringUtils.stripAccents(row.getCell(nome).getStringCellValue().trim());

				List<String> emailParts = Arrays.asList(emailString.split("@"));
				String dominio = emailParts.get(emailParts.size() - 1); // Dominio do email

				if (!DOMINIOS.contains(dominio) || emailParts.size() > 2) {
					System.out.println(emailString); // Dominio desconhecido ou emails concatenados
				}

				Pessoa pessoaCursor = new Pessoa(WordUtils.capitalizeFully(nomeString), emailString, origem);

				if (!listaFinal.contains(pessoaCursor)) {
					listaFinal.add(pessoaCursor);
				} else {
//					System.out.println(pessoaCursor + " já esta cadastrada");
				}
			} else {
				break; // Fim da planilha, encerra loop
			}
		}
		return listaFinal;
	}

	private static boolean rowIsEmpty(Row row) {
		if (row == null) {
			return true;
		}
		if (row.getLastCellNum() <= 0) {
			return true;
		}
		for (int cellNum = row.getFirstCellNum(); cellNum < row.getLastCellNum(); cellNum++) {
			Cell cell = row.getCell(cellNum);
			if (cell != null && cell.getCellTypeEnum() != CellType.BLANK && StringUtils.isNotBlank(cell.toString())) {
				return false;
			}
		}
		return true;
	}

}
