@AbapCatalog.sqlViewName: 'ZV_FLIGHT_AGGR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Flight aggregate views'
define view ZCDS_FLIGHT_AGGR as select from sflight
{
    key sflight.carrid,
    key sflight.connid,
    sum( price ) as total_amount,
        sflight.currency,
    count(*) as lines
} group by carrid, connid, currency
