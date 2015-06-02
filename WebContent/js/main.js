/**
 * Primer JavaScript para trastear con el
 * 
 * version: 1.0 author: David Garcia date: 20150518
 * 
 */

var alumnos = [ "Ander Profe", "Javier", "Cristina", "Jorge", "Mihai",
		"Ieltxu", "Aritz", "Ander", "Javi", "Jon", "Raul", "Iaione", "David",
		"Lara", "---", "Unai", "Mikel" ];

function init() {
	// alert('onload body ok');
	/*
	 * console.info('Muestrame algo que me sirva (INFO)'); console.debug('Es una
	 * traza para depurar o ver valores de variables (DEBUG)');
	 * console.error('Cuando falla algo (Error)');
	 */

	/*
	 * localStorage almacena en el discoduro del pc cliente, por lo tanto aun
	 * cerrando el navegador los valores se guardan
	 */
	/*
	 * Guardar en localStorage localStorage["key1"]="value1";
	 * localStorage.setItem ("key3", "value3");
	 */

	/*
	 * Cargar datos de localStorage console.debug(localStorage["key1"]);
	 * console.debug(localStorage.getItem("key3"));
	 */

	/*
	 * Eliminar valores de localStorage localStorage.removeItem("key2");
	 */

	/*
	 * sessionStorage almacena los valores en keyiable de sesion, por lo tanto
	 * al recargar la pagina o cerrar el navegador los valores se pierden
	 */
	/*
	 * Guardar en sessionStorage sessionStorage["key1"]="value1";
	 * sessionStorage.setItem ("key3", "value3");
	 */

	/*
	 * Cargar datos de sessionStorage console.debug(sessionStorage["key1"]);
	 * console.debug(sessionStorage.getItem("key3"));
	 */

	/*
	 * Eliminar valores de sessionStorage sessionStorage.removeItem("key2");
	 */

	if (document.getElementById('index') != null) {
		for (i = 0; i <= alumnos.length - 1; i++) {
			document.getElementById('celda' + i).innerHTML = alumnos[i];
		}

		var listado_keys = Object.keys(localStorage);
	}
}

/**
 * Genera un numero aleatorio entre 1 y 15 Lo muestra en el 'label' con id
 * 'afortunado'
 */
function obtener_ganador() {

	// console.debug('click ok');
	var lb_afortunado = document.getElementById('afortunado');
	var num_aleatorio = Math.floor((Math.random() * (alumnos.length)));
	if (num_aleatorio == 14) {
		obtener_ganador();
	} else {
		lb_afortunado.innerHTML = alumnos[num_aleatorio];
		for (i = 0; i <= alumnos.length - 1; i++) {
			document.getElementById('celda' + i).className = 'celda';
		}
		var celda = document.getElementById('celda' + num_aleatorio);
		celda.className = 'celda_on';
	}
}


(function( $ ) {
    $.widget( "custom.combobox", {
      _create: function() {
        this.wrapper = $( "<span>" )
          .addClass( "custom-combobox" )
          .insertAfter( this.element );
 
        this.element.hide();
        this._createAutocomplete();
        this._createShowAllButton();
      },
 
      _createAutocomplete: function() {
        var selected = this.element.children( ":selected" ),
          value = selected.val() ? selected.text() : "";
 
        this.input = $( "<input>" )
          .appendTo( this.wrapper )
          .val( value )
          .attr( "title", "" )
          .addClass( "custom-combobox-input ui-widget ui-widget-content ui-state-default ui-corner-left" )
          .autocomplete({
            delay: 0,
            minLength: 0,
            source: $.proxy( this, "_source" )
          })
          .tooltip({
            tooltipClass: "ui-state-highlight"
          });
 
        this._on( this.input, {
          autocompleteselect: function( event, ui ) {
            ui.item.option.selected = true;
            this._trigger( "select", event, {
              item: ui.item.option
            });
          },
 
          autocompletechange: "_removeIfInvalid"
        });
      },
 
      _createShowAllButton: function() {
        var input = this.input,
          wasOpen = false;
 
        $( "<a>" )
          .attr( "tabIndex", -1 )
          .attr( "title", "Show All Items" )
          .tooltip()
          .appendTo( this.wrapper )
          .button({
            icons: {
              primary: "ui-icon-triangle-1-s"
            },
            text: false
          })
          .removeClass( "ui-corner-all" )
          .addClass( "custom-combobox-toggle ui-corner-right" )
          .mousedown(function() {
            wasOpen = input.autocomplete( "widget" ).is( ":visible" );
          })
          .click(function() {
            input.focus();
 
            // Close if already visible
            if ( wasOpen ) {
              return;
            }
 
            // Pass empty string as value to search for, displaying all results
            input.autocomplete( "search", "" );
          });
      },
 
      _source: function( request, response ) {
        var matcher = new RegExp( $.ui.autocomplete.escapeRegex(request.term), "i" );
        response( this.element.children( "option" ).map(function() {
          var text = $( this ).text();
          if ( this.value && ( !request.term || matcher.test(text) ) )
            return {
              label: text,
              value: text,
              option: this
            };
        }) );
      },
 
      _removeIfInvalid: function( event, ui ) {
 
        // Selected an item, nothing to do
        if ( ui.item ) {
          return;
        }
 
        // Search for a match (case-insensitive)
        var value = this.input.val(),
          valueLowerCase = value.toLowerCase(),
          valid = false;
        this.element.children( "option" ).each(function() {
          if ( $( this ).text().toLowerCase() === valueLowerCase ) {
            this.selected = valid = true;
            return false;
          }
        });
 
        // Found a match, nothing to do
        if ( valid ) {
          return;
        }
 
        // Remove invalid value
        this.input
          .val( "" )
          .attr( "title", value + " didn't match any item" )
          .tooltip( "open" );
        this.element.val( "" );
        this._delay(function() {
          this.input.tooltip( "close" ).attr( "title", "" );
        }, 2500 );
        this.input.autocomplete( "instance" ).term = "";
      },
 
      _destroy: function() {
        this.wrapper.remove();
        this.element.show();
      }
    });
  })( jQuery );
 
  $(function() {
    $( "#lista_select" ).combobox();
    $( "#toggle" ).click(function() {
      $( "#combobox" ).toggle();
    });
  });