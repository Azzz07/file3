using taskk as My from '../db/schema';
service Ms{
    @odata.draft.enabled
    entity student as projection on My.student;
    entity enrollment as projection on My.enrollment;
    entity course as projection on My.course;
    entity coursebycycle as projection on My.coursebycycle;   

}
