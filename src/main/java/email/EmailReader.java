package email;

import java.io.File;
import java.io.FileInputStream;
import java.util.Iterator;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class EmailReader {

	public static void lerPlanilha() throws Exception {
		String path = System.getProperty("user.dir");
		
		File myFile = new File(path + "/src/main/resources/Inscrição Serenata (Responses).xlsx");
		FileInputStream fis = new FileInputStream(myFile);

		XSSFWorkbook myWorkBook = new XSSFWorkbook(fis);
		XSSFSheet mySheet = myWorkBook.getSheetAt(5); //

		// Get iterator to all the rows in current sheet
		Iterator<Row> rowIterator = mySheet.iterator();

		// Traversing over each row of XLSX file
		while (rowIterator.hasNext()) {
			Row row = rowIterator.next();

			// For each row, iterate through each columns
			Iterator<Cell> cellIterator = row.cellIterator();
			while (cellIterator.hasNext()) {

				Cell cell = cellIterator.next();

				switch (cell.getCellTypeEnum()) {
				case STRING:
					System.out.print(cell.getStringCellValue() + "\t");
					break;
				case NUMERIC:
					System.out.print(cell.getNumericCellValue() + "\t");
					break;
				case BOOLEAN:
					System.out.print(cell.getBooleanCellValue() + "\t");
					break;
				default:
				}
			}
			System.out.println("");
		}
		myWorkBook.close();
	}

}
