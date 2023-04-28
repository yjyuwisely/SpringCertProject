/*package com.obj.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.obj.model.PatientVO;

// Mapping 파일에 기재된 SQL을 호출하기 위한 인터페이스
@Mapper
public interface CertificateMapper {
	public ArrayList<PatientVO> GeneralDown(PatientVO patient);
	public ArrayList<PatientVO> InoutDown(PatientVO patient);
	public ArrayList<PatientVO> SergDown(PatientVO patient);
}*/

/*package com.obj.mapper;
 
import java.util.ArrayList;

import com.obj.model.PatientVO;
 
public interface CertificateMapper {
	public ArrayList<PatientVO> GeneralDown(PatientVO patient);
	public ArrayList<PatientVO> InoutDown(PatientVO patient);
	public ArrayList<PatientVO> SergDown(PatientVO patient);
}
*/

package com.obj.mapper;

import com.obj.model.MemberCertJoinVO;
 
public interface CertificateMapper {
	public MemberCertJoinVO GeneralDown(MemberCertJoinVO member);
	public MemberCertJoinVO InoutDown(MemberCertJoinVO member);
	public MemberCertJoinVO SergDown(MemberCertJoinVO member);
}