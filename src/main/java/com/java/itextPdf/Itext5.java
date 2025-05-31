package com.java.itextPdf;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Path;
import java.nio.file.Paths;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfReader;
import com.itextpdf.text.pdf.PdfStamper;
import com.itextpdf.text.pdf.PdfWriter;


public class Itext5 {
	
	private static final String PDF_FILEPATH = "C:/Users/Rahul Dixit/Desktop/";
	private static final String PDF_NAME = "CompletionCertificate.pdf";
	private static final String image = "/java/Quizzes/src/main/webapp/images/Certificate3.png";
	
	public static void main(String[] args) {
		
		System.out.println("Create pdf using itextPDF");
		
//		1 Document
		
		Document doc = new Document();
		
//		2 pdfWriter
		try {
		PdfWriter pdfWriter = PdfWriter.getInstance(doc, new FileOutputStream(new File(PDF_FILEPATH + PDF_NAME)));
		pdfWriter.setEncryption(null,null,PdfWriter.ALLOW_PRINTING, PdfWriter.ENCRYPTION_AES_128);
//		3 Open Document
		doc.open();
		
//		4 chunk
		Font font = FontFactory.getFont(FontFactory.COURIER_BOLD, 14, BaseColor.BLACK);
		Chunk chunk = new Chunk("You Are Strong !", font);
		
//		5 add text to the pdf
		doc.add(chunk);
		
		String multi = "I am a girl, Who has ambitions to acheive something in life !";
		Paragraph paragraph = new Paragraph(multi);
		
		doc.add(paragraph);
		
		Path imgPath = Paths.get(PDF_FILEPATH + image);
		Image img = Image.getInstance(imgPath.toAbsolutePath().toString());
		img.scaleAbsolute(500f, 250f);
		doc.add(img);
		
//		adding properties of pdf
		doc.addAuthor("QuizMasterApp");
		doc.addCreationDate();
		doc.addCreator("QuizMaster");
		doc.addTitle("ItextDoc");
		
//		Adding table to pdf
		
		float[] columns = {150f, 150f, 150f};
		PdfPTable table =  new PdfPTable(columns);
		
		PdfPCell cell1 = new PdfPCell();
		cell1.setPhrase(new Phrase("  First name  "));
		table.addCell(cell1);
		
		PdfPCell cell2 = new PdfPCell();
		cell2.setPhrase(new Phrase("  last name  "));
		table.addCell(cell2);
		
		PdfPCell cell3 = new PdfPCell();
		cell3.setPhrase(new Phrase("  Age "));
		table.addCell(cell3);
		
		PdfPCell cell21 = new PdfPCell();
		cell21.setPhrase(new Phrase("  Pratiksha  "));
		table.addCell(cell21);
		
		PdfPCell cell22 = new PdfPCell();
		cell22.setPhrase(new Phrase("  Dixit  "));
		table.addCell(cell22);
		
		PdfPCell cell23 = new PdfPCell();
		cell23.setPhrase(new Phrase("  21 "));
		table.addCell(cell23);
		
		doc.add(table);
		
		System.out.println("file Created using itextPDF");
		
//		6 close the document
		doc.close();
		
//		Add Encryption to the pdf document
		
		PdfReader pdfReader =  new PdfReader(PDF_FILEPATH + PDF_NAME);
		PdfStamper stamper = new PdfStamper(pdfReader, new FileOutputStream(new File(PDF_FILEPATH+"secure.pdf")) );
		String O_pass = "owner";
		String U_pass = "user";
		
		stamper.setEncryption(U_pass.getBytes(), O_pass.getBytes(), PdfWriter.ALLOW_PRINTING, PdfWriter.ENCRYPTION_AES_256);
		stamper.close();
		
		}catch(FileNotFoundException | DocumentException e) {
			e.printStackTrace();
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
