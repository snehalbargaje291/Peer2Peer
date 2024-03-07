<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <style>
    body {
      background-color: green;
      text-align: center;
      font-family: Arial, sans-serif;
    }
    .message {
      font-size: 24px;
      color: white;
      margin-top: 100px;
    }
    .button-container {
      margin-top: 20px;
    }
    .button {
      background-color: red;
      border: none;
      padding: 10px 20px;
      font-size: 18px;
      cursor: pointer;
      margin: 10px;
      border-radius: 5px;
    }
  </style>
</head>
<body>
  <div class="message">Ride Successfully Posted!!!</div>
  <div class="button-container">
    <button class="button" onclick="location.href='index.jsp'">Home</button>
    <button class="button" onclick="location.href='post.jsp'">Post Again</button>
  </div>
</body>
</html>
