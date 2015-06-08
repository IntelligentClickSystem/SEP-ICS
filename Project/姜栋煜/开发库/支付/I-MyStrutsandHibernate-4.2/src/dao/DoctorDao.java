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
			doctor.setIntroduction("我是神医..");
			doctor.setName("大鱼");
			doctor.setLevel("主治医师");
			doctor.setType("妇产科");
			
			list.add(doctor);			
		}
		
		return list;
	}
	
   public Doctor getDoctorInfo(String id){
	    doctor = new Doctor();
		doctor.setId("11");
		doctor.setIntroduction("我是神医..");
		doctor.setName("大鱼");
		doctor.setLevel("主治医师");
		doctor.setType("妇产科");
	//	doctor.setSchedules(schedules)
		
		return doctor;
   }
}
