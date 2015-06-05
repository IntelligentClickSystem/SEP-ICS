package dao;

import pojo.*;

public interface PatientDao {

	public Patient isValidUser(String username, String password);
	public Patient registPatient(Patient patient);
}
