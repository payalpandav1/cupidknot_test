@extends('layouts.app')

@section('content')
    <div class="container">
        <h4>Filters</h4>
        <div class="row">
            <div class="col-sm-3 mb-3">
                <input type="date" name="dob" class="form-control" placeholder="Search by dob">
            </div>
            <div class="col-sm-3 mb-3">
                <select class="form-control" name="gender"
                        id="gender">
                    <option value="">-Search by gender-</option>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                </select>
            </div>
            <div class="col-sm-3 mb-3">
                <select class="form-control" name="family_type"
                        id="family_type">
                    <option value="">-Search by family type-</option>
                    <option value="1">Joint family</option>
                    <option value="2">Nuclear family</option>
                </select>
            </div>
            <div class="col-sm-3 mb-3">
                <select class="form-control" name="manglik" id="manglik">
                    <option value="">-Search by manglik-</option>
                    <option value="yes">Yes</option>
                    <option value="no">No</option>
                </select>

            </div>
            <div class="row col-12 mb-3">
                <label for="income" class="col-3 col-form-label text-md-end"> Search by Annual
                    Income</label>

                <div class="col-md-6">
                    <input type="text" id="amount" name="preferred_income" readonly
                           style="border:0; color:#f6931f; font-weight:bold;">

                    <div id="slider-range"></div>
                </div>
            </div>
        </div>

        <div class="table-responsive">
            <table class="table" id="users-table">
                <thead class="utm-thead">
                <tr>
                    <th>#ID</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>DOB</th>
                    <th>Income</th>
                    <th>Family Type</th>
                    <th>Manglik</th>
                </tr>
                </thead>
                <tbody>

                </tbody>
            </table>
        </div>

    </div>
@endsection

@section('scripts')
    <script>
        $(function () {
            var url = '{{asset('/admin/users')}}';
            var gender = '';
            var dob = '';
            var family_type = '';
            var manglik = '';
            var income_from = 0;
            var income_to = 0;
            var table = $('#users-table').DataTable({
                bProcessing: true,
                ordering: true,
                serverSide: true,
                paging: true,
                bRetrieve: true,
                autoWidth: false,
                ajax: {
                    url: url,
                    "type": "POST",
                    data: function (d) {
                        d.gender = gender;
                        d.dob = dob;
                        d.family_type = family_type;
                        d.manglik = manglik;
                        d.income_from = income_from;
                        d.income_to = income_to;
                    }
                },
                aaSorting: [[0, 'asc']],
                columns: [
                    {"visible": false, data: "id"},
                    {
                        "sortable": true,
                        "name": 'name',
                        data: 'name'
                    },
                    {
                        "sortable": true,
                        "name": 'gender',
                        data: 'gender'
                    },
                    {
                        "sortable": true,
                        "name": 'dob',
                        data: 'dob'
                    },
                    {
                        "sortable": true,
                        "name": 'income',
                        data: 'income'
                    },
                    {
                        "sortable": true,
                        "name": 'family_type',
                        "render": function (data, type, row) {
                            return row['family_type'] == 1 ? "Joint family" : "Nuclear family"
                        }
                    },
                    {
                        "sortable": true,
                        "name": 'manglik',
                        data: 'manglik'
                    },
                ],
                initComplete: function () {
                    $('#gender').change(function () {
                        gender = $(this).val();
                        $('#users-table').DataTable().ajax.reload();
                    });

                    $('input[type=date]').change(function () {
                        dob = $(this).val();
                        $('#users-table').DataTable().ajax.reload();
                    });

                    $('#family_type').change(function () {
                        family_type = $(this).val();
                        $('#users-table').DataTable().ajax.reload();
                    });
                    $('#manglik').change(function () {
                        manglik = $(this).val();
                        $('#users-table').DataTable().ajax.reload();
                    });

                    $("#slider-range").slider({
                        range: true,
                        min: 0,
                        max: 500,
                        values: [50, 100],
                        slide: function (event, ui) {
                            $("#amount").val(ui.values[0] + " - " + ui.values[1]);
                        },
                        stop: function (event, ui){
                            income_from = ui.values[0];
                            income_to = ui.values[1];
                            $('#users-table').DataTable().ajax.reload();
                        }
                    });
                }
            });
        });

        $("#slider-range").slider({
            range: true,
            min: 0,
            max: 500,
            values: [50, 100],
            slide: function (event, ui) {
                $("#amount").val(ui.values[0] + " - " + ui.values[1]);
            }
        });
        $("#amount").val($("#slider-range").slider("values", 0) +
            " - " + $("#slider-range").slider("values", 1));
    </script>
@endsection
