{capture assign="left"}
    {}
    <center><img src="https://scontent.xx.fbcdn.net/hphotos-xpf1/v/t1.0-9/10923385_10204790305291971_7441852221582200492_n.jpg?oh=dcc2c8363ef95e902a3a978fb7f573e2&oe=556FD058" width="150" height="150"</img></center>
    <br>
    <div class="well">
        Information
    </div>     
{/capture}    
{capture assign="right"}
    {Form::open(['url'=>'publicacion/crear'])} 
    <textarea  name="publicacion" placeholder="¿What do You Think?" rows="4" class="col-sm-12"></textarea> 
    <button type="submit" class="btn pull-right btn-success">Public</button>
    {Form::close()}

    <hr>
    <br>
    <br>
    <br>
    <br>

    {foreach $publicaciones as $publicacion}
        <div class="well" style="margin-bottom: 5px; padding: 10px 5px; font-family: 'Oswald', sans-serif;">  
            <button class="close" arial-hidden="true" style="margin-top: -10px"><a href="{url('publicacion/eliminar')}/{$publicacion->id}"> &times; </a></button>
            {$publicacion->publicacion}  



        </div>
        <div> <span class="glyphicon glyphicon-comment"> </span> Comentar
            <span class="glyphicon glyphicon-thumbs-up"> </span> Me gusta
            <div id="comentarios-{$publicacion->id}">
                <div style="font-size: 10px; padding: 3px;" class="well well-sm col-sm-7">Esto es un comentario</div>

            </div>
            <br>
            <br>


            <br>  <textarea id="comentario-{$publicacion->id}" rows="1" placeholder="Escribe tu comentario..." class="col-sm-6"></textarea>
            <button class="btn btn-success btn-sm"onclick="fb.comentar({$publicacion->id})">Comentar</button>

            {*<span class="pull-right glyphicon"style=""> </span> Eliminar*}




        </div>
        <hr>

    {foreachelse}
        {*falta el aviso si no hay publicaciones*}<div class=""

        {/foreach}


    {/capture} 
    {capture assign="portada"}
        <img src="data:image/jpeg;base64,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">
    {/capture} 

    {include file="../masterpage/template.tpl" layout="two_columns"}