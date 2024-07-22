package com.itrainu.Basic;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DatetoSimple {
	public static void main(String[] args) throws Exception {
		 String s = "11/07/2024";
		 SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		 Date d = sdf.parse(s);
		 System.out.println(d);
	}

}
