package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import javax.websocket.Session;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


import org.hibernate.loader.collection.PaddedBatchingCollectionInitializerBuilder;

import org.hibernate.SharedSessionContract;

import com.entities.Note;
import com.helper.FactoryProvider;

import org.hibernate.Transaction;

/**
 * Servlet implementation class SaveNoteServlet
 */
//@WebServlet("/SaveNoteServlet")
public class SaveNoteServlet extends HttpServlet {
	
    public SaveNoteServlet() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			
//			SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();

			// tittle content fetch 
			String tittle=request.getParameter("tittle");
			String content=request.getParameter("content");
			
			Note note=new Note(tittle,content,new Date());
			
//		    System.out.println(note.getId()+"  "+note.getTittle());
			

		    Session session= FactoryProvider.getFactory().openSession();
		   
//			Object trnObject=session.beginTransaction();
			session.beginTransaction();
			session.save(note);
			session.getTransaction().commit();
			session.close();

		    
		    
		    

			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.println("<h1 style ='text-align:center;'>note is added Succesfully </h1>"); 
			out.println("<h1 style ='text-align:center;'><a href='all_notes.jsp'>View all note </h1>"); 
			
	
			
			
			
		} catch (Exception e) {
			 System.out.println("hiii  here is error man ");
			e.printStackTrace();
			 
		}
	}

}
