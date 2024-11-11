<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="content">
    <div class="row">
        <div class="col-md-4">
            <div class="card card-user">
                <div class="image">

                </div>
                <div class="card-body">
                    <div class="author">
                        <a href="#">
                            <img class="avatar border-gray" src="/static/upload/team_05.jpg" alt="...">
                            <h5 class="title">${user.username}</h5>
                        </a>
                        <p class="description">

                        </p>
                    </div>
                    <p class="description text-center">
                        "I like the way you work it <br>
                        No diggity <br>
                        I wanna bag it up"
                    </p>
                </div>
                <div class="card-footer">
                    <hr>
                    <div class="button-container">
                        <div class="row">
                            <div class="col-lg-3 col-md-6 col-6 ml-auto">
                                <h5>12<br><small>Files</small></h5>
                            </div>
                            <div class="col-lg-4 col-md-6 col-6 ml-auto mr-auto">
                                <h5>2GB<br><small>Used</small></h5>
                            </div>
                            <div class="col-lg-3 mr-auto">
                                <h5>24,6$<br><small>Spent</small></h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Team Members</h4>
                </div>
                <div class="card-body">
                    <ul class="list-unstyled team-members">
                        <li>
                            <div class="row">
                                <div class="col-md-2 col-2">
                                    <div class="avatar">
                                        <img src="../assets/img/faces/ayo-ogunseinde-2.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                    </div>
                                </div>
                                <div class="col-md-7 col-7">
                                    DJ Khaled
                                    <br />
                                    <span class="text-muted"><small>Offline</small></span>
                                </div>
                                <div class="col-md-3 col-3 text-right">
                                    <btn class="btn btn-sm btn-outline-success btn-round btn-icon"><i class="fa fa-envelope"></i></btn>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row">
                                <div class="col-md-2 col-2">
                                    <div class="avatar">
                                        <img src="../assets/img/faces/joe-gardner-2.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                    </div>
                                </div>
                                <div class="col-md-7 col-7">
                                    Creative Tim
                                    <br />
                                    <span class="text-success"><small>Available</small></span>
                                </div>
                                <div class="col-md-3 col-3 text-right">
                                    <btn class="btn btn-sm btn-outline-success btn-round btn-icon"><i class="fa fa-envelope"></i></btn>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="row">
                                <div class="col-md-2 col-2">
                                    <div class="avatar">
                                        <img src="../assets/img/faces/clem-onojeghuo-2.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                    </div>
                                </div>
                                <div class="col-ms-7 col-7">
                                    Flume
                                    <br />
                                    <span class="text-danger"><small>Busy</small></span>
                                </div>
                                <div class="col-md-3 col-3 text-right">
                                    <btn class="btn btn-sm btn-outline-success btn-round btn-icon"><i class="fa fa-envelope"></i></btn>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="card card-user">
                <div class="card-header">
                    <h5 class="card-title">Edit Profile</h5>
                </div>
                <div class="card-body">
                    <form:form action="/account/about/save" modelAttribute="item" method="post">
                        <div class="row">
                            <div class="col-md-5 pr-1">
                                <div class="form-group">
                                    <label>Username</label>
                                    <form:input type="text" class="form-control" disabled=""  placeholder="Username"  path="id"/>
                                    <form:errors path="id" />
                                </div>
                            </div>
                            <div class="col-md-5 pr-1">
                                <div class="form-group">
                                    <label>Username</label>
                                    <form:input type="text" class="form-control"  placeholder="Username"  path="username"/>
                                    <form:errors path="username" />
                                </div>
                            </div>
                            <div class="col-md-5 pr-1">
                                <div class="form-group">
                                    <label>Email</label>
                                    <form:input type="text" class="form-control"  placeholder="Username"  path="email"/>
                                    <form:errors path="email" />
                                </div>
                            </div>
                            <div class="col-md-3 px-1">
                                <div class="form-group">
                                    <label>Password</label>
                                    <form:input  type="password" class="form-control" name="Password" placeholder="Password"  path="password"/>
                                    <form:errors path="password" />
                                </div>
                            </div>
                            <div class="col-md-4 pl-1">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Admin</label>
                                    <form:input  type="text" disabled="" class="form-control" value="true"  path="admin" />
                                    <form:input  type="text" disabled="" class="form-control" value="true"  path="activated" />
                                </div>
                            </div>
                        </div>
<%--                        <div class="row">--%>
<%--                            <div class="col-md-6 pr-1">--%>
<%--                                <div class="form-group">--%>
<%--                                    <label>Password</label>--%>
<%--                                    <form:input type="password" class="form-control" path="password" />--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-md-6 pl-1">--%>
<%--                                <div class="form-group">--%>
<%--                                    <label>FullName</label>--%>
<%--                                    <form:input type="text" class="form-control" path="Fullname" />--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="row">--%>
<%--                            <div class="col-md-12">--%>
<%--                                <div class="form-group">--%>
<%--                                    <label>Address</label>--%>
<%--                                    <form:input type="text" class="form-control" placeholder="Home Address" path="address"/>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="row">--%>
<%--                            <div class="col-md-4 pr-1">--%>
<%--                                <div class="form-group">--%>
<%--                                    <label>Photo</label>--%>
<%--                                    <form:input type="text" class="form-control" placeholder="City" path="photo" />--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-md-4 px-1">--%>
<%--                                <div class="form-group">--%>
<%--                                    <label>Country</label>--%>
<%--                                    <input type="text" class="form-control" placeholder="Country" value="Australia">--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-md-4 pl-1">--%>
<%--                                <div class="form-group">--%>
<%--                                    <label>Postal Code</label>--%>
<%--                                    <input type="number" class="form-control" placeholder="ZIP Code">--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="row">--%>
<%--                            <div class="col-md-12">--%>
<%--                                <div class="form-group">--%>
<%--                                    <label>About Me</label>--%>
<%--                                    <textarea class="form-control textarea">Oh so, your weak rhyme You doubt I'll bother, reading into it</textarea>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
                        <div class="row">
                            <div class="update ml-auto mr-auto">
                                <form:button type="submit" class="btn btn-primary btn-round">Update Profile</form:button>
                            </div>
                            <h6>${message}</h6>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>