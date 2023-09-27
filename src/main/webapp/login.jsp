<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Title</title>
</head>
<body>
<div class="container mt-5">
    <form name="form" action="/WebJava04_war_exploded/servlet-verifica" method="post">
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Usuario</label>
            <input type="text" name="xnom" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        </div>
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Password</label>
            <input type="password" name="xcla" class="form-control" id="exampleInputPassword1">
        </div>
        <button type="submit" class="btn btn-primary">Ingresar</button>
        <a class='btn btn-danger' href="index.jsp">Cancelar</a>
    </form>
</div>
</body>

</html>
