package com.itrainu.Basic;

import java.util.Calendar;
import java.util.Scanner;
import java.text.SimpleDateFormat;
import java.text.ParseException;

public class DateMaintananceUser {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Calendar calendar = Calendar.getInstance();

        System.out.print("Enter the starting date (yyyy-MM-dd): ");
        String inputDate = scanner.nextLine();
        
        try {
            calendar.setTime(dateFormat.parse(inputDate));
        } catch (ParseException e) {
            System.out.println("Invalid date format. Please use yyyy-MM-dd format.");
            return;
        }

        for (int i = 1; i <= 12; i++) {
            calendar.add(Calendar.DATE, 30);
            System.out.println(dateFormat.format(calendar.getTime()));
        }

        scanner.close();
    }
}
