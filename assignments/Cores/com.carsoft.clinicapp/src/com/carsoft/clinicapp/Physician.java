package com.carsoft.clinicapp;

import java.util.ArrayList;
import java.util.Date;

public class Physician extends User implements HIPAACompliantUser{
	
	private ArrayList<String> patientNotes;
	
	
	public Physician(Integer id) {
		super(id);
		
		// TODO Auto-generated constructor stub
	}
	
	public void newPatientNotes(String notes, String patientName, Date date) {
        String report = String.format(
            "Datetime Submitted: %s \n", date);
        report += String.format("Reported By ID: %s\n", this.id);
        report += String.format("Patient Name: %s\n", patientName);
        report += String.format("Notes: %s \n", notes);
        this.patientNotes.add(report);
    }

	@Override
	public boolean assignPin(int pin) {
		// TODO Auto-generated method stub
		String pinStr = String.valueOf(pin);
		if(pinStr.length() != 4 ) {
		return false;} 
		return true;
	}

	@Override
	public boolean accessAuthorized(Integer confirmedAuthID) {
		// TODO Auto-generated method stub
		if(this.id != confirmedAuthID ) 
		{
			return false;
		}
		return true;
	}

}
