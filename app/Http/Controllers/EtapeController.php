<?php

namespace App\Http\Controllers;

use App\Models\Etape;
use App\Models\Capture;
use Illuminate\Http\Request;

class EtapeController extends Controller
{
    public function index()
    {
        $etapes = Etape::orderBy('ordre')->get();
        return view('etapes.index', compact('etapes'));
    }

    public function create()
    {
        return view('etapes.create');
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'titre' => 'required|string|max:255',
            'description' => 'required|string',
            'ordre' => 'required|integer|unique:etapes,ordre',
            'captures.*' => 'nullable|image|mimes:jpeg,png,jpg,gif',
            'captures_desc.*' => 'nullable|string',
        ]);

        $etape = Etape::create([
            'titre' => $validated['titre'],
            'description' => $validated['description'],
            'ordre' => $validated['ordre'],
        ]);

        if ($request->has('captures')) {
            foreach ($request->file('captures') as $key => $file) {
                $path = $file->store('captures', 'public');
                Capture::create([
                    'etape_id' => $etape->id,
                    'path' => $path,
                    'description' => $request->captures_desc[$key] ?? '',
                ]);
            }
        }

        return redirect()->route('etapes.index')->with('success', 'Étape ajoutée avec succès.');
    }

    public function show($id)
    {
        $etape = Etape::findOrFail($id);
        $captures = $etape->captures;
        $etapeSuivante = Etape::where('id', '>', $etape->id)->orderBy('id')->first();
        $allEtapes = Etape::orderBy('id')->get(); // Toutes les étapes pour la sidebar

        return view('etapes.show', compact('etape', 'captures', 'etapeSuivante', 'allEtapes'));
    }

}
