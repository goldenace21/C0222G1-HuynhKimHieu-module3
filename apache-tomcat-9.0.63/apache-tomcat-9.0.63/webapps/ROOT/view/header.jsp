<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/view/stylesheet.css">
</head>
<body>
    <div class="container-fluid px-0" >
        <div style="height: 2.5em; background: rgba(246,246,246,0.93); border-bottom: 2px solid #eeee;" class="w-100">

        </div>
        <div style="height: 8em; display: flex; align-items: center;" class="container">
            <div class="col-lg-3 ">
                <a href="/index.jsp">
                    <img style="height: 90%" src="https://furamavietnam.com/wp-content/uploads/2018/08/logo@2x.png">
                </a>
            </div>
            <div style="height: 90%" class="col-lg-3 ">
                <img style="height: 90%" src="https://logos-world.net/wp-content/uploads/2020/11/Tripadvisor-Logo.png">
            </div>
            <div style="height: 90%;font-size: .8em; font-weight: 600;" class="col-lg-3 ">
                <p>103 – 105 Đường Võ Nguyên Giáp, Phường Khuê Mỹ, Quận Ngũ hành Sơn, Tp. Đà Nẵng, Việt Nam</p>
                <p>7.0 km từ Sân bay Quốc tế Đà Nẵng</p>
            </div>
            <div style="height: 90%;font-size: .8em; font-weight: 600;" class="col-lg-3 ">
                <p>84-236-3847 333/888</p>
                <p>reservation@furamavietnam.com</p>
            </div>
        </div>
    </div>
    <header class="container-fluid">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light bg-green">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active mx-3">
                            <a class="nav-link text-white" href="/index.jsp">Furama <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item mx-3">
                            <a class="nav-link text-white" href="#">Service</a>
                        </li>
                        <li class="nav-item mx-3">
                            <a class="nav-link text-white" href="/customer">Customer</a>
                        </li>
                        <li class="nav-item mx-3">
                            <a class="nav-link text-white" href="employee/employee.jsp">Employee</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </header>
</body>
</html>
