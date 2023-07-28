<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Employee;
use GuzzleHttp\Client;

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

            return response()->json(['message' => 'Employee data stored successfully'], 201);
        }

        return response()->json(['message' => 'Failed to fetch JSON data from the URL or no data found'], 500);
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
            // Handle any errors that occur during the API request
        }

        return null;
    }
}