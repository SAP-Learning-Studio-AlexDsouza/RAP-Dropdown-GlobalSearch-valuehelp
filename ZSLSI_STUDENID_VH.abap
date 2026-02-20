@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Search Help for Student ID'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.dataCategory: #VALUE_HELP
define view entity ZSLSI_STUDENID_VH
  as select from zsls_student_tab
{

  key student_id,
      student_name
}
