<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Employee;
use GuzzleHttp\Client;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\URL;

class EmployeeController extends Controller
{
    public function storeByUrl(Request $request)
    {
        $request->validate([
            'url' => 'required|url',
        ]);

        $url = $request->input('url');
        $jsonData = $this->fetchJsonResponse($url);

        if (!empty($jsonData)) {

            foreach ($jsonData as $employeeData) {
                $employee = new Employee([
                    'nama' => $employeeData['nama'],
                    'jabatan' => $employeeData['jabatan'],
                    'jenis_kelamin' => $employeeData['jenis_kelamin'],
                    'alamat' => $employeeData['alamat'],
                ]);
                $employee->save();
            }
            Cache::flush();
            return response()->json(['message' => 'Employee data stored successfully'], 201);
        }

        return response()->json(['message' => 'Failed to fetch JSON data from the URL or no data found'], 500);
    }



    public function getData(Request $request)
    {

        $cacheKey = 'employees_' . md5(URL::full() . json_encode($request->all()));
        $cachedData = Cache::get($cacheKey);

        if ($cachedData !== null) {
            return response()->json($cachedData);
        }

        $query = Employee::query();

        if ($request->filled('nama')) {
            $query->where('nama', 'like', '%' . $request->input('nama') . '%');
        }

        if ($request->filled('jabatan')) {
            $query->where('jabatan', $request->input('jabatan'));
        }

        if ($request->filled('jenis_kelamin')) {
            $query->where('jenis_kelamin', $request->input('jenis_kelamin'));
        }

        if ($request->filled('alamat')) {
            $query->where('alamat', 'like', '%' . $request->input('alamat') . '%');
        }

        $employees = $query->get();
        Cache::put($cacheKey, $employees, now()->addMinutes(1));


        return response()->json($employees);
    }

    public function store(Request $request)
    {
        $rules = [
            'nama' => 'required',
            'jabatan' => 'required',
            'jenis_kelamin' => 'required',
            'alamat' => 'required',
        ];

        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            return $this->sendError(1, 'Params not complete', $validator->errors());
        }

        $employee = Employee::create($request->all());

        $cacheKey = 'employees_' . md5(URL::full() . json_encode($request->all()));
        Cache::flush();

        return $this->sendResponse(0, 'Employee created successfully', $employee);
    }

    public function update(Request $request, $id)
    {
        $rules = [
            'nama' => 'required',
            'jabatan' => 'required',
            'jenis_kelamin' => 'required',
            'alamat' => 'required',
        ];

        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            return $this->sendError(1, 'Params not complete', $validator->errors());
        }

        $employee = Employee::findOrFail($id);
        $employee->update($request->all());

        $cacheKey = 'employees_' . md5(URL::full() . json_encode($request->all()));
        Cache::flush();

        return $this->sendResponse(0, 'Employee updated successfully', $employee);
    }

    public function destroy($id)
    {
        $employee = Employee::findOrFail($id);
        $employee->delete();

        $cacheKey = 'employees_' . md5(URL::full() . json_encode($id));
        Cache::flush();

        return $this->sendResponse(0, 'Employee deleted successfully', []);
    }




    public function getAllAlamat()
    {
        $uniqueAlamat = Employee::pluck('alamat')->unique()->values()->all();
        return response()->json($uniqueAlamat);
    }

    public function getAllJabatan()
    {
        $uniqueJabatan = Employee::pluck('jabatan')->unique()->values()->all();
        return response()->json($uniqueJabatan);
    }


    private function fetchJsonResponse($url)
    {
        try {
            $client = new Client();
            $response = $client->get($url);

            if ($response->getStatusCode() === 200) {
                return json_decode($response->getBody(), true);
            }
        } catch (\Exception $e) {
        }

        return null;
    }

    private function sendResponse($code, $message, $data)
    {
        return response()->json([
            'code' => $code,
            'message' => $message,
            'data' => $data,
            'success' => true,
        ]);
    }

    private function sendError($code, $message, $data)
    {
        return response()->json([
            'code' => $code,
            'message' => $message,
            'data' => $data,
            'success' => false,
        ]);
    }

}