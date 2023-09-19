<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" type="text/css" href="./CSS/Admin.css">
            <link rel="stylesheet" type="text/css" href="./CSS/header.css">
            <title>Admin Dashboard</title>
        </head>

        <body>

            <div class="head">
                <header class="header">
                    <div class="left-section">
                        <h5>Attandace Management System</h5>
                    </div>
                </header>
            </div>

            <div class="main-wrapper">
                <section class="side-section">
                    <ul>
                        <div class="profile">
                            <img src="" alt="image" width="80px" height="80px">
                        </div>
                        <h3><span>name</span></h3>

                        <br>
                        <li>
                            <a href="dashboard.html" target="content"><img src="">Dashboard</a>
                        </li>
                        <hr>

                        <br>
                        <li>
                            <a href="course.html" target="content"><img src="">Course</a>
                        </li>
                        <hr>

                        <br>
                        <li>
                            <a href="class.html" target="content"><img src="">Class</a>
                        </li>
                        <hr>

                        <br>
                        <li>
                            <a href="faculty.html" target="content"><img src="">Faculty</a>
                        </li>
                        <hr>

                        <br>
                        <li>
                            <a href="student.html" target="content"><img src="">Student</a>
                        </li>
                        <hr>

                        <br>
                        <li>
                            <a href="checkattendance.html" target="content"><img src="">Student Attendance</a>
                        </li>
                        <hr>


                        <br>
                        <li>
                            <a href="UpdatePassword.html" target="content"><img src="">Update Password</a>
                        </li>
                        <hr>

                        <br>
                        <li>
                            <a href="user.html" target="content"><img src="">Users</a>
                        </li>
                    </ul>
                </section>
                <section class="content-section">
                    <iframe name="content" id="content-frame" src="dashboard.html" frameborder="0"></iframe>
                </section>
            </div>
        </body>

        </html>