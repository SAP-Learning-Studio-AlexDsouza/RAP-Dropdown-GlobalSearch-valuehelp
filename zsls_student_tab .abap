@EndUserText.label : 'Demo Student Table'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zsls_student_tab {

  key client      : abap.clnt not null;
  key student_id  : abap.char(10) not null;
  key course_name : abap.char(40) not null;
  key enroll_date : abap.dats not null;
  student_name    : abap.char(40);
  @Semantics.amount.currencyCode : 'zsls_student.currency'
  fees            : abap.curr(15,2);
  currency        : abap.cuky;
  status          : abap.char(15);

}
