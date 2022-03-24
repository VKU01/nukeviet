<!-- BEGIN: main -->
<form id="votingcontent" method="post" action="">
    <div class="row">
        <div class="col-sm-24 col-md-18">
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover">
                    <tbody>
                        <tr>
                            <td>Input<sup class="required">(*)</sup></td>
                            <td>
                                <select name="inputId" class="form-control">
                                    <!-- BEGIN: langLoop -->
                                    <option value="{INPUT_RESULT.id}">{INPUT_RESULT.content}</option>
                                    <!-- END: langLoop -->
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Dich <sup class="required">(*)</sup></td>
                            <td>
                                <select name="translatedId" class="form-control">
                                    <!-- BEGIN: keyLoop -->
                                    <option value="{KEY_RESULT.id}">{KEY_RESULT.content}</option>
                                    <!-- END: keyLoop -->
                                </select>

                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="row text-center">
                    <input type="submit" name="submit" value="{LANG.voting_confirm}" class="btn btn-primary" />
                </div>
</form>
<!-- END: main -->