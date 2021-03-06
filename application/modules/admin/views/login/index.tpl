<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>ANY Admin</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    {block name="block_css"}
    <!-- iCheck -->
      <link rel="stylesheet" href="{base_url('public/static/backend/')}css/bootstrap.min.css" />
      <link rel="stylesheet" href="{base_url('public/static/backend/')}css/bootstrap-responsive.min.css" />
      <link rel="stylesheet" href="{base_url('public/static/backend/')}css/matrix-login.css" />
      <link href="{base_url('public/static/backend/')}font-awesome/css/font-awesome.css" rel="stylesheet" />
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
    {/block}
  </head>
<body>
  <video class="bg_video" preload="auto" autoplay="" loop="">
    <source src="{$link_backend}video/main-video.webm" type="video/webm">
    <source src="{$link_backend}video/main-video.mp4" type="video/mp4">
  </video>

  <div id="loginbox">            
    {form_open('admin/authenticate/login')}
      <div class="control-group normal_text">
        <h3>
          <img src="{$link_backend}img/logo.png" alt="Logo" />
        </h3>
      </div>
      <div class="control-group">
        <div class="controls">
          <div class="main_input_box">
            <span class="add-on bg_lg"><i class="icon-user"> </i></span>
            <input type="text" name="username" placeholder="Username" />
          </div>
        </div>
      </div>
      <div class="control-group">
        <div class="controls">
          <div class="main_input_box">
            <span class="add-on bg_ly"><i class="icon-lock"></i></span>
            <input name="password" type="password" placeholder="Password" />
          </div>
        </div>
      </div>
      <div class="form-actions">
        <span class="pull-left"><a href="#" class="flip-link btn btn-info" id="to-recover">Lost password?</a></span>
        <span class="pull-right"><input type="submit" name="submit" class="btn btn-success" value="Login" /></span>
      </div>
    </form>
    <form id="recoverform" action="#" class="form-vertical">
      <p class="normal_text">Enter your e-mail address below and we will send you instructions how to recover a password.</p>
      <div class="controls">
        <div class="main_input_box">
          <span class="add-on bg_lo"><i class="icon-envelope"></i></span><input type="text" placeholder="E-mail address" />
        </div>
      </div>
      <div class="form-actions">
        <span class="pull-left"><a href="#" class="flip-link btn btn-success" id="to-login">&laquo; Back to login</a></span>
        <span class="pull-right"><a class="btn btn-info"/>Reecover</a></span>
      </div>
    {form_close()}
  </div>

{block name="block_script"}
  <script src="{base_url('public/static/backend/')}js/jquery.min.js"></script>  
  <script src="{base_url('public/static/backend/')}js/matrix.login.js"></script> 
{/block}
</body>