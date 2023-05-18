@AbapCatalog.sqlViewName: 'ZV_FLIGHT_PARAM'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Flight with parameters'
@VDM.viewType: #BASIC
define view ZCDS_FLIGHT_PARAM 
    with parameters flight_code: s_carr_id
    as select from sflight
{
    key sflight.carrid as AirlineCode,
    key sflight.connid as ConnectionNumber,
    key sflight.fldate as FlightDate,
        sflight.price   as Airfare,
        sflight.currency as FareCurrency,
        sflight.planetype as PlaneCategory,
        sflight.seatsmax as MaxAvailableSeats,
        sflight.seatsocc as OccupiedSeats
} where carrid = $parameters.flight_code
