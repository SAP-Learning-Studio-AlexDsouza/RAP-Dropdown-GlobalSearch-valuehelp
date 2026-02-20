@Metadata.layer: #CORE

@UI: { headerInfo: { typeName: 'Student', 
               typeNamePlural: 'Student', 
            title: { type: #STANDARD, 
                    value: 'StudentName'} } }
        
annotate view ZSLSC_STUDENT_VIEW with
{
  @UI.facet: [{ id: 'StudentId', 
           purpose: #STANDARD, 
              type:#IDENTIFICATION_REFERENCE, 
             label: 'Details', 
          position: 10 }]

  @UI:{ selectionField: [{ position: 10 }],
              lineItem: [{ position: 10 }],
        identification: [{ position: 10,
                 label: 'Credit Card' }] }
  @Consumption.valueHelpDefinition: [
  {
    entity: {
      name: 'ZSLSI_STUDENID_VH',
   element: 'Student_Id'
    }
  }
]               
  StudentId;
  @UI:{ selectionField: [{ position: 20 }],
              lineItem: [{ position: 20 }],
        identification: [{ position: 20,
                 label: 'Credit Card' }] }
  CourseName;
  @UI:{ selectionField: [{ position: 30 }], 
              lineItem: [{ position: 30 }], 
        identification: [{ position: 30, 
                 label: 'Credit Card' }] }
  EnrollDate;
  @UI:{ selectionField: [{ position: 40 }], 
              lineItem: [{ position: 40 }], 
        identification: [{ position: 40, 
                 label: 'Credit Card' }] }
  StudentName;
  @UI:{ selectionField: [{ position: 50 }], 
              lineItem: [{ position: 50 }], 
        identification: [{ position: 50, 
                 label: 'Credit Card' }] }
  Fees;
  @UI:{ selectionField: [{ position: 60 }], 
              lineItem: [{ position: 60 }], 
        identification: [{ position: 60, 
                 label: 'Credit Card' }] }
  Currency;
  @UI:{ selectionField: [{ position: 70 }], 
              lineItem: [{ position: 70 }], 
        identification: [{ position: 70, 
                 label: 'Credit Card' }] }
 @Consumption.filter      :{ selectionType: #SINGLE }          
  Status;

}
