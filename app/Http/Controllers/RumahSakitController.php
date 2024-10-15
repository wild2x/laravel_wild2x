<?php

namespace App\Http\Controllers;
use App\Models\RumahSakitModel;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\View\View;
class RumahSakitController extends Controller
{
    public function index()
    {
 
        $rumah_sakit = RumahSakitModel::latest()->paginate(10);
        return view('rumah_sakit.index', compact('rumah_sakit'));
         	
     
    }

    public function create()
    {
        return view('rumah_sakit.create');
    }

    public function store(Request $request)
    {
        RumahSakitModel::create($request->all());
        return redirect()->route('rumah_sakit.index')->with('success', 'Rumah Sakit berhasil ditambahkan');
    }

    public function show(string $id): View
    {
         
        $rumah_sakit = RumahSakitModel::findOrFail($id);
        return view('rumah_sakit.show', compact('rumah_sakit'));
    }

    public function edit(string $id): View
    {
        $rumah_sakit = RumahSakitModel::findOrFail($id);
        return view('rumah_sakit.edit', compact('rumah_sakit'));
    }

    public function update(Request $request, $id): RedirectResponse
    {
        $rumah_sakit = RumahSakitModel::findOrFail($id);
        $rumah_sakit->update($request->all());
        return redirect()->route('rumah_sakit.index')->with('success', 'Rumah Sakit berhasil diperbarui');
    }

    public function destroy($id): RedirectResponse
    {
        $rumah_sakit = RumahSakitModel::findOrFail($id);    
        $rumah_sakit->delete();
        return redirect()->route('rumah_sakit.index')->with('success', 'Rumah Sakit berhasil dihapus');
    }
}
