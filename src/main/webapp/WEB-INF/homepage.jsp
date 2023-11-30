<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <title>Homepage</title>
</head>
<body>
  <div class="container-fluid">
    <div class="row mt-5"></div>
    <div class="row justify-content-center">
      <div class="col-auto">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="height: 64em; width: 32em;">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="https://via.placeholder.com/800x800" class="d-block w-100" alt="First slide">
              <div class="carousel-caption d-none d-md-block">
                <h3>First slide label</h3>
                <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
              </div>
            </div>
            <div class="carousel-item">
              <img src="https://via.placeholder.com/800x800" class="d-block w-100" alt="Second slide">
              <div class="carousel-caption d-none d-md-block">
                <h3>Second slide label</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
              </div>
            </div>
            <div class="carousel-item">
              <img src="https://via.placeholder.com/800x800" class="d-block w-100" alt="Third slide">
              <div class="carousel-caption d-none d-md-block">
                <h3>Third slide label</h3>
                <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col-auto">
        <div class="row">
          <a href="#" class="btn btn-primary p-5 rounded rounded-0" style="height: 15.5em; width: 15em;">
            <div class="row justify-content-center">
              <i class="bx bxs-contact" style="font-size: 8em; color: #ffffff;"></i>
            </div> 
            <div class="mt-1"> 
              <h4 class="text-white text-center">Profile</h4>
            </div> 
          </a>
        </div>
        <div class="row mt-3">
        </div>
        <div class="row">
          <a href="#" class="btn btn-primary p-5 rounded rounded-0" style="height: 15.5em; width: 15em;">
            <div class="row justify-content-center">
              <i class="bx bxs-book-open" style="font-size: 8em; color: #ffffff;"></i>
            </div> 
            <div class="mt-1"> 
              <h4 class="text-white text-center">Recipe</h4>
            </div> 
          </a>
        </div>
      </div>
    </div>
  </div>

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>