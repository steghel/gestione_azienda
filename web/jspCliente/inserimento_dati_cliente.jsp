<%-- 
    Document   : inserimento_dati_cliente
    Created on : 27-dic-2011, 11.58.18
    Author     : sgh
--%>
<%@include file="/WEB-INF/jspf/preamboloAutenticazione.jspf" %>
<%@page errorPage = "../jspErrore/errore.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en-US">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>JSP Page</title>
       <link rel="stylesheet" type="text/css" href="../CSS/form.css" />
        <link rel="stylesheet" type="text/css" href="../CSS/layout.css" />
        <link rel="stylesheet" type="text/css" href="../CSS/tabella.css" /> 
        
        <jsp:useBean id="cliente" scope="session" class="database.Cliente" />
        <script type="text/javascript">               
	      function controllaDati(){
                  var str="";
                  var errore = false;
                  
                  var schemaNome= /^[a-zA-Z]{2}$/;
                  var schemaCodiceFiscale= /^[0-9a-zA-Z]{4,}$/;
                  
                  var nome=document.getElementById('idProvincia').value;
                  var partitaIva=document.getElementById('idCodiceFiscale').value;
                  
                  if(!(schemaCodiceFiscale.test(partitaIva))){
                    str += "la partita iva non è esatta, correggila \n";
                    errore = true;
                  }
                  if(!(schemaNome.test(nome))){
                    str += "la provincia non è esatta, correggila \n";
                    errore = true;
                  }
                  if(errore){
                    window.alert(str);
                  }else{  
                    
                    /*document.getElementById('idForm').submit();
                    if(document.getElementById('idInvio')==null){*/
                        document.getElementById("idButton").style.display="none";
                        var nodo = document.getElementById("idInvio");
                        //crea il bottone cancella
                        var invio = document.createElement("input");
                        invio.setAttribute("type", "submit");
                        invio.setAttribute("name", "Invio");
                        invio.setAttribute("value", "Invia dati");
                        invio.setAttribute("class", "bottone");
                        invio.setAttribute("id", "idCancella");
                        nodo.appendChild(invio);
                  }     
                    
              }         
	</script>
       
    </head>    
    <body>
       <% cliente.resetVariabili();%>  
       <jsp:setProperty name="cliente" property="*" />       
       <div id="banner"></div>
       <div id="content">
               <form> 
                   <h1>MEMORIZZAZIONE DATI CLIENTE</h1>
                     <fieldset>
                         <legend>Informazioni del  cliente</legend>
                            <div>
                                <label for="nome1"> Nome1:</label>
                                <input type="text" name="nome1" class ="txt"/>
                            </div>
                            <div>
                                <label for="nome2"> Nome2:</label>
                                <input type="text" name="nome2" class ="txt"/>
                            </div>
                            <div>
                                <label for="nome3"> Nome3:</label>
                                <input type="text" name="nome3" class ="txt"/>
                            </div>
                         </fieldset>
                             
                         <fieldset>  
                            <div>
                                <label for="codice_fiscale"> Codice fiscale:</label>
                                <input type="text" name="codice_fiscale" id="idCodiceFiscale" class ="txt" />
                            </div> 
                         </fieldset>
                    <fieldset>
                            <div>
                                <label for="indirizzo"> Indirizzo:</label>
                                <input type="text" name="indirizzo" class ="txt"/>
                            </div>
                            <div>
                                <label for="cap">CAP:</label>
                                <input type="text" name="cap" class ="txt"/>
                            </div>
                            <div>
                                <label for="citta"> Citt&agrave;:</label>
                                <input type="text" name="citta" class ="txt"/>
                            </div>
                            <div>
                                <label for="provincia"> Provincia:</label>
                                <input type="text" name="provincia" id="idProvincia" class ="txt" />
                            </div>
                    </fieldset>
                      <fieldset>   
                            <div>
                                <label for="telefono"> Telefono:</label>
                                <input type="text" name="telefono" class ="txt" />
                            </div>
                            <div>
                                <label for="fax"> Fax:</label>
                                <input type="text" name="fax" class ="txt" />
                            </div>
                            <div>
                                <label for="email"> Email:</label>
                                <input type="text" name="email" class ="txt" />
                            </div>
                            <div id="idInvio">
                                <input type="button" class="btn" id="idButton" onclick="controllaDati();" name="conferma"   value="Conferma dati" />
                                
                            </div> 
                      </fieldset>
                    </form>
                    <c:if test="${param.Invio!=null}">
                        <% cliente.inserisciDati(); %>
                        <% cliente.resetVariabili();%>
                        <c:redirect url="cancella_modifica_cliente_tag.jsp"/>                                     
                   </c:if>
               <p><a href="cancella_modifica_cliente_tag.jsp"> Accedi alla pagina per controllare i dati di un cliente </a> 
      </div>
      <div id="navigation">          
                     
          <li class="titolo">CLIENTE</li>
          <li><a href="../jspCliente/inserimento_dati_cliente.jsp">Inserimento dati cliente</a></li>
          <li><a href="../jspCliente/cancella_modifica_cliente_tag.jsp">cancella/modifica dati cliente</a></li>           
          <li class="titolo">ARTICOLO</li>
              <li><a href="../jspArticolo/inserimento_dati_articolo.jsp">Inserimento dati articolo</a></li>
              <li><a href="../jspArticolo/cancella_modifica_articolo_tag_1.jsp">cancella/modifica dati articolo</a></li>
          <li class="titolo">AZIENDA</li>    
              <li><a href="../jspAzienda/inserimento_dati_azienda.jsp">Inserimento dati azienda</a></li>
              <li><a href="../jspAzienda/cancella_modifica_azienda_tag.jsp">cancella/modifica dati azienda</a></li>
          <li class="titolo">ORDINE</li>   
              <li><a href="../jspOrdine1/crea_ordine.jsp">Effettua ordine</a></li>
              <li><a href="../jspOrdine1/visualizza_ordini.jsp">Visualizza ordini</a></li>
      </div>       
       
               
    </body>
</html>
