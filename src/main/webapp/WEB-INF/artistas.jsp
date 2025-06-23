<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*, java.text.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Lista de Artistas</title>
    <link rel="stylesheet" href="/css/styles.css">
</head>
<body class="panel bg col acenter pad gap">

<h1>Artistas</h1>

<div class="actions">
    <a class="btn" href="/artistas/formulario/agregar">Agregar artista</a>
</div>

<table>
<colgroup>
<col span="1">
<col span="1">
</colgroup>
<thead>
<tr>
<th>Acciones</th>
<th>Nombre</th>
</tr>
</thead>
<tbody>
<c:forEach items="${artistas}" var="artista">
<tr>
<td>
    <a class="btn small img panel col acenter" href="/artistas/formulario/editar/${artista.id}">
        <img src="/img/editar.png" alt="Editar">
    </a>
</td>
<td>
    <a href="/artistas/detalle/${artista.id}">${artista.nombre} ${artista.apellido}</a>
</td>
</tr>
</c:forEach>
</tbody>
</table>

<div class="actions">
    <a class="btn" href="/canciones">Ir a canciones</a>
</div>

</body>
</html>