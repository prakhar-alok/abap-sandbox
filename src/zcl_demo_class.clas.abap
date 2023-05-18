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
    TYPES: BEGIN OF lty_tab,
            var TYPE i,
           END OF lty_tab.

     DATA: lt_tab TYPE SORTED TABLE OF lty_tab WITH UNIQUE KEY var,
           ls_tab TYPE lty_tab.

     lt_tab = VALUE #( ( var = 1 )
                       ( var = 7 )
                       ( var = 5 ) ).
     ls_tab-var = 2.
     INSERT ls_tab INTO TABLE lt_tab.
     IF sy-subrc = 0.
     ENDIF.

  ENDMETHOD.
  METHOD if_oo_adt_classrun~main.
    test_method( ).
  ENDMETHOD.
ENDCLASS.
