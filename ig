<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Signup Form</title>
  <style>
    body {
      font-family: "Segoe UI", Arial, sans-serif;
      background: linear-gradient(135deg, #a8edea, #fed6e3);
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }
    .signup-box {
      background: #ffffff;
      padding: 40px;
      border-radius: 12px;
      box-shadow: 0 4px 20px rgba(0,0,0,0.1);
      width: 350px;
      animation: fadeIn 0.8s ease-in-out;
    }
    h2 { text-align: center; color: #5a4fcf; margin-bottom: 20px; font-weight: 600; }
    label { display: block; margin-bottom: 6px; font-size: 14px; color: #444; }
    input { width: 100%; padding: 10px; margin-bottom: 16px; border: 1px solid #ccc; border-radius: 6px; font-size: 14px; }
    input:focus { border-color: #5a4fcf; outline: none; }
    button { width: 100%; padding: 12px; background: #5a4fcf; color: #fff; border: none; border-radius: 6px; font-size: 16px; font-weight: 600; cursor: pointer; }
    button:hover { background: #4636b8; }
    @keyframes fadeIn { from {opacity:0;transform:translateY(15px);} to {opacity:1;transform:translateY(0);} }
  </style>
</head>
<body>

<div class="signup-box" id="form-container">
  <h2>Create Account</h2>
  <form id="signup-form">
    <label>Full Name</label>
    <input type="text" name="entry.1573966539" required>

    <label>Phone Number</label>
    <input type="text" name="entry.555635589" required>

    <label>Email</label>
    <input type="email" name="entry.591353669" required>

    <label>Address</label>
    <input type="text" name="entry.894076504" required>

    <label>Pincode</label>
    <input type="text" name="entry.183602187" required>

    <label>Password</label>
    <input type="password" name="entry.1252695323" required>

    <button type="submit">Sign Up</button>
  </form>
</div>

<script>
const form = document.getElementById('signup-form');
form.addEventListener('submit', function(e) {
  e.preventDefault(); // prevent page reload

  const formData = new FormData(form);
  const params = new URLSearchParams(formData);

  fetch('https://docs.google.com/forms/d/e/1FAIpQLSevg7YKmJAia5fmI4ED3vTkH6lAUvmPmxlNodoJs0gQK1smeQ/formResponse', {
    method: 'POST',
    body: params
  }).finally(() => {
    // Replace form with custom thank-you message
    document.getElementById('form-container').innerHTML = `
      <h2>🎉 Thank You!</h2>
      <p>Your account has been created successfully.</p>
    `;
  });
});
</script>

</body>
</html>
