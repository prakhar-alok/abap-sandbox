@AbapCatalog.sqlViewName: 'ZV_FLIGHT_1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Flight Information'
define view ZCDS_FLIGHT_1 as select from sflight
{
    key sflight.carrid as AirlineCode,
    key sflight.connid as ConnectionNumber,
    key sflight.fldate as FlightDate,
        sflight.price   as Airfare,
        sflight.currency as FareCurrency,
        sflight.planetype as PlaneCategory,
        sflight.seatsmax as MaxAvailableSeats,
        sflight.seatsocc as OccupiedSeats
}
