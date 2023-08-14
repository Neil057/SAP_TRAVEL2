@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'data model for Travel'

define root view entity ZINE_01_M_777

  as select from ztne01_app_777 as Travel

  /* Associations */
  association [0..1] to zod_I_Agency   as _Agency   on $projection.agency_id = _Agency.AgencyID
  association [0..1] to ZOD_I_Customer as _Customer on $projection.customer_id = _Customer.CustomerID
  association [0..1] to I_Currency     as _Currency on $projection.currency_code = _Currency.Currency

{

  key mykey,
      travel_id,
      agency_id,
      customer_id,
      begin_date,
      end_date,
      @Semantics.amount.currencyCode: 'currency_code'
      booking_fee,
      @Semantics.amount.currencyCode: 'currency_code'
      total_price,
      currency_code,
      overall_status,
      description,

      /*-- Admin data --*/
      @Semantics.user.createdBy: true
      created_by,
      @Semantics.systemDateTime.createdAt: true
      created_at,
      @Semantics.user.lastChangedBy: true
      last_changed_by,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at,

      /* Public associations */
      _Agency,
      _Customer,
      _Currency
}
