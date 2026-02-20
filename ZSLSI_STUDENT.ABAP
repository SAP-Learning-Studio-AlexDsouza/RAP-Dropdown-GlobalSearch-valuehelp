@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student CDS VIEW'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZSLSI_STUDENT
  as select from zsls_student_tab

{
  key student_id   as StudentId,
  key course_name  as CourseName,
  key enroll_date  as EnrollDate,
      student_name as StudentName,
      @Semantics.amount.currencyCode : 'Currency'
      fees         as Fees,
      currency     as Currency,
      status       as Status
}
