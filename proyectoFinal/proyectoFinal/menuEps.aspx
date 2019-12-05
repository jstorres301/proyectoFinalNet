﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menuEps.aspx.cs" Inherits="proyectoFinal.prueba" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" class="h-100 w-100 m-0 p-0" style="background: #7AABCB;">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Menu Administrador</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body class="row d-flex h-100 w-100 m-0 p-0 bg-transparent">

    <div class="h-100 m-auto border-0 float-left rounded text-light" style="width: 20% !important; min-height: 30%; background: rgba(40, 75, 89,0.8);">
        <div class="w-100 h-25 d-flex m-0 p-0 border-0 h-40px float-left text-center justify-content-center">
            <h1 class="mt-5 text-center">Menu</h1>
        </div>

        <div class="nav nav-tabs flex-column w-100 border-0 d-flex justify-content-between h-75 font-italic">
            <div class="h-75 float-left">
                <li class="nav-item nav-link mt-5" data-toggle="tab" role="tab" style="cursor:pointer;">
                    <a target="mesa">
                        <h3><i class="fab fa-asymmetrik"></i> Mi Informacion</h3>
                    </a>
                </li>

                <li class="nav-item nav-link" data-toggle="tab" role="tab" style="cursor:pointer;">
                    <a target="mesa">
                        <h3><i class="fas fa-hospital"></i> Centros Medicos</h3>
                    </a>
                </li>
            </div>
            <div class="h-25 float-left">
                <li class="nav-item nav-link mt-5" data-toggle="tab" role="tab" style="cursor:pointer;">
                    <a target="mesa" href="index.aspx">
                        <h3><i class="fas fa-sign-out-alt"></i> Cerrar Sesion</h3>
                    </a>
                </li>
            </div>

        </div>
    </div>

    <div class="h-100 m-0 p-0 border-0 d-flex justify-content-center float-left" style="width: 80%;">
        <iframe class="w-100 h-100 m-0 p-0 border-0 embed-responsive-item" name="mesa" id="mesa" allowfullscreen></iframe>
    </div>
    <script src="https://kit.fontawesome.com/ca52bd6e4f.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <script>
        $("document").ready(function () {
            $("li").click(function () {
                var liUsado = $("li").click;
                $("li").removeClass("active");
                liUsado.addClass("active");
            })
        })
    </script>
</body>
</html>
