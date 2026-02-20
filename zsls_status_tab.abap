@EndUserText.label : 'Student Status'
@AbapCatalog.enhancement.category : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #RESTRICTED
define table zsls_status_tab {

  key status  : abap.char(15) not null;
  status_text : abap.char(20);

}
