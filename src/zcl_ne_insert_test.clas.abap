CLASS zcl_ne_insert_test DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS zne_insert.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_NE_INSERT_TEST IMPLEMENTATION.


  METHOD zne_insert.

    DATA itab TYPE TABLE OF ztne01_app_777.

    itab = VALUE #(
      ( mykey = '02D5290E594C1EDA93815057FD946624' travel_id = '00000022' agency_id = '070001' customer_id = '000077' begin_date = '20190624' end_date = '20190628' booking_fee = '60.00' total_price =  '750.00' currency_code = 'USD'
        description = 'mv' overall_status = 'A' created_by = 'MUSTERMANN' created_at = '20190612133945.5960060' last_changed_by = 'MUSTERFRAU' last_changed_at = '20190702105400.3647680' )
      ( mykey = '02D5290E594C1EDA93815C50CD7AE62A' travel_id = '00000106' agency_id = '070005' customer_id = '000005' begin_date = '20190613' end_date = '20190716' booking_fee = '17.00' total_price = '650.00' currency_code = 'AFN'
        description = 'Enter your comments here' overall_status = 'A' created_by = 'MUSTERMANN' created_at = '20190613111129.2391370' last_changed_by = 'MUSTERMANN' last_changed_at = '20190711140753.1472620' )
      ( mykey = '02D5290E594C1EDA93858EED2DA2EB0B' travel_id = '00000103' agency_id = '070010' customer_id = '000011' begin_date = '20190610' end_date = '20190714' booking_fee = '17.00' total_price = '800.00' currency_code = 'AFN'
        description = 'Enter your comments here' overall_status = 'X' created_by = 'MUSTERFRAU' created_at = '20190613105654.4296640' last_changed_by = 'MUSTERFRAU' last_changed_at = '20190613111041.2251330' )
    ).

*   insert the new table entries
    INSERT ztne01_app_777 FROM TABLE @itab.


*    MODIFY ENTITIES OF i_salesordertp
*               ENTITY salesorder
*               CREATE
*               SET FIELDS WITH VALUE #(
*               ( %cid                    = 'CID01'
*                 salesordertype          = 'TA'
*                 soldtoparty             = 'AC0001'
*                 salesorganization       = '2000'
*                 distributionchannel     = '11'
*                 organizationdivision    = 'EP'
*                 salesoffice             = 'D000'
*                 salesgroup              = 'D01'
*                 salesdistrict           = 'T01'
*                 purchaseorderbycustomer = 'Neil_Json_1step'
*                 requesteddeliverydate   = '20230707'
*                 customergroup           = 'BE'
*                  ) )
*
*                 MAPPED DATA(mapped_so_headers)
*               REPORTED DATA(reported_so_headers)
*                 FAILED DATA(failed_so_headers).
*
*    COMMIT ENTITIES BEGIN
*     RESPONSE OF i_salesordertp
*     FAILED DATA(lt_commit_failed)
*     REPORTED DATA(lt_commit_reported).
*    COMMIT ENTITIES END.

  ENDMETHOD.
ENDCLASS.
