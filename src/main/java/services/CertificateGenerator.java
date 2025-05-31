package services;

import java.io.IOException;
import java.time.LocalDate;

import com.itextpdf.io.font.constants.StandardFonts;
import com.itextpdf.kernel.colors.ColorConstants;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfFontFactory;
import com.itextpdf.kernel.geom.PageSize;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfWriter;
import com.itextpdf.layout.Document;
import com.itextpdf.layout.element.Paragraph;
import com.itextpdf.layout.properties.TextAlignment;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;




/**
 * Servlet implementation class CertificateGenerator
 */
public class CertificateGenerator extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String name = request.getParameter("name");
	    String Score = request.getParameter("Score");
	    String type = request.getParameter("type");
	    LocalDate date = LocalDate.now();
	    
	    response.setContentType("application/pdf");
	    response.setHeader("Content-Disposition", "attachment;filename=certificate.pdf");
		
	    try {
	    	
	    	PdfWriter pdfwriter = new PdfWriter(response.getOutputStream());
	    	PdfDocument pdfdocument = new PdfDocument(pdfwriter);
	    	Document document = new Document(pdfdocument, PageSize.A4.rotate());
//	    
//	    	 // Load the background image
//	    	ServletContext context = getServletContext();
//	    	String imagepath = context.getRealPath("/images/Certificate3.png");
//	    	ImageData imagedata = ImageDataFactory.create(imagepath);
//	    	Image image = new Image(imagedata);
//
//	    	// Set image to cover the entire page
//	    	image.setFixedPosition(0, 0, PageSize.A4.getWidth());
//	    	document.add(image);
	    	
	    	PdfFont font = PdfFontFactory.createFont(StandardFonts.COURIER_OBLIQUE);
	    	
	    	document.add(new Paragraph("QuizMaster")
	    			.setTextAlignment(TextAlignment.CENTER)
	    			.setFontSize(20));
	    	
	    	document.add(new Paragraph("")
	    			.setTextAlignment(TextAlignment.CENTER));
	    	
	    	document.add(new Paragraph("CERTIFICATE OF COMPLETION")
	    			.setTextAlignment(TextAlignment.CENTER)
	    			.setFontSize(35));
	    	
	    	document.add(new Paragraph("").setTextAlignment(TextAlignment.CENTER));
	    	
	    	document.add(new Paragraph(name)
	    			.setTextAlignment(TextAlignment.CENTER)
	    			.setFont(font)
	    			.setFontSize(30)
	    			.setFontColor(ColorConstants.BLUE));
	    	
	    	document.add(new Paragraph("").setTextAlignment(TextAlignment.CENTER));
	    	
	    	document.add(new Paragraph("For successfully completing a online quiz of")
	    			.setTextAlignment(TextAlignment.CENTER)
	    			.setFontSize(20));
	    	
	    	document.add(new Paragraph(type)
	    			.setTextAlignment(TextAlignment.CENTER)
	    			.setFont(font)
	    			.setFontSize(30)
	    			.setFontColor(ColorConstants.BLUE));
	    	
	    	 
	    	document.add(new Paragraph("and obtained "+ Score +" out of 10" )
	    			.setTextAlignment(TextAlignment.CENTER)
	    			.setFontSize(20));
	    	
	    	document.add(new Paragraph("").setMaxHeight(20));
	    	
	    	document.add(new Paragraph("Provided by")
	    			.setTextAlignment(TextAlignment.CENTER)
	    			.setFontSize(20));
	    	
	    	document.add(new Paragraph("QuizMaster")
	    			.setTextAlignment(TextAlignment.CENTER)
	    			.setFontSize(20));
//    	    document.add(new Paragraph(date));
	    	
	    	document.close();
	    	
	    }catch(Exception e) {
	    	System.out.println(e.getMessage());
	    }
	    
	    
	}

}
