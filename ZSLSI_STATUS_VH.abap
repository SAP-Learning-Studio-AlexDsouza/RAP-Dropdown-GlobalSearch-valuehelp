@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student Status Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.resultSet.sizeCategory: #XS
define view entity ZSLSI_STATUS_VH
  as select from zsls_status_tab
{
  key status,
      @Semantics.text: true
      status_text
}
