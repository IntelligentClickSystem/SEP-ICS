package dao;

import java.util.ArrayList;
import java.util.List;

import pojo.Doctor;

public class DoctorDao {
	private Doctor doctor;
	public List<Doctor> getQuizDoctor(){
		List<Doctor> list = new ArrayList<Doctor>();
		for(int i=0;i<4;i++){
			doctor = new Doctor();
			doctor.setId(""+i);
			doctor.setIntroduction("������ҽ..");
			doctor.setName("����");
			doctor.setLevel("����ҽʦ");
			doctor.setType("������");
			
			list.add(doctor);			
		}
		
		return list;
	}
	
   public Doctor getDoctorInfo(String id){
	    doctor = new Doctor();
		doctor.setId("11");
		doctor.setIntroduction("������ҽ..");
		doctor.setName("����");
		doctor.setLevel("����ҽʦ");
		doctor.setType("������");
	//	doctor.setSchedules(schedules)
		
		return doctor;
   }
}
