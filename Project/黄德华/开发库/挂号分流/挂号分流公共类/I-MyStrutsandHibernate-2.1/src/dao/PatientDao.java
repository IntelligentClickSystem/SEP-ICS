package dao;

import java.util.Queue;

import pojo.ActivateList;
import pojo.Department;
import pojo.Patient;
import pojo.Receipt;

public interface PatientDao {
	public boolean save(Patient patient);
	public boolean creatReceipts(Patient patient);
	public boolean updatePatient(Patient patient);
	public boolean activateL(Receipt receipt);
	public Receipt activateToReceipt(ActivateList activateList);
	public boolean deleteActivate(ActivateList activateList);
	public Queue<ActivateList> getActivateLists();
	public Patient getPatientOfReceipt(int recepitId);
}
