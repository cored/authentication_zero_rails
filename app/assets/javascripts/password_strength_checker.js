document.addEventListener("DOMContentLoaded", function() {
	var passwordInput = document.getElementById("user_password");
	var strengthText = document.getElementById("password-strength");

	if (passwordInput) {
		passwordInput.addEventListener("input", function() {
			var strength = checkPasswordStrength(passwordInput.value);
			strengthText.innerHTML = "Password Strength: " + strength;
		});
	}

	function checkPasswordStrength(password) {
		// Your password strength logic here
		// Example: Simple rules for demonstration purposes
		if (password.length < 8) {
			return "Weak";
		} else if (password.length < 12) {
			return "Medium";
		} else {
			return "Strong";
		}
	}
});
