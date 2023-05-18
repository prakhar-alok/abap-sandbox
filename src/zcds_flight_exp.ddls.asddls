@AbapCatalog.sqlViewName: 'ZV_FLIGHT_EXP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Flight Explicit'
@VDM.viewType: #BASIC
define view ZCDS_FLIGHT_EXP 
    //Explicit name list
    (Code, AName, FDate, Fare, FCurrency, AType, Total, Occupied)
    as select from sflight
{
    key sflight.carrid,
    key sflight.connid,
    key sflight.fldate,
        sflight.price,
        sflight.currency,
        sflight.planetype,
        sflight.seatsmax,
        sflight.seatsocc
}
