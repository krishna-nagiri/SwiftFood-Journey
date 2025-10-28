<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SwiftFood — All Customers</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
        :root {
            --bg: #0f172a;
            --card: #111827;
            --muted: #94a3b8;
            --text: #e5e7eb;
            --brand: #ef4444;
            --brand-2: #f59e0b;
            --accent: #22c55e;
        }
        * { box-sizing: border-box; }
        body {
            margin: 0;
            font-family: system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, "Helvetica Neue", Arial, "Noto Sans";
            color: var(--text);
            background: radial-gradient(1200px 600px at 80% -10%, rgba(239, 68, 68, 0.18), transparent 60%),
                        radial-gradient(1000px 500px at -10% 0%, rgba(245, 158, 11, 0.12), transparent 60%),
                        linear-gradient(180deg, #0b1220 0%, #0f172a 100%);
            min-height: 100vh;
            display: grid;
            grid-template-rows: auto 1fr auto;
        }
        header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 16px 24px;
        }
        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-weight: 700;
            letter-spacing: 0.4px;
        }
        .logo {
            width: 36px;
            height: 36px;
            display: grid;
            place-items: center;
            border-radius: 10px;
            background: linear-gradient(135deg, var(--brand), var(--brand-2));
            box-shadow: 0 8px 24px rgba(239, 68, 68, 0.35);
            font-size: 18px;
        }
        .container {
            max-width: 900px;
            margin: 0 auto;
            padding: 24px;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 26px;
            letter-spacing: 0.3px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background: var(--card);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 8px 30px rgba(0,0,0,0.25);
        }
        th, td {
            padding: 12px 16px;
            text-align: left;
        }
        th {
            background: rgba(255,255,255,0.06);
            color: var(--accent);
            font-weight: 600;
            border-bottom: 1px solid rgba(255,255,255,0.08);
        }
        tr:nth-child(even) {
            background: rgba(255,255,255,0.03);
        }
        tr:hover {
            background: rgba(255,255,255,0.06);
        }
        td {
            color: var(--text);
        }
        .back-btn {
            display: inline-block;
            margin-top: 24px;
            padding: 10px 16px;
            background: linear-gradient(135deg, var(--accent), #a3e635);
            color: #0b1020;
            border-radius: 8px;
            text-decoration: none;
            font-weight: 600;
            transition: transform 0.06s ease, box-shadow 0.2s ease;
        }
        .back-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 16px rgba(34, 197, 94, 0.3);
        }
        footer {
            padding: 16px 24px;
            color: var(--muted);
            font-size: 13px;
            text-align: center;
            border-top: 1px solid rgba(255,255,255,0.06);
            background: rgba(255,255,255,0.02);
            margin-top: 24px;
        }
    </style>
</head>
<body>

<header>
    <div class="brand">
        <div class="logo">🍔</div>
        <div>SwiftFood</div>
    </div>
</header>

<main class="container">
    <h2>All Registered Customers</h2>

    <table>
        <tr>
            <th>Customer ID</th>
            <th>Customer Name</th>
        </tr>
        <c:forEach var="customer" items="${customers}">
            <tr>
                <td>${customer.customerId}</td>
                <td>${customer.customerName}</td>
            </tr>
        </c:forEach>
    </table>

    <a href="/" class="back-btn">⬅ Back to Home</a>
</main>

<footer>
    © <script>document.write(new Date().getFullYear())</script> SwiftFood • Built with Spring Boot + JSP
</footer>

</body>
</html>
