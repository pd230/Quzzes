package com.java.itextPdf;

import java.io.FileNotFoundException;

import com.itextpdf.kernel.geom.PageSize;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.element.*;

public class Itext7 {
	
	public static void main(String[] args) throws FileNotFoundException {
		
		PdfWriter pdfWriter = new PdfWriter("Demo.pdf");
		PdfDocument pdfDocument = new PdfDocument(pdfWriter);
		pdfDocument.setDefaultPageSize(PageSize.A4);
		Document document = new Document(pdfDocument);
		document.add(new Paragraph("hello pd :)"));
		document.close();
		System.out.println("done");
	}

}
