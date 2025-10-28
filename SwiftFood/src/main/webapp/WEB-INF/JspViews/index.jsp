<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- Build URLs safely with context path --%>
<c:url var="allCustomersUrl" value="/all-customers" />
<c:url var="addCustomerForm" value="/addCustomer" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>SwiftFood — Fast. Fresh. Delivered.</title>
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
            --btn-text: #0b1020;
        }
        * {
            box-sizing: border-box;
        }
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
        .nav a {
            color: var(--muted);
            text-decoration: none;
            margin-left: 16px;
            font-size: 14px;
        }
        .nav a:hover {
            color: var(--text);
        }
        .container {
            max-width: 1000px;
            margin: 0 auto;
            padding: 24px;
        }
        .hero {
            display: grid;
            gap: 18px;
            padding: 28px;
            background: linear-gradient(180deg, rgba(255,255,255,0.04), rgba(255,255,255,0.02));
            border: 1px solid rgba(255,255,255,0.06);
            border-radius: 16px;
            backdrop-filter: blur(4px);
            box-shadow: 0 12px 40px rgba(0,0,0,0.25);
        }
        .hero h1 {
            margin: 0;
            font-size: clamp(28px, 3.5vw, 40px);
            line-height: 1.15;
        }
        .hero p {
            margin: 0;
            color: var(--muted);
            font-size: 15px;
        }
        .cta {
            display: flex;
            align-items: center;
            gap: 12px;
            margin-top: 8px;
            flex-wrap: wrap;
        }
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 12px 16px;
            border-radius: 10px;
            border: 0;
            cursor: pointer;
            font-weight: 600;
            text-decoration: none;
            transition: transform 0.06s ease, box-shadow 0.2s ease, background 0.2s ease;
        }
        .btn-primary {
            color: var(--btn-text);
            background: linear-gradient(135deg, #22c55e, #a3e635);
            box-shadow: 0 10px 24px rgba(34, 197, 94, 0.35);
        }
        .btn-primary:hover {
            transform: translateY(-1px);
        }
        .btn-ghost {
            color: var(--text);
            background: rgba(255,255,255,0.06);
            border: 1px solid rgba(255,255,255,0.08);
        }
        .features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 14px;
            margin-top: 18px;
        }
        .card {
            background: var(--card);
            border: 1px solid rgba(255,255,255,0.06);
            border-radius: 14px;
            padding: 16px;
        }
        .card h3 {
            margin: 0 0 6px;
            font-size: 16px;
        }
        .card p {
            margin: 0;
            color: var(--muted);
            font-size: 13px;
        }
        footer {
            padding: 16px 24px;
            color: var(--muted);
            font-size: 13px;
            text-align: center;
            border-top: 1px solid rgba(255,255,255,0.06);
            background: rgba(255,255,255,0.02);
            margin-top: 18px;
        }
    </style>
</head>
<body>
    <header>
        <div class="brand">
            <div class="logo">🍔</div>
            <div>SwiftFood</div>
        </div>
        <nav class="nav">
            <a href="#">Menu</a>
            <a href="#">Orders</a>
            <a href="${allCustomersUrl}">Customers</a>
        </nav>
    </header>

    <main class="container">
        <section class="hero">
            <h1>Fast. Fresh. Delivered.</h1>
            <p>Manage customers, browse orders, and keep your SwiftFood operations running smoothly.</p>
            <div class="cta">
                <!-- Navigate to existing endpoint -->
                <form action="${allCustomersUrl}" method="get">
                    <button class="btn btn-primary" type="submit">View all customers 🚀</button>
                </form>
                <!-- Future links -->
                <form action="${addCustomerForm}" method="get">
                    <button class="btn btn-primary"type="submit">Add customer ➕</button>
                </form>
                
               <!-- <a class="btn btn-ghost" href="#">View orders 📦</a> --> 
            </div>

            <div class="features">
                <div class="card">
                    <h3>🍱 Wide variety</h3>
                    <p>From local favorites to global cuisines curated for speed and taste.</p>
                </div>
                <div class="card">
                    <h3>⚡ Blazing fast</h3>
                    <p>Optimized flows so your customers never wait too long.</p>
                </div>
                <div class="card">
                    <h3>📊 Simple management</h3>
                    <p>Keep track of customers and orders in one place.</p>
                </div>
            </div>
        </section>
    </main>
    <footer>
        © <script>document.write(new Date().getFullYear())</script> SwiftFood • Built with Spring Boot + JSP
    </footer>
</body>
</html>
