<#macro inputForm >

<div class="view-box">
    <div class="menu">

        <button type="button" class="btn btn-lg btn-success custombtn " data-toggle="modal"
                data-target="#myModal">
            Добавить
        </button>
    </div>


    <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <h4 class="modal-title text-center" id="myModalLabel">Добавление</h4>
                </div>
                <div class="modal-body">
                    <form role="form" class="form-horizontal" method="post" action="/add" >

                        <div class="form-group has-feedback">
                            <label for="name" class="control-label col-xs-3">login:</label>
                            <div class="col-xs-6">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input type="text" class="form-control" name="login" required/>
                                </div>

                            </div>
                        </div>

                        <div class="form-group has-feedback">
                            <label for="name" class="control-label col-xs-3">password:</label>
                            <div class="col-xs-6">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input type="text" class="form-control" name="password" required/>
                                </div>

                            </div>
                        </div>

                        <div class="form-group has-feedback">
                            <label for="name" class="control-label col-xs-3">birthdate:</label>
                            <div class="col-xs-6">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input type="date" class="form-control" name="birthdate" required/>
                                </div>

                            </div>
                        </div>


                        <div class="modal-footer">
                            <input type="submit" class="btn btn-primary" value="Выполнить">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Завершить</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>


</#macro>

<#assign mail = "user@example.com">
