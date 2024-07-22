package com.itrainu.Basic;

import java.time.LocalDate;

public class DateEndorStart {
	public static void main(String[] args) {
		
		// if ENDDATE IS Greater THEN TODAY PRINT AN ERROR MESSAGE
		LocalDate endDate = LocalDate.of(2024, 07, 11);
		
		LocalDate startDate = LocalDate.now();
		
		if (endDate.isAfter(startDate)) {
			System.out.println("Sucess Message");
			
		}else {
			System.out.println("Error Message");
		}
	}

}
