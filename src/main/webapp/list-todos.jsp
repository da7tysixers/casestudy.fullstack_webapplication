<%@ include file="head_common.jsp"%>
<%@ include file="head_files.jsp"%>
<%@ include file="navigation.jsp"%>

    <title>My Account</title>

<div class="container">
    <div>
        <a type="button" class="btn btn-primary btn-md" href="/add-todo">Add Todo</a>
    </div>
    <br>
    <div class="panel panel-primary">
        <div class="panel-heading">
        <h3>Lists of Todo</h3>
    </div>
    <div class="panel-body">
    <table class="table table-striped">
    <thead>
        <tr>
           <th width="40%">Description</th>
           <th width="40%">Target Date</th>
           <th width="20%"></th>
        </tr>
    </thead>
    <tbody>
    <c:forEach items="${todos}" var="todo">
    <tr>
      <td>${todo.description}</td>
      <td><fmt:formatDate value="${todo.targetDate}"
        pattern="dd/MM/yyyy" /></td>
      <td><a type="button" class="btn btn-success"
      href="/update-todo?id=${todo.id}">Update</a>
      <a type="button" class="btn btn-warning"
      href="/delete-todo?id=${todo.id}">Delete</a></td>
    </tr>
    </c:forEach>
    </tbody>

    </table>
    </div>
  </div>

</div>


<!-- Footer -->
<footer class="page-footer font-small blue pt-4">

  <!-- Footer Links -->
  <div class="container-fluid text-center text-md-left container shadow navbar-light bg-light">

    <!-- Grid row -->
    <div class="row">

      <!-- Grid column -->
      <div class="col-md-6 mt-md-0 mt-3">

        <!-- Content -->
                <h6 class="text-uppercase font-weight-bold">Todowey List Management</h6>
                <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                <p>Todowey is a checklist management web application founded application July 11th 2020 by
                 Emmanuel Orubele. It is a free checklist application for making a checklist, manage your checklist, and much more.</p>

      </div>
      <!-- Grid column -->

      <hr class="clearfix w-100 d-md-none pb-3">

      <!-- Grid column -->
      <div class="col-md-3 mb-md-0 mb-3">

        <!-- Links -->
        <h6 class="text-uppercase font-weight-bold">Resource</h6>
        <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
        <p>
          <a class="dark-grey-text" href="/welcome">Your Account</a>
        </p>
        <p>
          <a class="dark-grey-text" href="/list-todos">Your List</a>
        </p>
        <p>
          <a class="dark-grey-text" href="#!">Premuim Rates</a>
        </p>
        <p>
          <a class="dark-grey-text" href="#!">Career</a>
        </p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-3 mb-md-0 mb-3">

       <!-- Links -->
               <h6 class="text-uppercase font-weight-bold">Contact</h6>
               <hr class="teal accent-3 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
               <p>
                 <i class="fas fa-home mr-3"></i> Charlotte, NC 28214, US</p>
               <p>
                 <i class="fas fa-envelope mr-3"></i>emmanuel.orubele@gmail.com</p>
               <p>
                 <i class="fas fa-phone mr-3"></i> +1(405)886-3312/p>
               <p>
                 <i class="fas fa-print mr-3"></i> </p>
      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Links -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2020 Copyright:
    <p> Emmanuel Orubele | Thanks to MDBootstrap</p>
  </div>
  <!-- Copyright -->

</footer>
