<!DOCTYPE html>

<html>
    <head>
        <title>{$TITULO_SITE}</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link href="{$GET_TEMA}/tema/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="{$GET_TEMA}/tema/contatos/contatos.css" rel="stylesheet" type="text/css"/>
        <script src="{$GET_TEMA}/tema/js/jquery-2.2.1.min.js" type="text/javascript"></script>
        <script src="{$GET_TEMA}/tema/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="{$GET_TEMA}/tema/contatos/contatos.js" type="text/javascript"></script>
      
        <link href="{$GET_TEMA}/tema/css/tema.css" rel="stylesheet" type="text/css"/>
   

    </head>
    <body>
     
        <div class="container-fluid">
            
            
            <div class="row" id="topo">
                 
                
                <div class="container">

                    <div class="col-md-6">
                         <img src="{$GET_TEMA}/images/logo1.png" alt=""> 
                    </div>

                    <div class="col-md-6 text-right">
                            
                                     <br>{if $LOGADO == true}
                                      Olá: {$USER} <a href="{$PAG_LOGOFF}" class="btn btn-info"><i class="glyphicon glyphicon-log-out"></i> Sair </a> 
                                     {/if}
                        
                        </div>  
                       
                </div> 


                     
            
            </div>
            
           
            <div class="row" id="barra-menu">
                
             
                <nav class="navbar navbar-inverse">
                    
                   
                    <div class="container">
                      
                        <div class="navbar-header">
                           
                           <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                               <span class="sr-only">Toggle navigation</span>
                               <span class="icon-bar"></span>
                               <span class="icon-bar"></span>
                               <span class="icon-bar"></span>
                           </button>
                        
                        </div>  
                        
                        <div class="collapse navbar-collapse" id="navbar">
                            <ul class="nav navbar-nav">
                                <li><a href="{$GET_SITE_HOME}"><i class="glyphicon glyphicon-home"></i> Home </a> </li>


                                 <li><a href="{$PAG_PRODUTOS}"><i class="glyphicon glyphicon-tag"></i> Produtos </a> </li>
                               
                                <li><a href="{$PAG_MINHACONTA}"><i class="glyphicon glyphicon-user"></i> Minha Conta </a> </li>
                                <li><a href="{$PAG_CARRINHO}"><i class="glyphicon glyphicon-shopping-cart"></i> Carrinho </a> </li>
                                <li><a href="{$PAG_CONTATO}" ><i class="glyphicon glyphicon-envelope"></i> Contato </a> </li>
                                
                                
                               
                                
                            </ul>
                            

                            <form class="navbar-form navbar-right" role="search">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Digite para buscar" required>
                                </div>
                                <button type="submit" class="btn btn-primary">Buscar</button>
                            </form>
                            
                         </div> 


                    </div> 
                    
                </nav> 
                
                
                
                
                
            </div>  
            
            
            <div class="row" id="conteudo">
            
            <div class="container"> 
              
                
                <div class="col-md-2" id="lateral">
                    
                <div class="list-group">
                    <span class="list-group-item active"> Categorias</span>

                     <a href="{$PAG_PRODUTOS}" class="list-group-item"><span class="glyphicon glyphicon-menu-right"></span> Todos</a> 

                    {foreach from=$CATEGORIAS item=C}
                    
                    <a href="{$C.cate_link}" class="list-group-item"><span class="glyphicon glyphicon-menu-right"></span> {$C.cate_nome}</a> 
                    
                    {/foreach}


                    
                    
                    
                </div>             
                              
                </div> 
                
              
                <div class="col-md-10">
                    
                    
                    <ul class="breadcrumb">
                        <li><a href="#"><i class="glyphicon glyphicon-home"></i> Home </a></li>
                        <li><a href="#"> Produtos </a></li>
                        <li><a href="#"> Info </a></li>
                    </ul>   
                                
                    
                  {php}

                  Rotas::get_Pagina();
                  //var_dump(Rotas::$pag);
                  {/php}
                    
                </div>  
            
            </div>   
                
                
            
                
                
                
            </div>
            
            
            <div class="row" id="rodape">
                <center>
                    <h4>{$TITULO_SITE}</h4>
                    <P> Silvio Anderson - Compre tudo e me deixe rico - Data Atual: {$DATA}</P>
                </center>
            
            </div>
            
            
            
           </div> 
        
        
        
        
    </body>
</html>
