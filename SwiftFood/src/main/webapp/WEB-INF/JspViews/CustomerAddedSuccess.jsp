<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>SwiftFood — Customer Added</title>
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
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .card {
        background: var(--card);
        border-radius: 16px;
        padding: 40px 50px;
        box-shadow: 0 15px 50px rgba(0, 0, 0, 0.3);
        text-align: center;
        max-width: 420px;
        width: 90%;
        border: 1px solid rgba(255, 255, 255, 0.06);
        animation: fadeIn 0.8s ease;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    h2 {
        font-size: 24px;
        margin-bottom: 10px;
        background: linear-gradient(135deg, var(--accent), #a3e635);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
    }

    hr {
        border: 0;
        height: 1px;
        background: rgba(255,255,255,0.08);
        margin: 20px 0;
    }

    .customer-info {
        font-size: 16px;
        color: var(--muted);
        margin-bottom: 24px;
        line-height: 1.5;
    }

    .btn {
        display: inline-block;
        padding: 10px 16px;
        border-radius: 8px;
        border: none;
        font-weight: 600;
        text-decoration: none;
        cursor: pointer;
        transition: all 0.2s ease;
    }

    .btn-primary {
        color: var(--btn-text);
        background: linear-gradient(135deg, #22c55e, #a3e635);
        box-shadow: 0 10px 24px rgba(34, 197, 94, 0.35);
    }

    .btn-primary:hover {
        transform: translateY(-2px);
    }

    .btn-ghost {
        display: inline-block;
        margin-top: 12px;
        color: var(--text);
        background: transparent;
        border: 1px solid rgba(255,255,255,0.08);
        text-decoration: none;
        font-size: 14px;
        padding: 8px 12px;
        border-radius: 8px;
        transition: all 0.2s ease;
    }

    .btn-ghost:hover {
        background: rgba(255,255,255,0.05);
    }
</style>
</head>
<body>

<div class="card">
    <h2>🎉 Successfully Added Customer! 🎉</h2>
    <hr>
    <div class="customer-info">
        <b>${customer}</b>
    </div>
   <!-- <a href="add-customer.jsp" class="btn btn-primary">➕ Add Another</a>
    <a href="view-customers" class="btn-ghost">👥 View All Customers</a> -->
</div>

</body>
</html>
