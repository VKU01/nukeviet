<!-- BEGIN: main -->
<form id="votingcontent" method="post" action="">
  <div class="row">
    <div class="col-sm-24 col-md-18">
      <div class="table-responsive">
        <table class="table table-striped table-bordered table-hover">
          <tbody>
            <tr>
              <td>Key<sup class="required">(*)</sup></td>
              <td>
                <input class="form-control" type="text" name="name" size="60" value="{DATA.name}" class="txt"
                  required />
              </td>
            </tr>
            <tr>
              <td>Ngon ngu<sup class="required">(*)</sup></td>
              <td>
                <select name="langId" class="form-control">
                  <!-- BEGIN: langLoop -->
                  <option value="{LANG_RESULT.id}">{LANG_RESULT.name}</option>
                  <!-- END: langLoop -->
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