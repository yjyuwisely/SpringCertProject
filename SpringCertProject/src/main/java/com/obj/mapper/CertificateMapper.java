package com.obj.mapper;

import com.obj.model.MemberCertJoinVO;
 
public interface CertificateMapper {
	public MemberCertJoinVO GeneralDown(MemberCertJoinVO member);
	public MemberCertJoinVO InoutDown(MemberCertJoinVO member);
	public MemberCertJoinVO SergDown(MemberCertJoinVO member);
	public MemberCertJoinVO Issue(MemberCertJoinVO member);
}