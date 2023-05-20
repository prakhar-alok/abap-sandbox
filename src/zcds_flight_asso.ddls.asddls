@AbapCatalog.sqlViewName: 'ZV_FLIGHT_ASSO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Flight association view'
define view ZCDS_FLIGHT_ASSO
  as select from spfli
  association [1..1] to scarr as _scarr on $projection.carrid = _scarr.carrid
{
  spfli.carrid,
  spfli.connid,
  spfli.countryfr,
  spfli.cityfrom,
  spfli.airpfrom,
  spfli.countryto,
  spfli.cityto,
  spfli.airpto,
  /* Associations */
  _scarr.carrname,
  _scarr
}
