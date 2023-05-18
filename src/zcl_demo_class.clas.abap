CLASS zcl_demo_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
    METHODS test_method.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_demo_class IMPLEMENTATION.
METHOD test_method.



  ENDMETHOD.
  METHOD if_oo_adt_classrun~main.
    test_method( ).
    select *
    from ZCDS_FLIGHT_PARAM( flight_code = 'AA' )
    into table @data(lt_flight).
    out->write( lt_flight ).
  ENDMETHOD.
ENDCLASS.
