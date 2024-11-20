var container = document.getElementById('sign-up-form');

window.onclick = function(event) {
    if (event.target == modal) {
      container.style.display = "none";
    }
}

document.getElementById("sign-up-form").addEventListener("submit", function(event) {
  event.preventDefault(); // Ngăn việc gửi form ngay lập tức

  const email = document.getElementById("email");
  const password = document.getElementById("password").value;
  const confirmPassword = document.getElementById("confirm-password").value;
  const agreeTerms = document.getElementById("agreeTerms").checked;

  const emailError = document.getElementById("emailError");
  const passwordBlank = document.getElementById("passwordBlank");
  const passwordError = document.getElementById("passwordError");
  const termsError = document.getElementById("termsError");
  const successMessage = document.getElementById("successMessage");

  let isValid = true;

  // Kiểm tra định dạng email bằng regex
  const emailRegex = /^[^\s@]+@hcmut\.edu\.vn$/;

  if (!emailRegex.test(email.value)) {
      // Hiển thị thông báo lỗi
      emailError.style.display = "inline";
      email.classList.add("error");
      isValid = false;
  } else {
      // Ẩn thông báo lỗi nếu đúng
      emailError.style.display = "none";
      email.classList.remove("error");
  }

  if (password === "" || confirmPassword === "") {
      passwordBlank.style.display = "inline";
      passwordError.style.display = "inline";
      document.getElementById("password").classList.add("error");
      document.getElementById("confirm-password").classList.add("error");
      isValid = false;
  }
  else if (password.trim().length < 8) {
      passwordBlank.textContent = "Password must be at least 8 characters!";
      passwordBlank.style.display = "inline";
      document.getElementById("password").classList.add("error");
      isValid = false;
  }
  else if (password !== confirmPassword && password.trim().length >= 8) {
      // Hiển thị lỗi nếu mật khẩu không khớp
      passwordError.style.display = "inline";
      passwordBlank.style.display = "none";
      document.getElementById("confirm-password").classList.add("error");
      document.getElementById("password").classList.remove("error");
      isValid = false;
  } else {
      // Ẩn lỗi và tiếp tục xử lý
      passwordError.style.display = "none";
      passwordBlank.style.display = "none";
      document.getElementById("confirm-password").classList.remove("error");
      document.getElementById("password").classList.remove("error");
  }

  if (!agreeTerms) {
      alert("You must agree to the terms of service!");
      isValid = false;
  } else {
      termsError.style.display = "none";
  }

  if (!isValid) {
      successMessage.style.display = "none";
  }
  else {
      alert("Register successfully!");
      setTimeout(function() {
        window.location.href = "home.html"; // Thay "/user" bằng đường dẫn trang user của bạn
      }, 700);
  }
});