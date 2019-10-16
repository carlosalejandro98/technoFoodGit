package controlador;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "servletPdf", urlPatterns = {"/servletPdf"})
public class servletPdf extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("application/pdf");
        OutputStream out = response.getOutputStream();
        
        try {
            try {
                Document documento = new Document();
                PdfWriter.getInstance(documento, out);
                
                documento.open();
                
                Paragraph par1 = new Paragraph();
                Font fonttitulo = new Font(Font.FontFamily.HELVETICA, 16, Font.BOLD, BaseColor.BLUE);
                par1.add(new Phrase("Reporte con iTextpdf.jar", fonttitulo));
                par1.setAlignment(Element.ALIGN_CENTER);
                par1.add(new Phrase(Chunk.NEWLINE));
                par1.add(new Phrase(Chunk.NEWLINE));
                documento.add(par1);
                
                Paragraph par2 = new Paragraph();
                Font fontDescipcion = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.NORMAL, BaseColor.BLACK);
                par2.add(new Phrase("Su id de boucher es:", fontDescipcion));
                par2.setAlignment(Element.ALIGN_JUSTIFIED);
                par2.add(new Phrase(Chunk.NEWLINE));
                par2.add(new Phrase(Chunk.NEWLINE));
                documento.add(par2);
                
                Image imagen = Image.getInstance("C:\\Users\\Carlitos\\Documents\\NetBeansProjects\\technoFood\\web\\img\\logoTechnoFood.png");
                imagen.setAlignment(Element.ALIGN_CENTER);
                imagen.scaleToFit(100, 100);
                documento.add(imagen);
                
                
                PdfPTable tabla = new PdfPTable(3);
                PdfPCell celda1 = new PdfPCell(new Paragraph("Codigo"));
                
                documento.close();
                
            } catch (Exception e) {
                e.getMessage();
            }
            
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
