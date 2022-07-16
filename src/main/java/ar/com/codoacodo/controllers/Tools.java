package ar.com.codoacodo.controllers;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.Part;

public class Tools {
	
	public static String getcontentPartText(Part input) {
	    Scanner sc = null;
	    String content = null;
	    try {
	        sc = new Scanner(input.getInputStream(), "UTF-8");
	        if (sc.hasNext()) {
	            content = sc.nextLine();
	        } else {
	            content = "";
	        }
	        return content;
	    } catch (IOException ex) {
	        Logger.getLogger(Tools.class.getName()).log(Level.SEVERE, ex.getMessage());
	        content = null;
	    } finally {
	        sc.close();
	    }
	    return content;
	}
	
	public static String getContentTextArea(Part input) {
	    StringBuilder sb = null;
	    Scanner sc = null;
	    try {
	        sc = new Scanner(input.getInputStream(), "UTF-8");
	        sb = new StringBuilder("");
	        while (sc.hasNext()) {
	            sb.append(sc.nextLine());
	            sb.append("\n");
	        }
	    } catch (IOException ex) {
	        Logger.getLogger(Tools.class.getName()).log(Level.SEVERE, ex.getMessage());
	        sb = null;
	    } finally {
	        sc.close();
	    }
	    if (sb == null) {
	        return null;
	    } else {
	        return sb.toString();
	    }
	}
	
	public static boolean guardarImagenDeProdructoEnElSistemaDeFicheros(Part in, String fileName)
	        throws ServletException {
	    FileOutputStream output = null;
	    InputStream input = null;
	    boolean ok = false;
	    try {
	    	input = in.getInputStream();
	    	String arch = Paths.get(in.getSubmittedFileName()).getFileName().toString();
	        output = new FileOutputStream( fileName.concat( "/" + arch ) );
	        int leido = 0;
	        leido = input.read();
	        while (leido != -1) {
	            output.write(leido);
	            leido = input.read();
	        }
	    } catch (FileNotFoundException ex) {
	        Logger.getLogger(Tools.class.getName()).log(Level.SEVERE, ex.getMessage());
	    } catch (IOException ex) {
	        Logger.getLogger(Tools.class.getName()).log(Level.SEVERE, ex.getMessage());
	    } finally {
	        try {
	            output.flush();
	            output.close();
	            input.close();
	            ok = true;
	        } catch (IOException ex) {
	            Logger.getLogger(Tools.class.getName()).log(Level.SEVERE, "Error cerrando flujo de salida", ex);
	        }
	    }
	    return ok;
	}	
	
	
}
