</div> <!-- container -->

<!-- jQuery -->
<script src="js/jquery-2.1.4.min.js"></script>

<!-- jQuery UI: User Interfaces -->
<script src="js/jquery-ui-1.11.4.custom/jquery-ui.min.js"></script>

<!-- Convertir los textareas en TinyMCE -->
<script src="js/Tinymce-4.1.10/tinymce.min.js"></script>
<script>tinymce.init({selector:'textarea',
	language : 'es',
	plugins: "table textpattern code colorpicker contextmenu wordcount textcolor",
	toolbar: ["undo redo | styleselect | bold italic | link image | alignleft aligncenter alignright | forecolor backcolor"],
    tools: "inserttable",
    contextmenu: "link image inserttable | cell row column deletetable"});</script>
    
<!-- Custom JavaScript despues de cargar todas las librerias -->
<script src="js/main.js" type="text/javascript"></script>

</body>

</html>