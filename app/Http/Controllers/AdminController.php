<?php

namespace App\Http\Controllers;

use App\DataTables\UsersDataTable;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class AdminController extends Controller
{

    private $dataTable;


    /**
     * @param UsersDataTable $dataTable
     */
    public function __construct(UsersDataTable $dataTable)
    {
        $this->middleware('auth');
        $this->dataTable = $dataTable;
    }

    /**
     * @param Request $request
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\JsonResponse
     * @throws \Exception
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            return Datatables::of($this->dataTable->get($request))->make(true);
        }
        return view('admin.users');
    }

}
