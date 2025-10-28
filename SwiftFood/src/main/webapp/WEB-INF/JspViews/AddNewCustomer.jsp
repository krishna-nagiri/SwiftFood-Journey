<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>SwiftFood — Add Customer</title>
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

        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 32px;
        }

        h2 {
            text-align: center;
            margin-bottom: 24px;
            font-size: 26px;
            letter-spacing: 0.4px;
        }

        form {
            display: grid;
            gap: 14px;
            background: var(--card);
            border-radius: 14px;
            padding: 28px;
            box-shadow: 0 12px 40px rgba(0, 0, 0, 0.25);
            border: 1px solid rgba(255, 255, 255, 0.06);
        }

        label {
            font-size: 14px;
            color: var(--muted);
            margin-bottom: 4px;
        }

        input {
            padding: 10px 14px;
            border-radius: 8px;
            border: 1px solid rgba(255,255,255,0.08);
            background: rgba(255,255,255,0.05);
            color: var(--text);
            font-size: 14px;
        }

        input:focus {
            outline: none;
            border-color: var(--accent);
            background: rgba(255,255,255,0.08);
        }

        .btn {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            justify-content: center;
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

        .back-btn {
            display: inline-block;
            margin-top: 20px;
            text-align: center;
            color: var(--text);
            text-decoration: none;
            font-size: 14px;
        }

        .back-btn:hover {
            color: var(--accent);
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
    <h2>Add a New Customer</h2>

    <form action="add-customer" method="POST">
        <div>
            <label for="customerId">Customer ID</label>
            <input type="text" id="customerId" name="customerId" required />
        </div>

        <div>
            <label for="customerName">Customer Name</label>
            <input type="text" id="customerName" name="customerName" required />
        </div>

        <div>
            <label for="contactNumber">Contact Number</label>
            <input type="tel" id="contactNumber" name="contactNumber" required />
        </div>

        <div>
            <label for="address">Address</label>
            <input type="text" id="address" name="address" required />
        </div>

        <div>
            <label for="emailId">Email ID</label>
            <input type="email" id="emailId" name="emailId" required />
        </div>

        <div>
            <label for="Customerpassword">Password</label>
            <input type="password" id="Customerpassword" name="Customerpassword" required />
        </div>

        <button class="btn btn-primary" type="submit">Add Customer ➕</button>
    </form>

    <a href="/" class="back-btn">⬅ Back to Home</a>
</main>

<footer>
    © <script>document.write(new Date().getFullYear())</script> SwiftFood • Built with Spring Boot + JSP
</footer>

</body>
</html>
