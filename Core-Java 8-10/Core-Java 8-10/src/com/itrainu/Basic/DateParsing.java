package com.itrainu.Basic;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateParsing {
	public static void main(String[] args) throws Exception {
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		
		 String Date = "10/07/2024";
		  
		 Date d = sdf.parse(Date );
		 
		 System.out.println(d+ " (String to Date)");
		 
		String  StringDate = sdf.format(d);
		
		System.out.println(StringDate + "(Date to String)");
		 
	}

}
