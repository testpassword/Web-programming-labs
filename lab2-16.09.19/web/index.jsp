<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html lang="ru-RU">
<head>
  <meta name="description" content="Лабораторная работа №2 по дисциплине веб-программирование.">
  <meta name="author" content="Кульбако Артемий Юрьевич">
  <meta name="keywords" content="ВТ, Лабораторная работа, Веб-программирование, Институт Тёплых Мужскин Отношений"/>
  <link href="stylesheets/main_page.css" rel="stylesheet">
  <link href="stylesheets/check_button.css" rel="stylesheet">
  <link rel="icon" type="image/jpg" href="images/favicon.jpg">
  <title>Лабораторная №1</title>
</head>
<body>
<header class="shaded animated">
  <h1>Веб-программирование, Лаб. 2, Вариант 212301</h1>
  <div id="credit">
    <img src="images/avatar.png" align="middle" alt="Аватар разработчика">
    <a href="https://github.com/testpassword" class="illuminated animated" title="Перейти к профилю Github разработчика">Кульбако Артемий Юрьевич, P3212</a>
  </div>
</header>
<table id="mainTable" class="shaded">
  <thead><td colspan="5"><h3>Валидация введённых значений:</h3></td></thead>
  <tbody>
  <tr><td colspan="5"><hr></td></tr>
  <tr>
    <td rowspan="3">Выберите X:</td>
    <td><input name="X-button" class="illuminated animated" type="button" value="-2.0"></td>
    <td><input name="X-button" class="illuminated animated" type="button" value="-1.5"></td>
    <td><input name="X-button" class="illuminated animated" type="button" value="-1.0"></td>
    <td rowspan="6">
      <canvas class="illuminated" width="300" height="300"></canvas>
    </td>
  </tr>
  <tr>
    <td><input name="X-button" class="illuminated animated" type="button" value="-0.5"></td>
    <td><input name="X-button" class="illuminated animated" type="button" value="0"></td>
    <td><input name="X-button" class="illuminated animated" type="button" value="0.5"></td>
  </tr>
  <tr>
    <td><input name="X-button" class="illuminated animated" type="button" value="1"></td>
    <td><input name="X-button" class="illuminated animated" type="button" value="1.5"></td>
    <td><input name="X-button" class="illuminated animated" type="button" value="2"></td>
  </tr>
  <tr>
    <td>Введите Y:</td>
    <td colspan="3"><input required name="Y-input" class="illuminated animated" type="text" placeholder="значение в промежутке (-5 до 3)" maxlength="6"></td>
  </tr>
  <tr>
    <td rowspan="2">Выберите R:</td>
    <td>
      1
      <input name="R-radio-group" class="illuminated animated" type="radio" value="1"></td>
    <td>
      2
      <input name="R-radio-group" class="illuminated animated" type="radio" value="2"></td>
    <td>
      3
      <input name="R-radio-group" class="illuminated animated" type="radio" value="3"></td>
    </td>
  </tr>
  <tr>
    <td>
      4
      <input name="R-radio-group" class="illuminated animated" type="radio" value="4"></td>
    <td>
      5
      <input name="R-radio-group" class="illuminated animated" type="radio" value="5"></td>
  </tr>
  <tr>
    <td colspan="5">
      <button id="checkButton">Проверить</button>
      <hr>
    </td>
  </tr>
  </tbody>
  <tfoot>
  <tr>
    <td colspan="5" id="outputContainer"><h4><span class="outputStub notification">Результаты отсутствуют</span></h4></td>
  </tr>
  </tfoot>
</table>
<footer class="shaded animated">
  <figure>
    <a href="https://se.ifmo.ru">
      <img class="illuminated"
           src="images/pulpit_logo.png"
           alt="Кафедра вычислительной техники НИУ ИТМО"
           title="Перейти на сайт кафедры вычислительной техники НИУ ИТМО">
    </a>
    <figcaption>2019</figcaption>
  </figure>
</footer>
<script src="scripts/validator.js"></script>
<script src="scripts/easter_egg.js"></script>
</body>
</html>