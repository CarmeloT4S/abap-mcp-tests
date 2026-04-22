CLASS zcl_demo_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
    CLASS-METHODS say_hello RETURNING VALUE(rv_message) TYPE string.
ENDCLASS.

CLASS zcl_demo_hello_world IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( say_hello( ) ).
  ENDMETHOD.

  METHOD say_hello.
    " Usando la nueva sintaxis de RETURN con expresión (disponible en 7.58)
    RETURN COND #( WHEN sy-langu = 'S' 
                   THEN |Hola desde 7.58! Usuario: { sy-uname }| 
                   ELSE |Γεια σας από το 7.58! (Griego) Usuario: { sy-uname }| ).
  ENDMETHOD.
ENDCLASS.