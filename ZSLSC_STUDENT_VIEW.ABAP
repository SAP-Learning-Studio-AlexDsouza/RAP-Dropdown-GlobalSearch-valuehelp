@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption for Students'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZSLSC_STUDENT_VIEW
  as select from ZSLSI_STUDENT
{
  key StudentId,
  key CourseName,
  key EnrollDate,
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold:  0.7
  @ObjectModel.text.element: [ 'StudentName' ]
      StudentName,
      @Semantics.amount.currencyCode : 'Currency'
      Fees,
      Currency,
      @Consumption.valueHelpDefinition: [
  {
    entity: {
      name: 'ZSLSI_STATUS_VH',
   element: 'status'
    }
  }
]
      Status
}
