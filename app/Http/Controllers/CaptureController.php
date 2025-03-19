<?php

namespace App\Http\Controllers;

use App\Models\Capture;
use Illuminate\Http\Request;

class CaptureController extends Controller
{
    public function destroy($id)
    {
        $capture = Capture::findOrFail($id);
        $capture->delete();

        return back()->with('success', 'Capture supprimée avec succès.');
    }
}
