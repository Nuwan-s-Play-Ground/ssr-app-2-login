<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Registration System</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,500;0,700;1,300;1,400&family=Poppins:ital@1&family=Roboto:ital,wght@0,300;1,400&family=Ubuntu:ital,wght@0,400;1,300&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<header class="p-2 text-center border-bottom">
    <h1 class="mb-0">Student Registration System</h1>
</header>
<main class="container-fluid">
    <div class="row">
        <div class="col-xl-4">
            <h4 class="mt-2">New Student Details</h4>
            <form action="students" method="post" enctype="multipart/form-data">
                <div class="mb-3">
                    <label for="txt-name" class="form-label">Name</label>
                    <input required pattern="^[A-Za-z ]+$" name="name" type="text" class="form-control" id="txt-name"
                           placeholder="Eg.Kasun Sampth">
                </div>

                <div class="mb-3">
                    <label for="txt-name" class="form-label">Address</label>
                    <input required pattern="^[A-Za-z ]+$" name="address" type="text" class="form-control" id="txt-address"
                           placeholder="Eg.No:123, Grace Road, Panadura">
                </div>

                <div class="mb-3">
                    <label for="txt-picture" class="form-label">Student Picture</label>
                    <input name="picture" accept="image/*" class="form-control" type="file" id="txt-picture">
                </div>

                <div class="mb-3">
                    <button class="btn btn-primary">SAVE</button>
                    <button type="reset" class="btn btn-warning">CLEAR</button>
                </div>
            </form>
        </div>

        <div class="col-xl-8">
            <table class="mt-2 table table-bordered table-hover">
                <thead>
                <tr>
                    <th class="text-center">PICTURE</th>
                    <th class="text-center">ID</th>
                    <th>NAME</th>
                    <th>ADDRESS</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="student" items="${studentList}">
                    <tr>
                        <td class="text-center">
                            <img class="profile-picture"
                                 src="${empty student.pictureUrl ? 'img/avatar.png': student.pictureUrl}">
                        </td>
                        <td class="text-center">${student.id}</td>
                        <td>${student.name}</td>
                        <td>${student.address}</td>
                    </tr>
                </c:forEach>
                </tbody>
                <c:if test="${empty studentList}">
                    <tfoot>
                    <tr>
                        <td colspan="4" class="text-center">
                            There are no student records to display
                        </td>
                    </tr>
                    </tfoot>
                </c:if>
            </table>
        </div>
    </div>
    </div>
</main>
</body>
</html>