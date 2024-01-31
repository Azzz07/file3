namespace taskk;
entity student{
    key student_id:String;
    student_name:String;
    email:String;
    birthdate:Date;
    phoneno:Integer;
    studenttoenrollment : Composition of many enrollment on studenttoenrollment.studenttoid = $self;
}
entity enrollment{
    key courseid:String;
    key cycleid:String;
    key student_id:String;
    enrollmentdate:Date;
    cancelled:Boolean;
    cancellationreason:String;
    studenttoid : Association to one student on studenttoid.student_id = student_id;
    coursecytoenrlment : Association to one  coursebycycle on  coursecytoenrlment.courseid;
}
entity coursebycycle{
    key courseid:String;
    key cycleid:String;
    coursestartdate:Date;
    courseenddate:Date;
    coursebycycletoenrlmnt : composition of many enrollment on coursebycycletoenrlmnt.coursecytoenrlment = $self;
    cousebycletocourse : Association to one course on cousebycletocourse.courseid = courseid; 
     
}

entity course{
    courseid:String;
    cousredescription:String;
    abstract:String;
    bibliography:String;
    cousretocoursebycycle : Composition of many coursebycycle on cousretocoursebycycle.cousebycletocourse = $self;
}




