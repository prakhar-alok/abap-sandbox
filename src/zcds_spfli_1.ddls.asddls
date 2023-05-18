@AbapCatalog.sqlViewName: 'ZV_SPFLI_1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Flight schedule basic view'
define view ZCDS_SPFLI_1 
    with parameters p_carrid: s_carr_id,
                    p_connid: s_conn_id
    as select from spfli
{
    key carrid,
    key connid,
        countryfr,
        cityfrom,
        airpfrom,
        countryto,
        cityto,
        airpto
}   where carrid = :p_carrid and connid = :p_connid
