package dao;

import java.util.List;
import java.util.Queue;

import pojo.Doctor;
import pojo.Receipt;

public interface DoctorDao {
	public boolean save(Doctor doctor);
	public Queue<Doctor> getDoctorFreeList();
	public boolean update(Doctor doctor);
	public boolean doctorWork(Doctor doctor);
	public boolean deleteWorkDoctor(Doctor doctor);
	public List<Doctor> getDepartmentDoctor(String departmentName);
	public List<Receipt> getTheReceiptsForDocotor(String doctorId);
}
