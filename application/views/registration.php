<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Registration</title>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<link href="<?= base_url(); ?>assets/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="<?= base_url(); ?>assets/css/login.css">

</head>

<body>
	<section id="intro">
		<div class="intro-container wow fadeIn">
			<div class="col-md-5">
				<form action="<?= base_url('login/registration'); ?>" class="login-form" method="POST" style="height:570px;">
					<h3 class="btn btn-info btn-md">REGISTRATION</h3>

					<div class="txtb">
						<input name="nama" type="text" required>
						<span data-placeholder="Nama"></span>
					</div>
					<div class="txtb">
						<input name="email" type="email" required>
						<span data-placeholder="Email"></span>
					</div>
					<div class="txtb">
						<input name="telepon" type="number" min="0" required>
						<span data-placeholder="Telepon"></span>
					</div>
					<div class="txtb">
						<input name="tgl_lahir" type="date" required>
						
					</div>

					<div class="txtb">
						<input name="password" type="password" required>
						<span data-placeholder="Password"></span>
					</div>

					<button type="submit" class="logbtn">SUBMIT</button>

					<div class="bottom-text">
						Have an account? <a href="<?= base_url('login'); ?>">Sign In</a>
					</div>
				</form>


			</div>
		</div>
	</section>
	<script src="<?= base_url(); ?>assets/js/login.js"></script>


</body>

</html>
