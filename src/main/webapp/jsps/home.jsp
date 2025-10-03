<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SUNEETHA DEVOPS Home Page</title>
    <link rel="icon" href="images/kkfunda.jpg">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: lightpink; /* ✅ Changed from #f0f4f8 to light pink */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        header {
            background: linear-gradient(90deg, #0d6efd, #00bfff);
            color: white;
            padding: 40px 0;
            text-align: center;
        }
        header h1 {
            font-size: 2.5rem;
            font-weight: bold;
        }
        header h3 {
            font-weight: 400;
            margin-top: 10px;
        }
        .info-card {
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            padding: 30px;
            margin-bottom: 30px;
            transition: transform 0.2s ease;
        }
        .info-card:hover {
            transform: translateY(-5px);
        }
        .info-title {
            font-size: 1.5rem;
            margin-bottom: 20px;
            color: #0d6efd;
        }
        .contact-img {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 50%;
            margin-bottom: 15px;
            border: 3px solid #0d6efd;
        }
        footer {
            background-color: #222;
            color: #ccc;
            text-align: center;
            padding: 20px 0;
            margin-top: 40px;
        }
        footer a {
            color: #00bfff;
            text-decoration: none;
        }
        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<header>
    <h1>🚀 Welcome to Suneetha DevOps</h1>
    <h3>Training | Development | Consulting</h3>
</header>

<main class="container mt-5">

    <div class="row justify-content-center">

        <!-- Server Info -->
        <div class="col-md-6">
            <div class="info-card">
                <div class="info-title">🌐 Server Information</div>
                <%
                    try {
                        InetAddress inetAddress = InetAddress.getLocalHost();
                        String ip = inetAddress.getHostAddress();
                %>
                        <p><strong>Server Host Name:</strong> <%= inetAddress.getHostName() %></p>
                        <p><strong>Server IP Address:</strong> <%= ip %></p>
                <%
                    } catch (Exception e) {
                        out.println("<p class='text-danger'>Unable to retrieve server info: " + e.getMessage() + "</p>");
                    }
                %>
            </div>
        </div>

        <!-- Client Info -->
        <div class="col-md-6">
            <div class="info-card">
                <div class="info-title">💻 Client Information</div>
                <p><strong>Client IP Address:</strong> <%= request.getRemoteAddr() %></p>
                <p><strong>Client Host Name:</strong> <%= request.getRemoteHost() %></p>
            </div>
        </div>

        <!-- Contact Info -->
        <div class="col-md-6">
            <div class="info-card text-center">
                <img src="images/kkfunda.jpg" alt="SUNEETHA Logo" class="contact-img shadow">
                <h4 class="mt-2">SUNEETHA</h4>
                <p><strong>Address:</strong> Harrow, LONDON</p>
                <p><strong>Phone:</strong> +44-7123456789</p>
                <p><strong>Email:</strong> <a href="mailto:suneethadevops@gmail.com">suneethadevops@gmail.com</a></p>
                <a href="mailto:suneethadevops@gmail.com" class="btn btn-primary mt-2">📧 Mail to SUNEETHA</a>
            </div>
        </div>

        <!-- Services Info -->
        <div class="col-md-6">
            <div class="info-card text-center">
                <h4 class="info-title">⚙️ Our Services</h4>
                <p><a href="services/employee/getEmployeeDetails" class="btn btn-success">Get Employee Details</a></p>
            </div>
        </div>

    </div>
</main>

<footer>
    <p>© 2024 SUNEETHA Training & Development Center</p>
    <p><small>Powered by <a href="https://google.com/" target="_blank">SUNEETHA</a></small></p>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
