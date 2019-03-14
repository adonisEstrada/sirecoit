/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import dto.Persona;
import dto.RelModalidadRenit;
import dto.Renit;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

/**
 *
 * @author Adonis
 */
public class ReportUtil {

    public static String generarReporte(Persona persona) {
        // Compile jrxml file.
        JasperReport jasperReport;
        try {
            InputStream inputStream = ReportUtil.class.getResourceAsStream("/report/sirecoit_report.jrxml");
//            InputStream inputStream = new FileInputStream(
//                    "/home/soporte/NetBeansProjects/PrimeFacesTutorial/src/java/report/sirecoit_report.jrxml");
            jasperReport = JasperCompileManager.compileReport(inputStream);

            // Parameters for report
            Map<String, Object> parameters = new HashMap<String, Object>();
            parameters.put("IMAGE", ReportUtil.class.getResource("/resource/sirecoit.jpg").getFile());
            File file = new File(persona.getCedula().toString());
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(persona.getImagen());
            fileOutputStream.close();
            parameters.put("IMAGE_PERSONA", file.getAbsolutePath());

            String stringRenit = "";
            Renit renit = persona.getRenit();
            stringRenit = "<b>Registrado: </b>" + (renit.getRegistrado() ? "SÍ" : "NO") + "<br/>"
                    + "<b>Curso Realizado: </b>" + (renit.getRealizoCurso() ? "SÍ" : "NO") + "<br/>"
                    + "<b>Fecha de Vencimiento: </b>"
                    + new SimpleDateFormat("dd/MM/yyyy").format(renit.getFechaVencimiento());

            for (RelModalidadRenit relModalidadRenit : persona.getRenit().getRelModalidadRenits()) {
                if (relModalidadRenit.getActivo()) {
                    stringRenit += "<br/><b>" + relModalidadRenit.getModalidad().getDescripcion() + ": </b>"
                            + relModalidadRenit.getCodigo();
                }
            }
            parameters.put("RENIT", stringRenit);

            // DataSource
            // This is simple example, no database.
            // then using empty datasource.
            JRDataSource dataSource = new JRBeanCollectionDataSource(new ArrayList<Persona>(Arrays.asList(persona)));

            JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport,
                    parameters, dataSource);

            // Make sure the output directory exists.
//            outDir.mkdirs();
            String nombreArchivo = "/sirecoit_report" + UUID.randomUUID();
            File archivoTemporal = File.createTempFile(nombreArchivo, ".pdf");
            archivoTemporal.deleteOnExit();

//            File archivoTemporal = new File(System.getProperty("java.io.tmpdir").concat("/").concat(nombreArchivo + ".pdf"));
            OutputStream outputStream = new FileOutputStream(archivoTemporal);
// Export to PDF.
            JasperExportManager.exportReportToPdfStream(jasperPrint,
                    outputStream);

            return archivoTemporal.getAbsolutePath();
        } catch (JRException ex) {
            ex.printStackTrace();
        } catch (FileNotFoundException ex) {
            ex.printStackTrace();
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return "";
    }
}
