<?php
namespace App\Http\Controllers;
use App\Models\RumahSakitModel;
use App\Models\PasienModel;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\View\View;
use Illuminate\Database\Eloquent\Collection;
class PasienController extends Controller
{
    public function index()
    {   
        $rumah_sakit = RumahSakitModel::orderBy('nama')->get();
        $pasien = PasienModel::with('rumahSakit')->get();
       // $pasien = PasienModel::latest()->paginate(10);
         return view('pasien.index', compact('pasien','rumah_sakit'));
    }

    public function create()
    {
        $listrs = RumahSakitModel::latest()->paginate(10);
        return view('pasien.create', compact('listrs'));
    }

    public function store(Request $request)
    {
        PasienModel::create($request->all());
        return redirect()->route('pasien.index')->with('success', 'Pasien berhasil ditambahkan');
    }

    public function showedit(string $id): View
    {
        return view('pasien.show', compact('pasien'));
    }

    public function edit(string $id): View
    {
        $rumah_sakit = RumahSakitModel::all();
        $pasien = PasienModel::findOrFail($id);
        return view('pasien.edit', compact('pasien','rumah_sakit'));
    }

    public function update(Request $request, Pasien $pasien)
    {
        $pasien = PasienModel::findOrFail($id);
        $pasien->update($request->all());
        return redirect()->route('pasien.index')->with('success', 'Pasien berhasil diperbarui');
    }

    public function destroy($id): RedirectResponse
    {
        $pasien = PasienModel::findOrFail($id); 
        $pasien->delete();
        return redirect()->route('pasien.index')->with('success', 'Pasien berhasil dihapus');
    }

    public function getpasienrs($id_rs)
    {
       
       $pasien = PasienModel::where('id_rs', $id_rs)->get();
      // $pasien = PasienModel::findOrFail($id_rs);
        return response()->json($pasien);
    }
}
